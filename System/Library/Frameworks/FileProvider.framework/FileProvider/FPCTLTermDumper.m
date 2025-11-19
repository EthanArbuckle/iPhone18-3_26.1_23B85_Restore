@interface FPCTLTermDumper
+ (void)execPagerOnFileFd:(int)a3;
+ (void)setupPagerForFd:(int)a3;
- (FPCTLTermDumper)initWithCoder:(id)a3;
- (FPCTLTermDumper)initWithFd:(int)a3 forceColor:(BOOL)a4;
- (id)annotateString:(id)a3 markedIdentifiers:(id)a4;
- (unint64_t)_startInCString:(char)a3[256] fgColor:(int)a4 bgColor:(int)a5 attr:(int)a6;
- (unint64_t)remainingSpace;
- (void)_putsAndCrop:(const char *)a3 len:(unint64_t)a4;
- (void)cursorDown:(unsigned int)a3;
- (void)cursorGotoLineStart;
- (void)cursorLeft:(unsigned int)a3;
- (void)cursorRestore;
- (void)cursorRight:(unsigned int)a3;
- (void)cursorSave;
- (void)cursorUp:(unsigned int)a3;
- (void)dumpImage:(id)a3 characterWidth:(unint64_t)a4 characterHeight:(unint64_t)a5;
- (void)dumpImage:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5;
- (void)dumpProgress:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)endLine;
- (void)eraseEndOfLine;
- (void)eraseLine;
- (void)eraseScreenDown;
- (void)eraseScreenUp;
- (void)eraseStartOfLine;
- (void)put:(id)a3;
- (void)puts:(const char *)a3;
- (void)puts:(const char *)a3 len:(unint64_t)a4;
- (void)startNewLine;
- (void)startPager;
- (void)write:(id)a3;
@end

@implementation FPCTLTermDumper

- (FPCTLTermDumper)initWithFd:(int)a3 forceColor:(BOOL)a4
{
  v4 = a4;
  v14.receiver = self;
  v14.super_class = FPCTLTermDumper;
  v6 = [(FPCTLTermDumper *)&v14 init];
  v7 = v6;
  if (v6)
  {
    v6->_fd = a3;
    v8 = isatty(a3) != 0;
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
    if (!v4 && v11)
    {
      if (strcasestr(v9, "ansi"))
      {
        v4 = 1;
      }

      else
      {
        v4 = strstr(v10, "color") != 0;
      }
    }

    v12 = 0;
    v7->_useColor = v4;
    if (v10 && v4)
    {
      v12 = strstr(v10, "256color") != 0;
    }

    v7->_eightBitColor = v12;
    *&v7->_curFg = 0x900000009;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AC00];
  v5 = a3;
  v6 = [[v4 alloc] initWithFileDescriptor:self->_fd];
  [v5 encodeObject:v6 forKey:@"FileHandleKey"];
}

- (FPCTLTermDumper)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"FileHandleKey"];

  v6 = -[FPCTLTermDumper initWithFd:forceColor:](self, "initWithFd:forceColor:", [v5 fileDescriptor], 1);
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_decodedFileHandle, v5);
  }

  return v7;
}

+ (void)setupPagerForFd:(int)a3
{
  v3 = 0;
  ioctl(a3, 0x40087468uLL, &v3);
  if (!getenv("LESS"))
  {
    putenv("LESS=FRSX");
  }

  if (!getenv("LESSCHARSET"))
  {
    putenv("LESSCHARSET=utf-8");
  }
}

