@interface NSFormatter
- (BOOL)getObjectValue:(id *)value forString:(id)string range:(_NSRange *)range error:(id *)error;
- (BOOL)isPartialStringValid:(NSString *)partialStringPtr proposedSelectedRange:(NSRangePointer)proposedSelRangePtr originalString:(NSString *)origString originalSelectedRange:(NSRange)origSelRange errorDescription:(NSString *)error;
@end

@implementation NSFormatter

- (BOOL)getObjectValue:(id *)value forString:(id)string range:(_NSRange *)range error:(id *)error
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (range)
  {
    string = [string substringWithRange:{range->location, range->length}];
  }

  if (error)
  {
    v9 = &v14;
  }

  else
  {
    v9 = 0;
  }

  v10 = [(NSFormatter *)self getObjectValue:value forString:string errorDescription:v9, v14, v15];
  v11 = v10;
  if (error && !v10)
  {
    if (v14)
    {
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObject:v14 forKey:@"NSLocalizedDescription"];
    }

    else
    {
      v12 = 0;
    }

    *error = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:2048 userInfo:v12];
  }

  return v11;
}

- (BOOL)isPartialStringValid:(NSString *)partialStringPtr proposedSelectedRange:(NSRangePointer)proposedSelRangePtr originalString:(NSString *)origString originalSelectedRange:(NSRange)origSelRange errorDescription:(NSString *)error
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  v9 = [(NSFormatter *)self isPartialStringValid:*partialStringPtr newEditingString:v12 errorDescription:error, origSelRange.location, origSelRange.length];
  if (!v9)
  {
    v10 = v12[0];
    if (v12[0])
    {
      *partialStringPtr = v12[0];
      if (proposedSelRangePtr)
      {
        proposedSelRangePtr->location = [v10 length];
        proposedSelRangePtr->length = 0;
      }
    }
  }

  return v9;
}

@end