@interface ARLineCloud
- (ARLineCloud)initWithLineCloudData:(id)data;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation ARLineCloud

- (ARLineCloud)initWithLineCloudData:(id)data
{
  dataCopy = data;
  v23.receiver = self;
  v23.super_class = ARLineCloud;
  v5 = [(ARLineCloud *)&v23 init];
  if (v5)
  {
    bytes = [dataCopy bytes];
    v7 = [dataCopy length];
    v8 = v7 / 0x48;
    0x48 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7 / 0x48];
    if (v7 >= 0x48)
    {
      v10 = bytes + 32;
      do
      {
        v11 = *(v10 - 32);
        v12 = *(v10 - 24);
        v13 = *v10;
        v14 = *(v10 + 8);
        v15 = *(v10 + 32);
        v16 = objc_opt_new();
        [v16 setIdentifier:v15];
        *&v17 = v11;
        v18 = v12;
        *(&v17 + 1) = v18;
        [v16 setStartPoint:v17];
        *&v19 = v13;
        v20 = v14;
        *(&v19 + 1) = v20;
        [v16 setEndPoint:v19];
        [(NSArray *)0x48 addObject:v16];

        v10 += 72;
        --v8;
      }

      while (v8);
    }

    lines = v5->_lines;
    v5->_lines = 0x48;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(NSArray *)self->_lines copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end