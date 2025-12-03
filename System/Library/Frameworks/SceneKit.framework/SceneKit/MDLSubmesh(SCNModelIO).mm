@interface MDLSubmesh(SCNModelIO)
+ (id)submeshWithSCNGeometryElement:()SCNModelIO;
+ (id)submeshWithSCNGeometryElement:()SCNModelIO bufferAllocator:;
+ (id)submeshWithSCNGeometryElement:()SCNModelIO bufferAllocator:positionSourceChannel:;
+ (id)submeshWithUniquedIndexData:()SCNModelIO andSCNGeometryElement:bufferAllocator:;
+ (uint64_t)newSubmeshWithGeometryData:()SCNModelIO indexBufferLength:interleaved:channelCount:channelIdx:bytesPerIndex:indexType:geometryType:allocator:indexCount:topology:;
+ (uint64_t)newSubmeshWithSCNGeometryElement:()SCNModelIO bufferAllocator:positionSourceChannel:;
+ (uint64_t)newSubmeshWithUniquedIndexData:()SCNModelIO andSCNGeometryElement:bufferAllocator:;
@end

@implementation MDLSubmesh(SCNModelIO)

+ (id)submeshWithSCNGeometryElement:()SCNModelIO
{
  v3 = [self newSubmeshWithSCNGeometryElement:a3 bufferAllocator:0];

  return v3;
}

+ (id)submeshWithSCNGeometryElement:()SCNModelIO bufferAllocator:
{
  v1 = [self newSubmeshWithSCNGeometryElement:? bufferAllocator:?];

  return v1;
}

+ (id)submeshWithSCNGeometryElement:()SCNModelIO bufferAllocator:positionSourceChannel:
{
  v1 = [self newSubmeshWithSCNGeometryElement:? bufferAllocator:? positionSourceChannel:?];

  return v1;
}

+ (id)submeshWithUniquedIndexData:()SCNModelIO andSCNGeometryElement:bufferAllocator:
{
  v1 = [self newSubmeshWithUniquedIndexData:? andSCNGeometryElement:? bufferAllocator:?];

  return v1;
}

+ (uint64_t)newSubmeshWithGeometryData:()SCNModelIO indexBufferLength:interleaved:channelCount:channelIdx:bytesPerIndex:indexType:geometryType:allocator:indexCount:topology:
{
  v20 = a12;
  bytes = [a3 bytes];
  if (a6 >= 2 && a5)
  {
    v22 = bytes;
    v23 = [MEMORY[0x277CBEB28] dataWithLength:a4 / a6];
    mutableBytes = [v23 mutableBytes];
    if (a8 * a6 <= a4)
    {
      v25 = 0;
      do
      {
        if (a8 > 3)
        {
          if (a8 == 4)
          {
            *(mutableBytes + 4 * v25) = *(v22 + 4 * a7);
          }

          else if (a8 == 8)
          {
            *(mutableBytes + 8 * v25) = *(v22 + 8 * a7);
          }
        }

        else if (a8 == 1)
        {
          *(mutableBytes + v25) = *(v22 + a7);
        }

        else if (a8 == 2)
        {
          *(mutableBytes + 2 * v25) = *(v22 + 2 * a7);
        }

        ++v25;
        a7 += a6;
      }

      while (v25 < a4 / (a8 * a6));
    }

    v26 = a11;
    v27 = v23;
  }

  else
  {
    v27 = [a3 subdataWithRange:{objc_msgSend(a3, "length") / a6 * a7}];
    v26 = a11;
  }

  v28 = [v26 newBufferWithData:v27 type:2];
  v29 = [self alloc];
  if (!a12)
  {
    v20 = [v28 length] / a8;
  }

  v30 = [v29 initWithName:&stru_282DCC058 indexBuffer:v28 indexCount:v20 indexType:a9 geometryType:a10 material:0 topology:a13];

  return v30;
}

