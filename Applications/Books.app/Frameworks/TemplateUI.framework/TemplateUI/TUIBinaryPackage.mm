@interface TUIBinaryPackage
+ (TUIBinaryPackage)packageWithURL:(id)l;
+ (TUIBinaryPackage)packageWithURL:(id)l baseURL:(id)rL error:(id *)error;
+ (id)emptyPackage;
+ (void)clearCache;
+ (void)removeCacheForURL:(id)l;
- ($201E9A47BE70A2B12CCA2F48B75AA2F7)nameForString:(id)string;
- ($7E080378D8F67055EE0984892F39872B)symbolForString:(id)string;
- (TUIBinaryPackage)initWithURL:(id)l baseURL:(id)rL error:(id *)error;
- (id).cxx_construct;
- (id)debugLocationForNode:(id)node;
- (id)initAsEmpty;
- (id)templateWithURL:(id)l;
- (void)dealloc;
@end

@implementation TUIBinaryPackage

+ (id)emptyPackage
{
  initAsEmpty = [[self alloc] initAsEmpty];

  return initAsEmpty;
}

+ (TUIBinaryPackage)packageWithURL:(id)l
{
  v3 = [self packageWithURL:l baseURL:l error:0];

  return v3;
}

+ (TUIBinaryPackage)packageWithURL:(id)l baseURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  os_unfair_lock_lock(&unk_2E5F78);
  v9 = qword_2E5F70;
  if (!qword_2E5F70)
  {
    v10 = objc_opt_new();
    v11 = qword_2E5F70;
    qword_2E5F70 = v10;

    v9 = qword_2E5F70;
  }

  v12 = [v9 objectForKeyedSubscript:lCopy];
  if (!v12)
  {
    v13 = TUIInstallBundleLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = lCopy;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Installing TUIBinaryPackage for %{public}@", &v16, 0xCu);
    }

    v14 = objc_autoreleasePoolPush();
    v12 = [[TUIBinaryPackage alloc] initWithURL:lCopy baseURL:rLCopy error:error];
    objc_autoreleasePoolPop(v14);
    if (v12)
    {
      [qword_2E5F70 setObject:v12 forKeyedSubscript:lCopy];
    }
  }

  os_unfair_lock_unlock(&unk_2E5F78);

  return v12;
}

+ (void)removeCacheForURL:(id)l
{
  lCopy = l;
  v4 = TUIInstallBundleLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = lCopy;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Removing TUIBinaryPackage for %{public}@", &v5, 0xCu);
  }

  os_unfair_lock_lock(&unk_2E5F78);
  [qword_2E5F70 removeObjectForKey:lCopy];
  os_unfair_lock_unlock(&unk_2E5F78);
}

+ (void)clearCache
{
  os_unfair_lock_lock(&unk_2E5F78);
  [qword_2E5F70 removeAllObjects];

  os_unfair_lock_unlock(&unk_2E5F78);
}

- (id)initAsEmpty
{
  v3.receiver = self;
  v3.super_class = TUIBinaryPackage;
  if ([(TUIBinaryPackage *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (TUIBinaryPackage)initWithURL:(id)l baseURL:(id)rL error:(id *)error
{
  lCopy = l;
  rLCopy = rL;
  v20.receiver = self;
  v20.super_class = TUIBinaryPackage;
  v9 = [(TUIBinaryPackage *)&v20 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_url, l);
    objc_storeStrong(&v10->_baseURL, rL);
    if ([lCopy isFileURL])
    {
      path = [lCopy path];
      uTF8String = [path UTF8String];
      v10->_data = 0;
      v10->_size = 0;
      v13 = open(uTF8String, 0, 0);
      v14 = v13;
      if (v13 < 0)
      {
        v15 = *__error();
      }

      else
      {
        if (fstat(v13, &v21) || (v16 = mmap(0, v21.st_size, 1, 1, v14, 0), v10->_data = v16, v16 == -1))
        {
          v15 = *__error();
        }

        else
        {
          v15 = 0;
          v10->_size = v21.st_size;
        }

        close(v14);
      }

      if (!v15)
      {
        TUI::Package::Decoder::Decoder(&v21, v10->_data, v10->_size);
        TUI::Package::Decoder::swap(&v10->_decoder, &v21);
        operator new();
      }
    }

    TUI::Package::Decoder::sectionWithTag(&v10->_decoder, 0x656C6E62u, 2, &v19);
    TUI::Package::Section::decodeStrings(&v19, 2, &v21);
    *&v10->_elementNames.base = *&v21.st_dev;
    v10->_elementNames.offsets = *&v21.st_uid;

    v10 = 0;
  }

  return v10;
}

- (void)dealloc
{
  if (self->_data)
  {
    symtab = self->_symtab;
    if (symtab)
    {
      TUI::Symbol::Tab::~Tab(symtab);
      operator delete();
    }

    buffer = self->_buffer;
    if (buffer)
    {
      TUI::Package::Buffer::~Buffer(buffer);
      operator delete();
    }

    munmap(self->_data, self->_size);
  }

  v5.receiver = self;
  v5.super_class = TUIBinaryPackage;
  [(TUIBinaryPackage *)&v5 dealloc];
}

- ($201E9A47BE70A2B12CCA2F48B75AA2F7)nameForString:(id)string
{
  stringCopy = string;
  v27 = HIWORD(TUINameNil);
  v28 = TUINameNil;
  if (stringCopy)
  {
    __src = 0;
    v36 = 0;
    v37 = 0;
    v26 = stringCopy;
    [stringCopy componentsSeparatedByString:@"::"];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v5 = v32 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v31 objects:v38 count:16];
    if (v6)
    {
      v7 = *v32;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v32 != v7)
          {
            objc_enumerationMutation(v5);
          }

          symtab = self->_symtab;
          sub_60D8(__p, [*(*(&v31 + 1) + 8 * i) UTF8String]);
          v10 = TUI::Symbol::Tab::lookup(symtab, __p);
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }

          if (v10 != 0xFFFF)
          {
            v11 = v36;
            if (v36 >= v37)
            {
              v13 = __src;
              v14 = v36 - __src;
              v15 = (v36 - __src) >> 1;
              if (v15 <= -2)
              {
                sub_4050();
              }

              if (v37 - __src <= v15 + 1)
              {
                v16 = v15 + 1;
              }

              else
              {
                v16 = v37 - __src;
              }

              v17 = 0x7FFFFFFFFFFFFFFFLL;
              if (v37 - __src < 0x7FFFFFFFFFFFFFFELL)
              {
                v17 = v16;
              }

              if (v17)
              {
                sub_6780(&__src, v17);
              }

              *(2 * v15) = v10;
              v12 = 2 * v15 + 2;
              memcpy(0, v13, v14);
              v18 = __src;
              __src = 0;
              v36 = v12;
              v37 = 0;
              if (v18)
              {
                operator delete(v18);
              }
            }

            else
            {
              *v36 = v10;
              v12 = (v11 + 2);
            }

            v36 = v12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v31 objects:v38 count:16];
      }

      while (v6);
    }

    v20 = __src;
    v19 = v36;
    if ([v5 count] == ((v19 - v20) >> 1) && v36 != __src)
    {
      v21 = *(v36 - 1);
      v36 -= 2;
      v22 = TUI::Symbol::Tab::lookup(self->_symtab, &__src);
      if (v22 == 0xFFFF)
      {
        v23 = v28;
      }

      else
      {
        v23 = v22;
      }

      v24 = v27;
      if (v22 != 0xFFFF)
      {
        v24 = v21;
      }

      v27 = v24;
      v28 = v23;
    }

    if (__src)
    {
      v36 = __src;
      operator delete(__src);
    }

    stringCopy = v26;
  }

  return (v28 | (v27 << 16));
}

