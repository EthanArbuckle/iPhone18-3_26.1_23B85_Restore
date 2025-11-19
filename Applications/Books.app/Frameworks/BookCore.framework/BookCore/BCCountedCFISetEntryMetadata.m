@interface BCCountedCFISetEntryMetadata
- (id)description;
@end

@implementation BCCountedCFISetEntryMetadata

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(BCCountedCFISetEntryMetadata *)self characterCount];
  if ([(BCCountedCFISetEntryMetadata *)self touchesPrev])
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  if ([(BCCountedCFISetEntryMetadata *)self touchesNext])
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  v8 = [NSString stringWithFormat:@"<%@=%p characterCount=%lu touchesPrev=%@ touchesNext=%@>", v4, self, v5, v6, v7];

  return v8;
}

@end