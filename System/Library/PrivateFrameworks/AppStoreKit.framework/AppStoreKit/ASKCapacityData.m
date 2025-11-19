@interface ASKCapacityData
- (ASKCapacityData)init;
@end

@implementation ASKCapacityData

- (ASKCapacityData)init
{
  v20.receiver = self;
  v20.super_class = ASKCapacityData;
  v2 = [(ASKCapacityData *)&v20 init];
  if (v2)
  {
    v3 = MGCopyAnswer();
    v4 = [v3 objectForKey:*MEMORY[0x1E69E5138]];
    v5 = v4;
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = &unk_1F5CA8DD8;
    }

    [(ASKCapacityData *)v2 setTotalSystemCapacity:v6];
    v7 = [v3 objectForKey:*MEMORY[0x1E69E5130]];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = &unk_1F5CA8DD8;
    }

    [(ASKCapacityData *)v2 setTotalSystemAvailable:v9];
    v10 = [v3 objectForKey:*MEMORY[0x1E69E5120]];
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = &unk_1F5CA8DD8;
    }

    [(ASKCapacityData *)v2 setTotalDataCapacity:v12];
    v13 = [v3 objectForKey:*MEMORY[0x1E69E5118]];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = &unk_1F5CA8DD8;
    }

    [(ASKCapacityData *)v2 setTotalDataAvailable:v15];
    v16 = [v3 objectForKey:*MEMORY[0x1E69E5128]];
    v17 = v16;
    if (v16)
    {
      v18 = v16;
    }

    else
    {
      v18 = &unk_1F5CA8DF0;
    }

    [(ASKCapacityData *)v2 setTotalDiskCapacity:v18];
  }

  return v2;
}

@end