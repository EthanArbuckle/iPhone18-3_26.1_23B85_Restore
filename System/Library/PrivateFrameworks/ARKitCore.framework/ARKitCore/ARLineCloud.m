@interface ARLineCloud
- (ARLineCloud)initWithLineCloudData:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation ARLineCloud

- (ARLineCloud)initWithLineCloudData:(id)a3
{
  v4 = a3;
  v23.receiver = self;
  v23.super_class = ARLineCloud;
  v5 = [(ARLineCloud *)&v23 init];
  if (v5)
  {
    v6 = [v4 bytes];
    v7 = [v4 length];
    v8 = v7 / 0x48;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7 / 0x48];
    if (v7 >= 0x48)
    {
      v10 = v6 + 32;
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
        [(NSArray *)v9 addObject:v16];

        v10 += 72;
        --v8;
      }

      while (v8);
    }

    lines = v5->_lines;
    v5->_lines = v9;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(NSArray *)self->_lines copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  return v5;
}

@end