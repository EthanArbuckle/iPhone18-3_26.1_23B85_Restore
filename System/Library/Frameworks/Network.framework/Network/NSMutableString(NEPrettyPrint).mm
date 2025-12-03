@interface NSMutableString(NEPrettyPrint)
- (uint64_t)appendPrettyBOOL:()NEPrettyPrint withName:indent:;
- (void)appendPrettyObject:()NEPrettyPrint withName:indent:showFullContent:;
@end

@implementation NSMutableString(NEPrettyPrint)

- (uint64_t)appendPrettyBOOL:()NEPrettyPrint withName:indent:
{
  v5 = @"NO";
  if (a3)
  {
    v5 = @"YES";
  }

  return [self appendFormat:@"\n%*s%@ = %@", (4 * a5 + 4), " ", a4, v5];
}

- (void)appendPrettyObject:()NEPrettyPrint withName:indent:showFullContent:
{
  v67 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v8)
  {
    v10 = v8;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v53 = v8;
      v12 = v10;
      v52 = v9;
      objc_msgSend(self, "appendFormat:", @"\n%*s%@ = ("), (4 * a5 + 4), " ", v9;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v13 = v12;
      v14 = [v13 countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = (4 * a5 + 8);
        v17 = *v62;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v62 != v17)
            {
              objc_enumerationMutation(v13);
            }

            v20 = *(*(&v61 + 1) + 8 * i);
            if (objc_opt_respondsToSelector())
            {
              v21 = [v20 descriptionWithIndent:(a5 + 2) showFullContent:a6];
              [self appendFormat:@"\n%*s{%@", v16, " ", v21];

              [self appendFormat:@"\n%*s}, ", v16, " ", v49];
            }

            else
            {
              v22 = v20;
              objc_opt_class();
              v23 = objc_opt_isKindOfClass();

              if (v23 & 1) == 0 || (a6)
              {
                v19 = [v22 description];
                [self appendFormat:@"\n%*s%@, ", v16, " ", v19];
              }

              else
              {
                [self appendFormat:@"\n%*s<%lu-char-str>, ", v16, " ", objc_msgSend(v22, "length")];
              }
            }
          }

          v15 = [v13 countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v15);
      }

      [self appendFormat:@"\n%*s"], (4 * a5 + 4), " ");
LABEL_37:

      v9 = v52;
      v8 = v53;
      goto LABEL_38;
    }

    v24 = v10;
    objc_opt_class();
    v25 = objc_opt_isKindOfClass();

    if (v25)
    {
      v53 = v8;
      v26 = v24;
      v52 = v9;
      v27 = " ";
      [self appendFormat:@"\n%*s%@ = {", (4 * a5 + 4), " ", v9];
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v13 = v26;
      v28 = [v13 countByEnumeratingWithState:&v57 objects:v65 count:16];
      if (v28)
      {
        v29 = v28;
        v54 = (4 * a5 + 8);
        v30 = *v58;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v58 != v30)
            {
              objc_enumerationMutation(v13);
            }

            v33 = *(*(&v57 + 1) + 8 * j);
            v34 = [v13 objectForKeyedSubscript:v33];
            if (objc_opt_respondsToSelector())
            {
              v32 = [v34 descriptionWithIndent:(a5 + 2) showFullContent:a6];
              [self appendFormat:@"\n%*s%@ = {%@", v54, v27, v33, v32];

              [self appendFormat:@"\n%*s}, ", v54, v27];
            }

            else
            {
              v35 = v13;
              v36 = v30;
              v37 = v29;
              v38 = v27;
              v39 = v34;
              objc_opt_class();
              v40 = objc_opt_isKindOfClass();

              if (v40 & 1) == 0 || (a6)
              {
                v41 = [v39 description];
                v27 = v38;
                [self appendFormat:@"\n%*s%@ = %@", v54, v38, v33, v41];
              }

              else
              {
                v27 = v38;
                [self appendFormat:@"\n%*s%@ = <%lu-char-str>", v54, v38, v33, objc_msgSend(v39, "length")];
              }

              v29 = v37;
              v30 = v36;
              v13 = v35;
            }
          }

          v29 = [v13 countByEnumeratingWithState:&v57 objects:v65 count:16];
        }

        while (v29);
      }

      [self appendFormat:@"\n%*s}", (4 * a5 + 4), v27];
      goto LABEL_37;
    }

    v42 = v24;
    objc_opt_class();
    v43 = objc_opt_isKindOfClass();

    if (v43)
    {
      uUIDString = [v42 UUIDString];
      [self appendFormat:@"\n%*s%@ = %@", (4 * a5 + 4), " ", v9, uUIDString];
LABEL_35:

      goto LABEL_38;
    }

    v45 = v42;
    objc_opt_class();
    v46 = objc_opt_isKindOfClass();

    if ((v46 & 1) == 0)
    {
      uUIDString = v45;
      if (objc_opt_respondsToSelector())
      {
        v47 = [uUIDString descriptionWithIndent:? showFullContent:?];
        [self appendFormat:@"\n%*s%@ = {%@", (4 * (a5 + 1)), " ", v9, v47];

        [self appendFormat:@"\n%*s}", (4 * (a5 + 1)), " ", v50, v51];
      }

      else
      {
        v48 = [uUIDString description];
        [self appendFormat:@"\n%*s%@ = %@", (4 * a5 + 4), " ", v9, v48];
      }

      goto LABEL_35;
    }

    if (a6)
    {
      [self appendFormat:@"\n%*s%@ = %@", (4 * a5 + 4), " ", v9, v45];
    }

    else
    {
      [self appendFormat:@"\n%*s%@ = <%lu-char-str>", (4 * a5 + 4), " ", v9, objc_msgSend(v45, "length")];
    }
  }

LABEL_38:
}

@end