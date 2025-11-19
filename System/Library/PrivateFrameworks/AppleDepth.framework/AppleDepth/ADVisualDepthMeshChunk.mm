@interface ADVisualDepthMeshChunk
+ (ADVisualDepthMeshChunk)meshChunkWithVertices:(double)a3 faces:(double)a4 confidence:(double)a5 classification:(uint64_t)a6 transform:(uint64_t)a7 uuid:(void *)a8 timestamp:(void *)a9 longRange:(void *)a10;
+ (id)meshChunkWithVertices:(id)a3 faces:(id)a4 confidence:(id)a5 classification:(id)a6 uuid:(id)a7 timestamp:(double)a8;
+ (id)meshChunkWithVertices:(id)a3 faces:(id)a4 confidence:(id)a5 classification:(id)a6 uuid:(id)a7 timestamp:(double)a8 longRange:(BOOL)a9;
+ (id)meshChunkWithVertices:(uint64_t)a1 faces:(uint64_t)a2 confidence:(uint64_t)a3 classification:(uint64_t)a4 transform:(uint64_t)a5 uuid:(uint64_t)a6 timestamp:(uint64_t)a7;
+ (id)meshChunkWithVerticesBuffer:(id)a3 verticesCount:(int64_t)a4 verticesOffset:(int64_t)a5 verticesStride:(int64_t)a6 facesBuffer:(id)a7 facesCount:(int64_t)a8 facesOffset:(int64_t)a9 facesStride:(int64_t)a10 uuid:(id)a11 timestamp:(double)a12;
+ (id)removedMeshChunkWithUuid:(id)a3 timestamp:(double)a4;
+ (id)removedMeshChunkWithUuid:(id)a3 timestamp:(double)a4 longRange:(BOOL)a5;
- (ADVisualDepthMeshChunk)init;
- (ADVisualDepthMeshChunk)initWithFile:(id)a3;
- (ADVisualDepthMeshChunk)initWithVertices:(__n128)a3 faces:(__n128)a4 confidence:(__n128)a5 classification:(double)a6 transform:(uint64_t)a7 uuid:(void *)a8 timestamp:(void *)a9 longRange:(void *)a10;
- (BOOL)writeToFile:(id)a3 atomically:(BOOL)a4;
- (__n128)setTransform:(__n128)a3;
@end

@implementation ADVisualDepthMeshChunk

- (__n128)setTransform:(__n128)a3
{
  result[4] = a2;
  result[5] = a3;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (BOOL)writeToFile:(id)a3 atomically:(BOOL)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = fopen([v5 UTF8String], "w");
  if (v6)
  {
    v7 = [(NSUUID *)self->_uuid UUIDString];
    fprintf(v6, "#UUID: %s\n", [v7 UTF8String]);

    fprintf(v6, "#timestamp: %f\n", self->_timestamp);
    fprintf(v6, "#vertices count: %ld\n", [(ADVisualDepthGeometry *)self->_vertices count]);
    fprintf(v6, "#faces count: %ld\n", [(ADVisualDepthGeometry *)self->_faces count]);
    v8 = [(ADVisualDepthGeometry *)self->_vertices buffer];
    v9 = [v8 contents];

    for (i = 0; i < [(ADVisualDepthGeometry *)self->_vertices count]; ++i)
    {
      v11 = [(ADVisualDepthGeometry *)self->_vertices offset];
      v12 = [(ADVisualDepthGeometry *)self->_vertices stride];
      fprintf(v6, "v %f %f %f\n", *(v9 + v11 + v12 * i), *(v9 + v11 + v12 * i + 4), *(v9 + v11 + v12 * i + 8));
    }

    v13 = [(ADVisualDepthGeometry *)self->_faces buffer];
    v14 = [v13 contents];

    for (j = 0; j < [(ADVisualDepthGeometry *)self->_faces count]; ++j)
    {
      v16 = [(ADVisualDepthGeometry *)self->_faces offset];
      v17 = [(ADVisualDepthGeometry *)self->_faces stride];
      fprintf(v6, "f %d %d %d\n", *(v14 + v16 + v17 * j) + 1, *(v14 + v16 + v17 * j + 4) + 1, *(v14 + v16 + v17 * j + 8) + 1);
    }

    fclose(v6);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v20 = v5;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "could not open %{public}@ for write", buf, 0xCu);
  }

  return v6 != 0;
}

