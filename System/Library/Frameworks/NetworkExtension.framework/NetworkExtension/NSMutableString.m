@interface NSMutableString
- (void)appendPrettyObject:(int)a3 withIndent:(uint64_t)a4 options:(unint64_t)a5 depth:;
- (void)appendPrettyObject:(uint64_t)a3 withName:(int)a4 andIndent:(uint64_t)a5 options:(unint64_t)a6 depth:;
@end

@implementation NSMutableString

- (void)appendPrettyObject:(uint64_t)a3 withName:(int)a4 andIndent:(uint64_t)a5 options:(unint64_t)a6 depth:
{
  if (a1)
  {
    v11 = (4 * a4 + 4);
    v12 = a2;
    [a1 appendFormat:@"\n%*s%@ = ", v11, " ", a3];
    [(NSMutableString *)a1 appendPrettyObject:v12 withIndent:a4 options:a5 depth:a6];
  }
}

- (void)appendPrettyObject:(int)a3 withIndent:(uint64_t)a4 options:(unint64_t)a5 depth:
{
  v40 = *MEMORY[0x1E69E9840];
  v31 = a2;
  objc_opt_self();
  v32 = a5;
  if (a5 > 4)
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

    [a1 appendFormat:@"%s", v9];
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
          [a1 appendFormat:@"\n%*s", (4 * a3 + 8), " "];
          [(NSMutableString *)a1 appendPrettyObject:v16 withIndent:(a3 + 1) options:a4 depth:v32 + 1];
          [a1 appendFormat:@", "];
        }

        v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      }

      while (v13);

      [a1 appendFormat:@"\n%*s", (4 * a3 + 4), " "];
      v10 = v30;
    }

    else
    {
    }

    [a1 appendFormat:@"%s", v10];

    goto LABEL_36;
  }

  if (!isa_nsdictionary(v31))
  {
LABEL_41:
    if (isa_nsstring(v31))
    {
      v25 = v31;
      v26 = v25;
      if ((~a4 & 3) != 0)
      {
        [a1 appendFormat:@"%@", v25];
      }

      else
      {
        [a1 appendFormat:@"<%lu-char-str>", objc_msgSend(v25, "length")];
      }
    }

    else if (objc_opt_respondsToSelector())
    {
      v27 = [v31 descriptionWithIndent:(a3 + 1) options:a4];
      [a1 appendFormat:@"{%@", v27];

      [a1 appendFormat:@"\n%*s}", (4 * (a3 + 1)), " "];
    }

    else
    {
      v28 = [v31 description];
      [a1 appendFormat:@"%@", v28];
    }

    goto LABEL_36;
  }

  v17 = v31;
  [a1 appendFormat:@"{"];
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
        [(NSMutableString *)a1 appendPrettyObject:v24 withName:v23 andIndent:(a3 + 1) options:a4 depth:v32 + 1];
        [a1 appendFormat:@", "];
      }

      v20 = [v18 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v20);

    [a1 appendFormat:@"\n%*s", (4 * a3 + 4), " "];
  }

  else
  {
  }

  [a1 appendString:@"}"];

LABEL_36:
  v29 = *MEMORY[0x1E69E9840];
}

@end