@interface NSMutableString
- (void)appendStringWithComma:(id)a3;
- (void)replaceOccurrencesOfString:(id)a3 withString:(id)a4 overallRange:(_NSRange)a5 avoidingRanges:(id)a6;
@end

@implementation NSMutableString

- (void)appendStringWithComma:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    if ([(NSMutableString *)self length])
    {
      [(NSMutableString *)self appendString:@", "];
    }

    [(NSMutableString *)self appendString:v4];
  }
}

- (void)replaceOccurrencesOfString:(id)a3 withString:(id)a4 overallRange:(_NSRange)a5 avoidingRanges:(id)a6
{
  length = a5.length;
  location = a5.location;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = &length[location];
    if (&length[location] <= [(NSMutableString *)self length])
    {
LABEL_4:
      while (location < v25)
      {
        v14 = [(NSMutableString *)self rangeOfString:v11 options:0 range:location, length];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v16 = v14;
        v17 = v15;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v18 = v13;
        v19 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v19)
        {
          v20 = v19;
          v21 = *v27;
          while (2)
          {
            for (i = 0; i != v20; i = i + 1)
            {
              if (*v27 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v32.location = [*(*(&v26 + 1) + 8 * i) rangeValue];
              v32.length = v23;
              v31.location = v16;
              v31.length = v17;
              if (NSIntersectionRange(v31, v32).length)
              {

                location = v16 + 1;
                length = [(NSMutableString *)self length]- v16 - 1;
                goto LABEL_4;
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
            if (v20)
            {
              continue;
            }

            break;
          }
        }

        [(NSMutableString *)self replaceCharactersInRange:v16 withString:v17, v12];
        location = [v12 length] + v16;
        v24 = [(NSMutableString *)self length];
        length = (v24 - ([v12 length] + v16));
      }
    }
  }
}

@end