- (ADVisualDepthMeshChunk)initWithFile:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v62 = 0;
  v51 = a3;
  v54 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:? encoding:? error:?];
  v3 = 0;
  v52 = v3;
  if (!v3)
  {
    v50 = [v54 componentsSeparatedByString:@"\n"];
    if ([v50 count] <= 1)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error parsing obj file: seems empty", buf, 2u);
      }

      v5 = 0;
LABEL_57:

      goto LABEL_58;
    }

    v56 = objc_opt_new();
    v55 = objc_opt_new();
    v57 = [MEMORY[0x277CCAD78] UUID];
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v6 = v50;
    v7 = [v6 countByEnumeratingWithState:&v58 objects:v67 count:16];
    if (!v7)
    {
      v9 = 0.0;
LABEL_28:

      if ([v56 count] >= 2 && objc_msgSend(v55, "count"))
      {
        v22 = MTLCreateSystemDefaultDevice();
        v23 = [v22 newBufferWithLength:12 * objc_msgSend(v56 options:{"count"), 0}];
        v24 = v23;
        v25 = [v23 contents];
        for (i = 0; [v56 count] > i; ++i)
        {
          v27 = [v56 objectAtIndexedSubscript:i];
          v28 = [v27 componentsSeparatedByString:@" "];

          if ([v28 count] != 4)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "bad vertex format", buf, 2u);
            }

            v5 = 0;
            goto LABEL_55;
          }

          v29 = [v28 objectAtIndexedSubscript:1];
          [v29 floatValue];
          v30 = (v25 + 12 * i);
          *v30 = v31;

          v32 = [v28 objectAtIndexedSubscript:2];
          [v32 floatValue];
          v30[1] = v33;

          v34 = [v28 objectAtIndexedSubscript:3];
          [v34 floatValue];
          v30[2] = v35;
        }

        v28 = [v22 newBufferWithLength:12 * objc_msgSend(v55 options:{"count"), 0}];
        v37 = v28;
        v38 = [v28 contents];
        for (j = 0; [v55 count] > j; ++j)
        {
          v40 = [v55 objectAtIndexedSubscript:j];
          v41 = [v40 componentsSeparatedByString:@" "];

          if ([(ADVisualDepthGeometry *)v41 count]!= 4)
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "non-triangle vertices not supported", buf, 2u);
            }

            v5 = 0;
            goto LABEL_54;
          }

          v42 = [(ADVisualDepthGeometry *)v41 objectAtIndexedSubscript:1];
          v43 = (v38 + 12 * j);
          *v43 = [v42 integerValue] - 1;

          v44 = [(ADVisualDepthGeometry *)v41 objectAtIndexedSubscript:2];
          v43[1] = [v44 integerValue] - 1;

          v45 = [(ADVisualDepthGeometry *)v41 objectAtIndexedSubscript:3];
          v43[2] = [v45 integerValue] - 1;
        }

        v41 = -[ADVisualDepthGeometry initWithBuffer:count:offset:stride:]([ADVisualDepthGeometry alloc], "initWithBuffer:count:offset:stride:", v23, [v56 count], 0, 12);
        v46 = -[ADVisualDepthGeometry initWithBuffer:count:offset:stride:]([ADVisualDepthGeometry alloc], "initWithBuffer:count:offset:stride:", v28, [v55 count], 0, 12);
        if (v46 && v41)
        {
          v5 = [(ADVisualDepthMeshChunk *)self initWithVertices:v41 faces:v46 confidence:0 classification:0 transform:v57 uuid:0 timestamp:*MEMORY[0x277D860B8] longRange:*(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), v9];
          self = v5;
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            vertices = self->_vertices;
            faces = self->_faces;
            *buf = 134218240;
            v64 = faces;
            v65 = 2048;
            v66 = vertices;
            _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed allocating mesh chunk. faces:%p vertices:%p", buf, 0x16u);
          }

          v5 = 0;
        }

