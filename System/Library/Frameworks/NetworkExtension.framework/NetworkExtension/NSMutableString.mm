@interface NSMutableString
- (void)appendPrettyObject:(int)object withIndent:(uint64_t)indent options:(unint64_t)options depth:;
- (void)appendPrettyObject:(uint64_t)object withName:(int)name andIndent:(uint64_t)indent options:(unint64_t)options depth:;
@end

@implementation NSMutableString

- (void)appendPrettyObject:(uint64_t)object withName:(int)name andIndent:(uint64_t)indent options:(unint64_t)options depth:
{
  if (self)
  {
    v11 = (4 * name + 4);
    v12 = a2;
    [self appendFormat:@"\n%*s%@ = ", v11, " ", object];
    [(NSMutableString *)self appendPrettyObject:v12 withIndent:name options:indent depth:options];
  }
}

- (void)appendPrettyObject:(int)object withIndent:(uint64_t)indent options:(unint64_t)options depth:
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = a2;
  objc_opt_self();
  optionsCopy = options;
  if (options > 4)
  {
    goto LABEL_41;
  }

  if ((isa_nsarray(v31) & 1) != 0 || isa_nsset(v31))
  {
    v7 = v31;
    v8 = isa_nsset(v7);
    v9 = "(";
    if (v8)
    {
      v9 = "{(";
      v10 = ")}";
    }

    else
    {
      v10 = ")";
    }

    [self appendFormat:@"%s", v9];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = v7;
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
    if (v12)
    {
      v13 = v12;
      v30 = v10;
      v14 = *v36;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v36 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v35 + 1) + 8 * i);
          [self appendFormat:@"\n%*s", (4 * object + 8), " "];
          [(NSMutableString *)self appendPrettyObject:v16 withIndent:(object + 1) options:indent depth:optionsCopy + 1];
          [self appendFormat:@", "];
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);

      [self appendFormat:@"\n%*s", (4 * object + 4), " "];
      v10 = v30;
    }

    else
    {
    }

    [self appendFormat:@"%s", v10];

    goto LABEL_36;
  }

  if (!isa_nsdictionary(v31))
  {
LABEL_41:
    if (isa_nsstring(v31))
    {
      v25 = v31;
      v26 = v25;
      if ((~indent & 3) != 0)
      {
        [self appendFormat:@"%@", v25];
      }

      else
      {
        [self appendFormat:@"<%lu-char-str>", objc_msgSend(v25, "length")];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v27 = [v31 descriptionWithIndent:(object + 1) options:indent];
      [self appendFormat:@"{%@", v27];

      [self appendFormat:@"\n%*s}", (4 * (object + 1)), " "];
    }

    else
    {
      v28 = [v31 description];
      [self appendFormat:@"%@", v28];
    }

    goto LABEL_36;
  }

  v17 = v31;
  [self appendFormat:@"{"];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v35 + 1) + 8 * j);
        v24 = [v18 objectForKeyedSubscript:v23];
        [(NSMutableString *)self appendPrettyObject:v24 withName:v23 andIndent:(object + 1) options:indent depth:optionsCopy + 1];
        [self appendFormat:@", "];
      }

      v20 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v20);

    [self appendFormat:@"\n%*s", (4 * object + 4), " "];
  }

  else
  {
  }

  [self appendString:@"}"];

LABEL_36:
  v29 = *MEMORY[0x1E69E9840];
}

@end