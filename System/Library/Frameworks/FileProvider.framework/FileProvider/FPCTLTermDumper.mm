@interface FPCTLTermDumper
+ (void)execPagerOnFileFd:(int)fd;
+ (void)setupPagerForFd:(int)fd;
- (FPCTLTermDumper)initWithCoder:(id)coder;
- (FPCTLTermDumper)initWithFd:(int)fd forceColor:(BOOL)color;
- (id)annotateString:(id)string markedIdentifiers:(id)identifiers;
- (unint64_t)_startInCString:(char)string[256] fgColor:(int)color bgColor:(int)bgColor attr:(int)attr;
- (unint64_t)remainingSpace;
- (void)_putsAndCrop:(const char *)crop len:(unint64_t)len;
- (void)cursorDown:(unsigned int)down;
- (void)cursorGotoLineStart;
- (void)cursorLeft:(unsigned int)left;
- (void)cursorRestore;
- (void)cursorRight:(unsigned int)right;
- (void)cursorSave;
- (void)cursorUp:(unsigned int)up;
- (void)dumpImage:(id)image characterWidth:(unint64_t)width characterHeight:(unint64_t)height;
- (void)dumpImage:(id)image width:(unint64_t)width height:(unint64_t)height;
- (void)dumpProgress:(id)progress;
- (void)encodeWithCoder:(id)coder;
- (void)endLine;
- (void)eraseEndOfLine;
- (void)eraseLine;
- (void)eraseScreenDown;
- (void)eraseScreenUp;
- (void)eraseStartOfLine;
- (void)put:(id)put;
- (void)puts:(const char *)puts;
- (void)puts:(const char *)puts len:(unint64_t)len;
- (void)startNewLine;
- (void)startPager;
- (void)write:(id)write;
@end

@implementation FPCTLTermDumper

- (FPCTLTermDumper)initWithFd:(int)fd forceColor:(BOOL)color
{
  colorCopy = color;
  v14.receiver = self;
  v14.super_class = FPCTLTermDumper;
  v6 = [(FPCTLTermDumper *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_fd = fd;
    v8 = isatty(fd) != 0;
    v7->_isatty = v8;
    v9 = getenv("TERM");
    v10 = v9;
    if (v9)
    {
      v11 = v8;
    }

    else
    {
      v11 = 0;
    }

    v7->_supportsEscapeSequences = v11;
    if (!colorCopy && v11)
    {
      if (strcasestr(v9, "ansi"))
      {
        colorCopy = 1;
      }

      else
      {
        colorCopy = strstr(v10, "color") != 0;
      }
    }

    v12 = 0;
    v7->_useColor = colorCopy;
    if (v10 && colorCopy)
    {
      v12 = strstr(v10, "256color") != 0;
    }

    v7->_eightBitColor = v12;
    *&v7->_curFg = 0x900000009;
  }

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AC00];
  coderCopy = coder;
  v6 = [[v4 alloc] initWithFileDescriptor:self->_fd];
  [coderCopy encodeObject:v6 forKey:@"FileHandleKey"];
}

- (FPCTLTermDumper)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"FileHandleKey"];

  v6 = -[FPCTLTermDumper initWithFd:forceColor:](self, "initWithFd:forceColor:", [v5 fileDescriptor], 1);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_decodedFileHandle, v5);
  }

  return v7;
}

+ (void)setupPagerForFd:(int)fd
{
  v3 = 0;
  ioctl(fd, 0x40087468uLL, &v3);
  if (!getenv("LESS"))
  {
    putenv("LESS=FRSX");
  }

  if (!getenv("LESSCHARSET"))
  {
    putenv("LESSCHARSET=utf-8");
  }
}

+ (void)execPagerOnFileFd:(int)fd
{
  [self setupPagerForFd:?];
  dup2(fd, 0);
  lseek(fd, 0, 0);
  if (execlp("less", "less", "-", 0) < 0)
  {
    perror("execvp");
    exit(1);
  }

  __break(1u);
}

