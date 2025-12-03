@interface NSMutableString
- (void)appendStringWithComma:(id)comma;
- (void)replaceOccurrencesOfString:(id)string withString:(id)withString overallRange:(_NSRange)range avoidingRanges:(id)ranges;
@end

@implementation NSMutableString

- (void)appendStringWithComma:(id)comma
{
  commaCopy = comma;
  if ([commaCopy length])
  {
    if ([(NSMutableString *)self length])
    {
      [(NSMutableString *)self appendString:@", "];
    }

    [(NSMutableString *)self appendString:commaCopy];
  }
}

- (void)replaceOccurrencesOfString:(id)string withString:(id)withString overallRange:(_NSRange)range avoidingRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  stringCopy = string;
  withStringCopy = withString;
  rangesCopy = ranges;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v25 = &length[location];
    if (&length[location] <= [(NSMutableString *)self length])
    {
LABEL_4:
      while (location < v25)
      {
        v14 = [(NSMutableString *)self rangeOfString:stringCopy options:0 range:location, length];
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
        v18 = rangesCopy;
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

        [(NSMutableString *)self replaceCharactersInRange:v16 withString:v17, withStringCopy];
        location = [withStringCopy length] + v16;
        v24 = [(NSMutableString *)self length];
        length = (v24 - ([withStringCopy length] + v16));
      }
    }
  }
}

@end