+ (void)execPagerOnFileFd:(int)a3
{
  [a1 setupPagerForFd:?];
  dup2(a3, 0);
  lseek(a3, 0, 0);
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

- (unint64_t)_startInCString:(char)a3[256] fgColor:(int)a4 bgColor:(int)a5 attr:(int)a6
{
  curAttrs = a6;
  curBg = a5;
  curFg = a4;
  if (a5 == -1)
  {
    curBg = self->_curBg;
  }

  if (a4 == -1)
  {
    curFg = self->_curFg;
  }

  if (a6 == -1)
  {
    curAttrs = self->_curAttrs;
  }

  strcpy(a3, "\x1B[");
  if (curAttrs == self->_curAttrs)
  {
    v11 = self->_curFg;
    v12 = 2;
  }

  else
  {
    strcpy(a3 + 2, "0;");
    v12 = 4;
    for (i = 1; i != 32; ++i)
    {
      if ((curAttrs >> i))
      {
        v12 += snprintf(&a3[v12], 256 - v12, "%zd;", i);
      }
    }

    self->_curAttrs = curAttrs;
    *&self->_curFg = 0x900000009;
    v11 = 9;
  }

  if (curFg != v11)
  {
    v12 += snprintf(&a3[v12], 256 - v12, "%d;", curFg + 30);
    self->_curFg = curFg;
  }

  if (curBg != self->_curBg)
  {
    v12 += snprintf(&a3[v12], 256 - v12, "%d;", curBg + 40);
    self->_curBg = curBg;
  }

  if (v12 < 3)
  {
    return 0;
  }

  a3[v12 - 1] = 109;
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

- (void)cursorUp:(unsigned int)a3
{
  if (self->_supportsEscapeSequences)
  {
    dprintf(self->_fd, "\x1B[%d%c", a3, 65);
  }
}

- (void)cursorDown:(unsigned int)a3
{
  if (self->_supportsEscapeSequences)
  {
    dprintf(self->_fd, "\x1B[%d%c", a3, 66);
  }
}

- (void)cursorRight:(unsigned int)a3
{
  if (self->_supportsEscapeSequences)
  {
    dprintf(self->_fd, "\x1B[%d%c", a3, 67);
  }
}

- (void)cursorLeft:(unsigned int)a3
{
  if (self->_supportsEscapeSequences)
  {
    dprintf(self->_fd, "\x1B[%d%c", a3, 68);
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

- (void)dumpImage:(id)a3 width:(unint64_t)a4 height:(unint64_t)a5
{
  v9 = [a3 base64EncodedStringWithOptions:0];
  v8 = v9;
  -[FPCTLTermDumper write:](self, "write:", @"\x1B]1337;File=inline=1;width=%lupx;height=%lupx:%s\a\n", a4, a5, [v9 UTF8String]);
}

- (void)dumpImage:(id)a3 characterWidth:(unint64_t)a4 characterHeight:(unint64_t)a5
{
  v9 = [a3 base64EncodedStringWithOptions:0];
  v8 = v9;
  -[FPCTLTermDumper write:](self, "write:", @"\x1B]1337;File=inline=1;width=%lu;height=%lu:%s\a", a4, a5, [v9 UTF8String]);
}

- (void)dumpProgress:(id)a3
{
  v4 = a3;
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

    [v4 fractionCompleted];
    v9 = (v8 * v7);
    v10 = [MEMORY[0x1E696AD60] string];
    if (v9)
    {
      v11 = v9;
      do
      {
        [v10 appendString:@"█"];
        --v11;
      }

      while (v11);
    }

    if (v7 != v9)
    {
      v12 = v7 - v9;
      do
      {
        [v10 appendString:@" "];
        --v12;
      }

      while (v12);
    }

    [v4 fractionCompleted];
    [v10 appendFormat:@"| %lu%%", (v13 * 100.0)];
    [(FPCTLTermDumper *)self write:@"%@", v10];
  }
}

- (void)_putsAndCrop:(const char *)a3 len:(unint64_t)a4
{
  usedTermWidth = self->_usedTermWidth;
  if (self->_termWidth - usedTermWidth >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = self->_termWidth - usedTermWidth;
  }

  self->_usedTermWidth = v6 + usedTermWidth;
  write(self->_fd, a3, v6);
}

- (void)puts:(const char *)a3 len:(unint64_t)a4
{
  if (self->_termWidth)
  {
    [(FPCTLTermDumper *)self _putsAndCrop:a3 len:a4];
  }

  else
  {
    write(self->_fd, a3, a4);
  }
}

- (void)puts:(const char *)a3
{
  v5 = strlen(a3);

  [(FPCTLTermDumper *)self puts:a3 len:v5];
}

- (void)put:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];

  [(FPCTLTermDumper *)self puts:v6];
}

- (void)write:(id)a3
{
  v4 = MEMORY[0x1E696AEC0];
  v5 = a3;
  v6 = [[v4 alloc] initWithFormat:v5 arguments:&v7];

  if (self->_termWidth)
  {
    -[FPCTLTermDumper _putsAndCrop:len:](self, "_putsAndCrop:len:", [v6 UTF8String], objc_msgSend(v6, "lengthOfBytesUsingEncoding:", 4));
  }

  else
  {
    [(FPCTLTermDumper *)self put:v6];
  }
}

- (id)annotateString:(id)a3 markedIdentifiers:(id)a4
{
  v6 = a3;
  v7 = v6;
  if (self->_useColor)
  {
    v8 = a4;
    v9 = [v7 mutableCopy];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__FPCTLTermDumper_annotateString_markedIdentifiers___block_invoke;
    v14[3] = &unk_1E793EE58;
    v14[4] = self;
    v10 = v9;
    v15 = v10;
    [v8 enumerateKeysAndObjectsUsingBlock:v14];

    v11 = v15;
    v12 = v10;
  }

  else
  {
    v12 = v6;
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