- ($7E080378D8F67055EE0984892F39872B)symbolForString:(id)string
{
  stringCopy = string;
  v5 = stringCopy;
  if (stringCopy)
  {
    v6 = [stringCopy characterAtIndex:0];
    symtab = self->_symtab;
    if (v6 == 58)
    {
      v8 = [v5 substringFromIndex:1];
      sub_60D8(__p, [v8 UTF8String]);
      v9.var0 = TUI::Symbol::Tab::lookup(symtab, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      sub_60D8(__p, [v5 UTF8String]);
      v9.var0 = TUI::Symbol::Tab::lookup(symtab, __p);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v9.var0 = TUISymbolNil;
  }

  return v9;
}

- (id)templateWithURL:(id)l
{
  lCopy = l;
  scheme = [lCopy scheme];

  if (!scheme)
  {
    absoluteString = [lCopy absoluteString];
    v7 = [NSURL URLWithString:absoluteString relativeToURL:self->_baseURL];

    lCopy = v7;
  }

  v8 = [NSURLComponents componentsWithURL:lCopy resolvingAgainstBaseURL:1];
  path = [v8 path];
  stringByStandardizingPath = [path stringByStandardizingPath];
  [v8 setPath:stringByStandardizingPath];

  v11 = [v8 URL];
  v12 = [(NSDictionary *)self->_templates objectForKeyedSubscript:v11];

  return v12;
}

- (id)debugLocationForNode:(id)node
{
  v3 = *&node.var0;
  buffer = self->_buffer;
  if (buffer[27] <= node.var0 || (v5 = buffer[26] + 28 * node.var0) == 0)
  {
    v12 = [NSNumber numberWithUnsignedInt:*&node.var0];
    v13 = [NSString stringWithFormat:@"InvalidNode:%@", v12];
    goto LABEL_18;
  }

  v7 = *(v5 + 24);
  if (buffer[17] > v7 >> 12 && (v8 = (buffer[16] + 8 * (v7 >> 12))) != 0)
  {
    v9 = *v8;
    v10 = *(v8 + 1) << 32;
    v11 = v9 << 16;
  }

  else
  {
    v10 = 0xFFFFFFFF00000000;
    v11 = 4294901760;
  }

  v21 = v10 | v11 | v7 & 0xFFF;
  v12 = TUI::Package::Location::Entry::pathURL(&v21, buffer);
  v14 = self->_buffer;
  if (v14[11] <= HIDWORD(v21) || (v15 = v14[10]) == 0)
  {
    v16 = 0;
LABEL_16:
    lastPathComponent = [NSNumber numberWithUnsignedInt:v3];
    v19 = [NSString stringWithFormat:@"NoLocationOrXPath:%@", lastPathComponent];
    goto LABEL_17;
  }

  v16 = [NSString stringWithUTF8String:v15 + *(v14[12] + 4 * HIDWORD(v21))];
  if (v16)
  {
    v17 = v12 == 0;
  }

  else
  {
    v17 = 1;
  }

  if (v17)
  {
    goto LABEL_16;
  }

  lastPathComponent = [v12 lastPathComponent];
  v19 = [NSString stringWithFormat:@"Path:%@ XPath:%@", lastPathComponent, v16];
LABEL_17:
  v13 = v19;

LABEL_18:

  return v13;
}

- (id).cxx_construct
{
  self->_elementNames.base = 0;
  self->_elementNames.count = 0;
  self->_elementNames.offsets = 0;
  TUI::Package::Decoder::Decoder(&self->_decoder);
  return self;
}

@end