LABEL_54:
LABEL_55:
      }

      else
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error parsing obj file: not enough vertices and faces", buf, 2u);
        }

        v5 = 0;
      }

      goto LABEL_57;
    }

    v8 = *v59;
    v9 = 0.0;
LABEL_11:
    v10 = 0;
    while (1)
    {
      if (*v59 != v8)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v58 + 1) + 8 * v10);
      if ([v11 hasPrefix:@"#UUID:"])
      {
        v12 = [v11 componentsSeparatedByString:@":"];
        v13 = [v12 objectAtIndexedSubscript:1];

        v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v13];
        v57 = v14;
      }

      else
      {
        if (![v11 hasPrefix:@"#timestamp:"])
        {
          v17 = [v11 hasPrefix:@"v "];
          v18 = v56;
          if (v17 & 1) != 0 || (v19 = [v11 hasPrefix:@"vertex "], v18 = v56, (v19) || (v20 = objc_msgSend(v11, "hasPrefix:", @"f "), v18 = v55, (v20) || (v21 = objc_msgSend(v11, "hasPrefix:", @"face "), v18 = v55, v21))
          {
            [v18 addObject:v11];
          }

          goto LABEL_13;
        }

        v15 = [v11 componentsSeparatedByString:@":"];
        v13 = [v15 objectAtIndexedSubscript:1];

        [v13 doubleValue];
        v9 = v16;
      }

LABEL_13:
      if (v7 == ++v10)
      {
        v7 = [v6 countByEnumeratingWithState:&v58 objects:v67 count:16];
        if (!v7)
        {
          goto LABEL_28;
        }

        goto LABEL_11;
      }
    }
  }

  v4 = v3;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v36 = [v4 description];
    *buf = 138543362;
    v64 = v36;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "error opening mesh chunk file: %{public}@", buf, 0xCu);
  }

  v5 = 0;
LABEL_58:

  return v5;
}

- (ADVisualDepthMeshChunk)initWithVertices:(__n128)a3 faces:(__n128)a4 confidence:(__n128)a5 classification:(double)a6 transform:(uint64_t)a7 uuid:(void *)a8 timestamp:(void *)a9 longRange:(void *)a10
{
  v32 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v33.receiver = a1;
  v33.super_class = ADVisualDepthMeshChunk;
  v24 = [(ADVisualDepthMeshChunk *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_vertices, a8);
    objc_storeStrong(&v25->_faces, a9);
    objc_storeStrong(&v25->_confidence, a10);
    objc_storeStrong(&v25->_classification, a11);
    objc_storeStrong(&v25->_uuid, a12);
    v25->_timestamp = a6;
    *&v25[1].super.isa = a2;
    *&v25[1]._uuid = a3;
    *&v25[1]._vertices = a4;
    *&v25[1]._confidence = a5;
    v25->_longRange = a13;
  }

  return v25;
}