+ (uint64_t)newSubmeshWithUniquedIndexData:()SCNModelIO andSCNGeometryElement:bufferAllocator:
{
  bytesPerIndex = [a4 bytesPerIndex];
  primitiveCount = [a4 primitiveCount];
  if (+[MDLSubmesh(SCNModelIO) newSubmeshWithUniquedIndexData:andSCNGeometryElement:bufferAllocator:]::onceToken != -1)
  {
    +[MDLSubmesh(SCNModelIO) newSubmeshWithUniquedIndexData:andSCNGeometryElement:bufferAllocator:];
  }

  if (a5)
  {
    v11 = a5;
  }

  else
  {
    v11 = +[MDLSubmesh(SCNModelIO) newSubmeshWithUniquedIndexData:andSCNGeometryElement:bufferAllocator:]::defaultAllocator;
  }

  v12 = [v11 newBufferWithData:a3 type:2];
  bytesPerIndex2 = [a4 bytesPerIndex];
  v14 = 32;
  if (bytesPerIndex2 == 2)
  {
    v14 = 16;
  }

  if (bytesPerIndex2 == 1)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  if ([a4 primitiveType] == 1)
  {
    v16 = [[self alloc] initWithName:&stru_282DCC058 indexBuffer:v12 indexCount:objc_msgSend(a4 indexType:"primitiveCount") + 2 geometryType:v15 material:3 topology:{0, 0}];
LABEL_32:
    v24 = v16;
    goto LABEL_33;
  }

  if ([a4 primitiveType] != 4)
  {
    primitiveType = [a4 primitiveType];
    if (primitiveType > 3)
    {
      v27 = 0;
      v26 = 1;
    }

    else
    {
      v26 = qword_21C27F820[primitiveType];
      v27 = qword_21C27F840[primitiveType];
    }

    v16 = [[self alloc] initWithName:&stru_282DCC058 indexBuffer:v12 indexCount:objc_msgSend(a4 indexType:"primitiveCount") * v26 geometryType:v15 material:v27 topology:{0, 0}];
    goto LABEL_32;
  }

  v17 = [objc_msgSend(a4 "data")];
  v18 = [MEMORY[0x277CBEB28] dataWithLength:8 * primitiveCount];
  mutableBytes = [v18 mutableBytes];
  if (primitiveCount >= 1)
  {
    for (i = 0; primitiveCount != i; ++i)
    {
      if (bytesPerIndex > 3)
      {
        if (bytesPerIndex == 4)
        {
          LODWORD(v21) = *(v17 + 4 * i);
          goto LABEL_25;
        }

        if (bytesPerIndex == 8)
        {
          v21 = *(v17 + 8 * i);
          goto LABEL_25;
        }
      }

      else
      {
        if (bytesPerIndex == 1)
        {
          LOBYTE(v21) = *(v17 + i);
          goto LABEL_25;
        }

        if (bytesPerIndex == 2)
        {
          LOWORD(v21) = *(v17 + 2 * i);
LABEL_25:
          *(mutableBytes + i) = v21;
        }
      }
    }
  }

  v22 = objc_alloc_init(MEMORY[0x277CD7B50]);
  v23 = [objc_alloc(MEMORY[0x277CD7B10]) initWithType:2 data:v18];
  [v22 setFaceCount:primitiveCount];
  [v22 setFaceTopology:v23];
  v24 = [[self alloc] initWithName:&stru_282DCC058 indexBuffer:v12 indexCount:objc_msgSend(v12 indexType:"length") / bytesPerIndex geometryType:v15 material:5 topology:{0, v22}];

  v12 = v23;
LABEL_33:

  return v24;
}

