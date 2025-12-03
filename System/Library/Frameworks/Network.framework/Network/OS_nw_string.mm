@interface OS_nw_string
- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange;
@end

@implementation OS_nw_string

- (BOOL)getBytes:(void *)bytes maxLength:(unint64_t)length usedLength:(unint64_t *)usedLength encoding:(unint64_t)encoding options:(unint64_t)options range:(_NSRange)range remainingRange:(_NSRange *)remainingRange
{
  if (encoding == 4 || encoding == 1)
  {
    v13 = 0;
    bytes = nw_string_get_bytes(self, bytes, length, range.location, range.length, &v13);
    if (bytes)
    {
      if (usedLength)
      {
        *usedLength = v13;
      }

      if (remainingRange)
      {
        v11 = range.length - v13;
        remainingRange->location = v13 + range.location;
        remainingRange->length = v11;
      }
    }
  }

  else
  {
    LOBYTE(bytes) = 0;
  }

  return bytes;
}

@end