- (ADVisualDepthMeshChunk)init
{
  v10.receiver = self;
  v10.super_class = ADVisualDepthMeshChunk;
  v2 = [(ADVisualDepthMeshChunk *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    vertices = v2->_vertices;
    v2->_vertices = v3;

    v5 = objc_opt_new();
    faces = v2->_faces;
    v2->_faces = v5;

    v7 = objc_opt_new();
    confidence = v2->_confidence;
    v2->_confidence = v7;

    v2->_timestamp = 0.0;
    v2->_longRange = 0;
  }

  return v2;
}

+ (id)removedMeshChunkWithUuid:(id)a3 timestamp:(double)a4
{
  v4 = [ADVisualDepthMeshChunk meshChunkWithVertices:0 faces:0 confidence:0 classification:0 transform:a3 uuid:*MEMORY[0x277D860B8] timestamp:*(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), a4];

  return v4;
}

+ (id)removedMeshChunkWithUuid:(id)a3 timestamp:(double)a4 longRange:(BOOL)a5
{
  v5 = [ADVisualDepthMeshChunk meshChunkWithVertices:0 faces:0 confidence:0 classification:0 transform:a3 uuid:a5 timestamp:*MEMORY[0x277D860B8] longRange:*(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), a4];

  return v5;
}

+ (id)meshChunkWithVerticesBuffer:(id)a3 verticesCount:(int64_t)a4 verticesOffset:(int64_t)a5 verticesStride:(int64_t)a6 facesBuffer:(id)a7 facesCount:(int64_t)a8 facesOffset:(int64_t)a9 facesStride:(int64_t)a10 uuid:(id)a11 timestamp:(double)a12
{
  v29 = *MEMORY[0x277D85DE8];
  v18 = a3;
  v19 = a7;
  v20 = a11;
  v21 = [[ADVisualDepthGeometry alloc] initWithBuffer:v18 count:a4 offset:a5 stride:a6];
  v22 = [[ADVisualDepthGeometry alloc] initWithBuffer:v19 count:a8 offset:a9 stride:a10];
  if (v22 && v21)
  {
    v23 = [ADVisualDepthMeshChunk meshChunkWithVertices:v21 faces:v22 confidence:0 classification:0 transform:v20 uuid:*MEMORY[0x277D860B8] timestamp:*(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), a12];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v25 = 134218240;
      v26 = v22;
      v27 = 2048;
      v28 = v21;
      _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed allocating mesh chunk. faces:%p vertices:%p", &v25, 0x16u);
    }

    v23 = 0;
  }

  return v23;
}

+ (ADVisualDepthMeshChunk)meshChunkWithVertices:(double)a3 faces:(double)a4 confidence:(double)a5 classification:(uint64_t)a6 transform:(uint64_t)a7 uuid:(void *)a8 timestamp:(void *)a9 longRange:(void *)a10
{
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v24 = [[ADVisualDepthMeshChunk alloc] initWithVertices:v19 faces:v20 confidence:v21 classification:v22 transform:v23 uuid:a13 timestamp:a1 longRange:a2, a3, a4, a5];

  return v24;
}

+ (id)meshChunkWithVertices:(uint64_t)a1 faces:(uint64_t)a2 confidence:(uint64_t)a3 classification:(uint64_t)a4 transform:(uint64_t)a5 uuid:(uint64_t)a6 timestamp:(uint64_t)a7
{
  v7 = [ADVisualDepthMeshChunk meshChunkWithVertices:"meshChunkWithVertices:faces:confidence:classification:transform:uuid:timestamp:longRange:" faces:a3 confidence:a4 classification:a5 transform:a6 uuid:a7 timestamp:0 longRange:?];

  return v7;
}

+ (id)meshChunkWithVertices:(id)a3 faces:(id)a4 confidence:(id)a5 classification:(id)a6 uuid:(id)a7 timestamp:(double)a8
{
  v8 = [ADVisualDepthMeshChunk meshChunkWithVertices:a3 faces:a4 confidence:a5 classification:a6 uuid:a7 timestamp:0 longRange:a8];

  return v8;
}

+ (id)meshChunkWithVertices:(id)a3 faces:(id)a4 confidence:(id)a5 classification:(id)a6 uuid:(id)a7 timestamp:(double)a8 longRange:(BOOL)a9
{
  v9 = a9;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = [ADVisualDepthMeshChunk alloc];
  v21 = [(ADVisualDepthMeshChunk *)v20 initWithVertices:v15 faces:v16 confidence:v17 classification:v18 transform:v19 uuid:v9 timestamp:*MEMORY[0x277D860B8] longRange:*(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), a8];

  return v21;
}

@end