+ (uint64_t)newSubmeshWithSCNGeometryElement:()SCNModelIO bufferAllocator:positionSourceChannel:
{
  hasInterleavedIndicesChannels = [a3 hasInterleavedIndicesChannels];
  indicesChannelCount = [a3 indicesChannelCount];
  bytesPerIndex = [a3 bytesPerIndex];
  primitiveCount = [a3 primitiveCount];
  v11 = [objc_msgSend(a3 "data")];
  {
    +[MDLSubmesh(SCNModelIO) newSubmeshWithSCNGeometryElement:bufferAllocator:positionSourceChannel:]::defaultAllocator = objc_opt_new();
  }

  if (a4)
  {
    v12 = a4;
  }

  else
  {
    v12 = +[MDLSubmesh(SCNModelIO) newSubmeshWithSCNGeometryElement:bufferAllocator:positionSourceChannel:]::defaultAllocator;
  }

  bytesPerIndex2 = [a3 bytesPerIndex];
  v14 = 32;
  if (bytesPerIndex2 == 2)
  {
    v14 = 16;
  }

  if (bytesPerIndex2 == 1)
  {
    v15 = 8;
  }

  else
  {
    v15 = v14;
  }

  if ([a3 primitiveType] == 1)
  {
    return [self newSubmeshWithGeometryData:objc_msgSend(a3 indexBufferLength:"data") interleaved:v11 channelCount:hasInterleavedIndicesChannels channelIdx:indicesChannelCount bytesPerIndex:a5 indexType:bytesPerIndex geometryType:v15 allocator:3 indexCount:v12 topology:{objc_msgSend(a3, "primitiveCount") + 2, 0}];
  }

  if ([a3 primitiveType] == 4)
  {
    v29 = a5;
    v17 = [objc_msgSend(a3 "data")];
    v18 = [MEMORY[0x277CBEB28] dataWithLength:primitiveCount];
    mutableBytes = [v18 mutableBytes];
    if (primitiveCount >= 1)
    {
      for (i = 0; primitiveCount != i; ++i)
      {
        if (bytesPerIndex > 3)
        {
          if (bytesPerIndex == 4)
          {
            LODWORD(v21) = *(v17 + 4 * i);
            goto LABEL_24;
          }

          if (bytesPerIndex == 8)
          {
            v21 = *(v17 + 8 * i);
            goto LABEL_24;
          }
        }

        else
        {
          if (bytesPerIndex == 1)
          {
            LOBYTE(v21) = *(v17 + i);
            goto LABEL_24;
          }

          if (bytesPerIndex == 2)
          {
            LOWORD(v21) = *(v17 + 2 * i);
LABEL_24:
            *(mutableBytes + i) = v21;
          }
        }
      }
    }

    v22 = [objc_msgSend(a3 "data")];
    v23 = objc_alloc_init(MEMORY[0x277CD7B50]);
    v24 = [objc_alloc(MEMORY[0x277CD7B10]) initWithType:2 data:v18];
    [v23 setFaceCount:primitiveCount];
    [v23 setFaceTopology:v24];
    v25 = [self newSubmeshWithGeometryData:v22 indexBufferLength:v11 interleaved:hasInterleavedIndicesChannels channelCount:indicesChannelCount channelIdx:v29 bytesPerIndex:bytesPerIndex indexType:v15 geometryType:5 allocator:v12 indexCount:0 topology:v23];

    return v25;
  }

  else
  {
    primitiveType = [a3 primitiveType];
    if (primitiveType > 3)
    {
      v28 = 0;
      v27 = 1;
    }

    else
    {
      v27 = qword_21C27F820[primitiveType];
      v28 = qword_21C27F840[primitiveType];
    }

    return [self newSubmeshWithGeometryData:objc_msgSend(a3 indexBufferLength:"data") interleaved:v11 channelCount:hasInterleavedIndicesChannels channelIdx:indicesChannelCount bytesPerIndex:a5 indexType:bytesPerIndex geometryType:v15 allocator:v28 indexCount:v12 topology:{objc_msgSend(a3, "primitiveCount") * v27, 0}];
  }
}

@end