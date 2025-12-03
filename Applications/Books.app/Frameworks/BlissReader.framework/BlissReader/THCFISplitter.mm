@interface THCFISplitter
+ (id)_singletonAlloc;
+ (id)sharedInstance;
- (THCFISplitter)init;
- (id)storageIDFromCFI:(id)i;
- (void)dealloc;
@end

@implementation THCFISplitter

+ (id)_singletonAlloc
{
  v3.receiver = self;
  v3.super_class = &OBJC_METACLASS___THCFISplitter;
  return objc_msgSendSuper2(&v3, "allocWithZone:", 0);
}

+ (id)sharedInstance
{
  result = qword_5678B0;
  if (!qword_5678B0)
  {
    objc_sync_enter(self);
    if (!qword_5678B0)
    {
      v4 = [objc_msgSend(self "_singletonAlloc")];
      __dmb(0xBu);
      qword_5678B0 = v4;
      if (!v4)
      {
        [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      }
    }

    objc_sync_exit(self);
    return qword_5678B0;
  }

  return result;
}

- (THCFISplitter)init
{
  v4.receiver = self;
  v4.super_class = THCFISplitter;
  v2 = [(THCFISplitter *)&v4 init];
  if (v2)
  {
    v2->_regex = [[NSRegularExpression alloc] initWithPattern:@"\\[([a-zA-Z0-9-]+)\\]" options:0 error:0];
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THCFISplitter;
  [(THCFISplitter *)&v3 dealloc];
}

- (id)storageIDFromCFI:(id)i
{
  v4 = -[NSRegularExpression firstMatchInString:options:range:](self->_regex, "firstMatchInString:options:range:", i, 0, 0, [i length]);
  if ([(NSTextCheckingResult *)v4 numberOfRanges]< 2)
  {
    return 0;
  }

  v5 = [(NSTextCheckingResult *)v4 rangeAtIndex:1];
  v7 = v6;
  if (v6 >= 2 && [i characterAtIndex:v5] == 112 && objc_msgSend(i, "characterAtIndex:", v5 + 1) - 58 > 0xFFFFFFF5)
  {
    return 0;
  }

  return [i substringWithRange:{v5, v7}];
}

@end