@interface SNClassificationResult
- (id)sr_dictionaryRepresentation;
@end

@implementation SNClassificationResult

- (id)sr_dictionaryRepresentation
{
  if (self)
  {
    [(SNClassificationResult *)self timeRange];
  }

  else
  {
    memset(&range, 0, sizeof(range));
  }

  v3 = CMTimeRangeCopyDescription(kCFAllocatorDefault, &range);
  v4 = [NSMutableArray arrayWithCapacity:[(NSArray *)[(SNClassificationResult *)self classifications] count]];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(SNClassificationResult *)self classifications];
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        -[NSMutableArray addObject:](v4, "addObject:", [*(*(&v12 + 1) + 8 * i) sr_dictionaryRepresentation]);
      }

      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v12 objects:v19 count:16];
    }

    while (v7);
  }

  v17[0] = @"classifications";
  v17[1] = @"timeRange";
  v18[0] = v4;
  v18[1] = v3;
  v10 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
  CFRelease(v3);
  return v10;
}

@end