- (void)startPager
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_isatty)
  {
    [objc_opt_class() setupPagerForFd:self->_fd];
    *v7 = 0;
    if ((pipe(v7) & 0x80000000) == 0)
    {
      signal(13, 1);
      v2 = fork();
      if ((v2 & 0x80000000) == 0)
      {
        v3 = v2;
        if (v2)
        {
          dup2(v7[1], 1);
          close(v7[1]);
          close(v7[0]);
          v5[0] = MEMORY[0x1E69E9820];
          v5[1] = 3221225472;
          v5[2] = __29__FPCTLTermDumper_startPager__block_invoke;
          v5[3] = &__block_descriptor_36_e5_v8__0l;
          v6 = v3;
          atexit_b(v5);
        }

        else
        {
          dup2(v7[0], 0);
          close(v7[0]);
          close(v7[1]);
          if (execlp("less", "less", "-", 0) < 0)
          {
            [FPCTLTermDumper startPager];
          }
        }
      }
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __29__FPCTLTermDumper_startPager__block_invoke(uint64_t a1)
{
  v2 = 0;
  fflush(*MEMORY[0x1E69E9858]);
  fflush(*MEMORY[0x1E69E9848]);
  close(1);
  close(2);
  if (waitpid(*(a1 + 32), &v2, 0) < 0)
  {
    perror("waitpid");
  }
}

- (unint64_t)_startInCString:(char)string[256] fgColor:(int)color bgColor:(int)bgColor attr:(int)attr
{
  curAttrs = attr;
  curBg = bgColor;
  curFg = color;
  if (bgColor == -1)
  {
    curBg = self->_curBg;
  }

  if (color == -1)
  {
    curFg = self->_curFg;
  }

  if (attr == -1)
  {
    curAttrs = self->_curAttrs;
  }

  strcpy(string, "\x1B[");
  if (curAttrs == self->_curAttrs)
  {
    v11 = self->_curFg;
    v12 = 2;
  }

  else
  {
    strcpy(string + 2, "0;");
    v12 = 4;
    for (i = 1; i != 32; ++i)
    {
      if ((curAttrs >> i))
      {
        v12 += snprintf(&string[v12], 256 - v12, "%zd;", i);
      }
    }

    self->_curAttrs = curAttrs;
    *&self->_curFg = 0x900000009;
    v11 = 9;
  }

  if (curFg != v11)
  {
    v12 += snprintf(&string[v12], 256 - v12, "%d;", curFg + 30);
    self->_curFg = curFg;
  }

  if (curBg != self->_curBg)
  {
    v12 += snprintf(&string[v12], 256 - v12, "%d;", curBg + 40);
    self->_curBg = curBg;
  }

  if (v12 < 3)
  {
    return 0;
  }

  string[v12 - 1] = 109;
  return v12;
}

- (void)eraseEndOfLine
{
  if (self->_supportsEscapeSequences)
  {
    write(self->_fd, "\x1BK", 2uLL);
  }
}

- (void)eraseStartOfLine
{
  if (self->_supportsEscapeSequences)
  {
    write(self->_fd, "\x1B[1K", 4uLL);
  }
}

- (void)eraseLine
{
  if (self->_supportsEscapeSequences)
  {
    write(self->_fd, "\x1B[2K", 4uLL);
  }
}

- (void)eraseScreenDown
{
  if (self->_supportsEscapeSequences)
  {
    write(self->_fd, "\x1B[J", 3uLL);
  }
}

- (void)eraseScreenUp
{
  if (self->_supportsEscapeSequences)
  {
    write(self->_fd, "\x1B[1J", 4uLL);
  }
}

- (void)cursorSave
{
  if (self->_supportsEscapeSequences)
  {
    write(self->_fd, "\x1B[s", 3uLL);
  }
}

- (void)cursorRestore
{
  if (self->_supportsEscapeSequences)
  {
    write(self->_fd, "\x1B[u", 3uLL);
  }
}

- (void)cursorUp:(unsigned int)up
{
  if (self->_supportsEscapeSequences)
  {
    dprintf(self->_fd, "\x1B[%d%c", up, 65);
  }
}

- (void)cursorDown:(unsigned int)down
{
  if (self->_supportsEscapeSequences)
  {
    dprintf(self->_fd, "\x1B[%d%c", down, 66);
  }
}

- (void)cursorRight:(unsigned int)right
{
  if (self->_supportsEscapeSequences)
  {
    dprintf(self->_fd, "\x1B[%d%c", right, 67);
  }
}

- (void)cursorLeft:(unsigned int)left
{
  if (self->_supportsEscapeSequences)
  {
    dprintf(self->_fd, "\x1B[%d%c", left, 68);
  }
}

- (void)cursorGotoLineStart
{
  if (self->_supportsEscapeSequences)
  {
    write(self->_fd, "\r", 1uLL);
  }
}

- (void)startNewLine
{
  if (!self->_termWidth)
  {
    v3 = 0;
    ioctl(1, 0x40087468uLL, &v3);
    self->_termWidth = WORD1(v3);
  }

  [(FPCTLTermDumper *)self cursorGotoLineStart];
  self->_usedTermWidth = 0;
}

- (void)endLine
{
  self->_usedTermWidth = 0;
  [(FPCTLTermDumper *)self forgetRemainingSpace];

  [(FPCTLTermDumper *)self puts:"\n" len:1];
}

- (unint64_t)remainingSpace
{
  v5 = 0;
  ioctl(1, 0x40087468uLL, &v5);
  v3 = WORD1(v5);
  self->_termWidth = WORD1(v5);
  return v3 - self->_usedTermWidth;
}

- (void)dumpImage:(id)image width:(unint64_t)width height:(unint64_t)height
{
  v9 = [image base64EncodedStringWithOptions:0];
  v8 = v9;
  -[FPCTLTermDumper write:](self, "write:", @"\x1B]1337;File=inline=1;width=%lupx;height=%lupx:%s\a\n", width, height, [v9 UTF8String]);
}

- (void)dumpImage:(id)image characterWidth:(unint64_t)width characterHeight:(unint64_t)height
{
  v9 = [image base64EncodedStringWithOptions:0];
  v8 = v9;
  -[FPCTLTermDumper write:](self, "write:", @"\x1B]1337;File=inline=1;width=%lu;height=%lu:%s\a", width, height, [v9 UTF8String]);
}

- (void)dumpProgress:(id)progress
{
  progressCopy = progress;
  if ([(FPCTLTermDumper *)self supportsEscapeSequences])
  {
    [(FPCTLTermDumper *)self cursorGotoLineStart];
    v14 = 0;
    ioctl(1, 0x40087468uLL, &v14);
    v5 = WORD1(v14);
    self->_termWidth = WORD1(v14);
    self->_usedTermWidth = 0;
    v6 = v5 >> 1;
    if (v6 >= 0x1E)
    {
      v7 = 30;
    }

    else
    {
      v7 = v6;
    }

    [progressCopy fractionCompleted];
    v9 = (v8 * v7);
    string = [MEMORY[0x1E696AD60] string];
    if (v9)
    {
      v11 = v9;
      do
      {
        [string appendString:@"█"];
        --v11;
      }

      while (v11);
    }

    if (v7 != v9)
    {
      v12 = v7 - v9;
      do
      {
        [string appendString:@" "];
        --v12;
      }

      while (v12);
    }

    [progressCopy fractionCompleted];
    [string appendFormat:@"| %lu%%", (v13 * 100.0)];
    [(FPCTLTermDumper *)self write:@"%@", string];
  }
}

- (void)_putsAndCrop:(const char *)crop len:(unint64_t)len
{
  usedTermWidth = self->_usedTermWidth;
  if (self->_termWidth - usedTermWidth >= len)
  {
    lenCopy = len;
  }

  else
  {
    lenCopy = self->_termWidth - usedTermWidth;
  }

  self->_usedTermWidth = lenCopy + usedTermWidth;
  write(self->_fd, crop, lenCopy);
}

- (void)puts:(const char *)puts len:(unint64_t)len
{
  if (self->_termWidth)
  {
    [(FPCTLTermDumper *)self _putsAndCrop:puts len:len];
  }

  else
  {
    write(self->_fd, puts, len);
  }
}

- (void)puts:(const char *)puts
{
  v5 = strlen(puts);

  [(FPCTLTermDumper *)self puts:puts len:v5];
}

- (void)put:(id)put
{
  putCopy = put;
  uTF8String = [put UTF8String];

  [(FPCTLTermDumper *)self puts:uTF8String];
}

- (void)write:(id)write
{
  v4 = MEMORY[0x1E696AEC0];
  writeCopy = write;
  v6 = [[v4 alloc] initWithFormat:writeCopy arguments:&v7];

  if (self->_termWidth)
  {
    -[FPCTLTermDumper _putsAndCrop:len:](self, "_putsAndCrop:len:", [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4));
  }

  else
  {
    [(FPCTLTermDumper *)self put:v6];
  }
}

- (id)annotateString:(id)string markedIdentifiers:(id)identifiers
{
  stringCopy = string;
  v7 = stringCopy;
  if (self->_useColor)
  {
    identifiersCopy = identifiers;
    v9 = [v7 mutableCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__FPCTLTermDumper_annotateString_markedIdentifiers___block_invoke;
    v14[3] = &unk_1E793EE58;
    v14[4] = self;
    v10 = v9;
    v15 = v10;
    [identifiersCopy enumerateKeysAndObjectsUsingBlock:v14];

    v11 = v15;
    v12 = v10;
  }

  else
  {
    v12 = stringCopy;
  }

  return v12;
}

void __52__FPCTLTermDumper_annotateString_markedIdentifiers___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(*(a1 + 32) + 44);
  v6 = [a3 unsignedIntegerValue] % 7uLL;
  if (v5 == 1)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"\x1B[38:5:%dm%@\x1B[39m", dword_1AAC268DC[v6], v8];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"\x1B[%dm%@\x1B[39m", (dword_1AAC268F8[v6] + 30), v8];
  }
  v7 = ;
  [*(a1 + 40) replaceOccurrencesOfString:v8 withString:v7 options:2 range:{0, objc_msgSend(*(a1 + 40), "length")}];
}

@end