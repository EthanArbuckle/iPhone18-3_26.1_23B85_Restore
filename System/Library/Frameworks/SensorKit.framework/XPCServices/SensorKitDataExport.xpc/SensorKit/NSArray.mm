@interface NSArray
- (BOOL)sr_prefersUTF8StringRepresentation;
- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)a3;
@end

@implementation NSArray

- (BOOL)sr_prefersUTF8StringRepresentation
{
  v2 = [(NSArray *)self firstObject];
  v3 = [v2 conformsToProtocol:&OBJC_PROTOCOL___SRSampleDirectExporting];
  if (v3)
  {

    LOBYTE(v3) = [v2 sr_prefersUTF8StringRepresentation];
  }

  return v3;
}

- (int64_t)sr_writeUTF8RepresentationToOutputStream:(id)a3
{
  v5 = [a3 write:"[" maxLength:1];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(NSArray *)self countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 1;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(self);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ((v9 & 1) == 0)
        {
          v5 = &v5[[a3 write:" maxLength:{\n", 2}]];
        }

        v9 = 0;
        v5 = &v5[[v11 sr_writeUTF8RepresentationToOutputStream:a3]];
        v10 = v10 + 1;
      }

      while (v7 != v10);
      v7 = [(NSArray *)self countByEnumeratingWithState:&v13 objects:v17 count:16];
      v9 = 0;
    }

    while (v7);
  }

  return &v5[[a3 write:"]" maxLength:1]];
}

@end