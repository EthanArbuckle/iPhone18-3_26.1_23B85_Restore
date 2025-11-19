@interface NSRunLoop(NSOrderedPerforming)
- (uint64_t)cancelPerformSelector:()NSOrderedPerforming target:argument:;
- (uint64_t)cancelPerformSelectorsWithTarget:()NSOrderedPerforming;
- (uint64_t)performSelector:()NSOrderedPerforming target:argument:order:modes:;
@end

@implementation NSRunLoop(NSOrderedPerforming)

- (uint64_t)performSelector:()NSOrderedPerforming target:argument:order:modes:
{
  v33 = *MEMORY[0x1E69E9840];
  result = [a1 getCFRunLoop];
  rl = result;
  if (result)
  {
    context = *byte_1EEEFCA58;
    result = [a7 count];
    if (result)
    {
      objc_sync_enter(a1);
      v13 = malloc_default_zone();
      v14 = malloc_type_zone_calloc(v13, 1uLL, 0x30uLL, 0x2C221C3EuLL);
      context.info = v14;
      *v14 = a4;
      v14[1] = a3;
      v14[2] = a5;
      v14[3] = [a7 copyWithZone:0];
      v14[5] = a1;
      if (a6 >= 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = a6;
      }

      v16 = CFRunLoopObserverCreate(0, 2uLL, 0, v15, __NSFirePerformWithOrder, &context);
      v14[4] = v16;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v17 = a7;
      v18 = [a7 countByEnumeratingWithState:&v29 objects:v28 count:16];
      if (v18)
      {
        v19 = *v30;
        v20 = *MEMORY[0x1E695E8E0];
        v21 = *MEMORY[0x1E695DA28];
        v22 = *MEMORY[0x1E695E8D0];
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v30 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v24 = *(*(&v29 + 1) + 8 * i);
            if ([(__CFString *)v24 isEqual:@"NSDefaultRunLoopMode"])
            {
              v24 = v20;
            }

            if (v24 == v21 || [(__CFString *)v24 isEqual:@"kCFRunLoopCommonModes"])
            {
              v24 = v22;
            }

            CFRunLoopAddObserver(rl, v16, v24);
          }

          v18 = [v17 countByEnumeratingWithState:&v29 objects:v28 count:16];
        }

        while (v18);
      }

      CFArrayAppendValue([a1 _perft], v16);
      CFRelease(v16);
      return objc_sync_exit(a1);
    }
  }

  return result;
}

- (uint64_t)cancelPerformSelector:()NSOrderedPerforming target:argument:
{
  v35 = *MEMORY[0x1E69E9840];
  result = [a1 getCFRunLoop];
  if (result)
  {
    v10 = result;
    objc_sync_enter(a1);
    obj = a1;
    v11 = [objc_msgSend(a1 "_perft")];
    if (v11)
    {
      v12 = *MEMORY[0x1E695DA28];
      v13 = *MEMORY[0x1E695E8D0];
      v25 = a4;
      v26 = a5;
      v24 = a3;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex([obj _perft], --v11);
        memset(&context, 0, sizeof(context));
        CFRunLoopObserverGetContext(ValueAtIndex, &context);
        info = context.info;
        if (*(context.info + 1) == a3)
        {
          if ([*context.info isEqual:a4])
          {
            v16 = info[2];
            if (!(a5 | v16) || [v16 isEqual:a5])
            {
              CFRetain(ValueAtIndex);
              v27 = v11;
              v33 = 0u;
              v34 = 0u;
              v31 = 0u;
              v32 = 0u;
              v17 = info[3];
              v18 = [v17 countByEnumeratingWithState:&v31 objects:v30 count:16];
              if (v18)
              {
                v19 = *v32;
                do
                {
                  for (i = 0; i != v18; ++i)
                  {
                    if (*v32 != v19)
                    {
                      objc_enumerationMutation(v17);
                    }

                    v21 = *(*(&v31 + 1) + 8 * i);
                    v22 = v13;
                    if (v21 != v12)
                    {
                      v23 = [*(*(&v31 + 1) + 8 * i) isEqual:@"kCFRunLoopCommonModes"];
                      v22 = v21;
                      if (v23)
                      {
                        v22 = v13;
                      }
                    }

                    CFRunLoopRemoveObserver(v10, ValueAtIndex, v22);
                  }

                  v18 = [v17 countByEnumeratingWithState:&v31 objects:v30 count:16];
                }

                while (v18);
              }

              CFRunLoopObserverInvalidate(ValueAtIndex);
              a4 = v25;
              a5 = v26;
              a3 = v24;
              v11 = v27;
              CFRelease(ValueAtIndex);
              [objc_msgSend(obj "_perft")];
            }
          }
        }
      }

      while (v11);
    }

    return objc_sync_exit(obj);
  }

  return result;
}

- (uint64_t)cancelPerformSelectorsWithTarget:()NSOrderedPerforming
{
  v28 = *MEMORY[0x1E69E9840];
  result = [a1 getCFRunLoop];
  if (result)
  {
    v6 = result;
    objc_sync_enter(a1);
    obj = a1;
    v7 = [objc_msgSend(a1 "_perft")];
    if (v7)
    {
      v8 = *MEMORY[0x1E695DA28];
      v9 = *MEMORY[0x1E695E8D0];
      v19 = a3;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex([obj _perft], --v7);
        memset(&context, 0, sizeof(context));
        CFRunLoopObserverGetContext(ValueAtIndex, &context);
        info = context.info;
        if (*context.info == a3 || [*context.info isEqual:a3])
        {
          CFRetain(ValueAtIndex);
          v20 = v7;
          v26 = 0u;
          v27 = 0u;
          v24 = 0u;
          v25 = 0u;
          v12 = info[3];
          v13 = [v12 countByEnumeratingWithState:&v24 objects:v23 count:16];
          if (v13)
          {
            v14 = *v25;
            do
            {
              for (i = 0; i != v13; ++i)
              {
                if (*v25 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v24 + 1) + 8 * i);
                v17 = v9;
                if (v16 != v8)
                {
                  v18 = [*(*(&v24 + 1) + 8 * i) isEqual:@"kCFRunLoopCommonModes"];
                  v17 = v16;
                  if (v18)
                  {
                    v17 = v9;
                  }
                }

                CFRunLoopRemoveObserver(v6, ValueAtIndex, v17);
              }

              v13 = [v12 countByEnumeratingWithState:&v24 objects:v23 count:16];
            }

            while (v13);
          }

          CFRunLoopObserverInvalidate(ValueAtIndex);
          a3 = v19;
          v7 = v20;
          CFRelease(ValueAtIndex);
          [objc_msgSend(obj "_perft")];
        }
      }

      while (v7);
    }

    return objc_sync_exit(obj);
  }

  return result;
}

@end