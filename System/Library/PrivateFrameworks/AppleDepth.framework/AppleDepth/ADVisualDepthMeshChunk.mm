@interface ADVisualDepthMeshChunk
+ (ADVisualDepthMeshChunk)meshChunkWithVertices:(double)vertices faces:(double)faces confidence:(double)confidence classification:(uint64_t)classification transform:(uint64_t)transform uuid:(void *)uuid timestamp:(void *)timestamp longRange:(void *)self0;
+ (id)meshChunkWithVertices:(id)vertices faces:(id)faces confidence:(id)confidence classification:(id)classification uuid:(id)uuid timestamp:(double)timestamp;
+ (id)meshChunkWithVertices:(id)vertices faces:(id)faces confidence:(id)confidence classification:(id)classification uuid:(id)uuid timestamp:(double)timestamp longRange:(BOOL)range;
+ (id)meshChunkWithVertices:(uint64_t)vertices faces:(uint64_t)faces confidence:(uint64_t)confidence classification:(uint64_t)classification transform:(uint64_t)transform uuid:(uint64_t)uuid timestamp:(uint64_t)timestamp;
+ (id)meshChunkWithVerticesBuffer:(id)buffer verticesCount:(int64_t)count verticesOffset:(int64_t)offset verticesStride:(int64_t)stride facesBuffer:(id)facesBuffer facesCount:(int64_t)facesCount facesOffset:(int64_t)facesOffset facesStride:(int64_t)self0 uuid:(id)self1 timestamp:(double)self2;
+ (id)removedMeshChunkWithUuid:(id)uuid timestamp:(double)timestamp;
+ (id)removedMeshChunkWithUuid:(id)uuid timestamp:(double)timestamp longRange:(BOOL)range;
- (ADVisualDepthMeshChunk)init;
- (ADVisualDepthMeshChunk)initWithFile:(id)file;
- (ADVisualDepthMeshChunk)initWithVertices:(__n128)vertices faces:(__n128)faces confidence:(__n128)confidence classification:(double)classification transform:(uint64_t)transform uuid:(void *)uuid timestamp:(void *)timestamp longRange:(void *)self0;
- (BOOL)writeToFile:(id)file atomically:(BOOL)atomically;
- (__n128)setTransform:(__n128)transform;
@end

@implementation ADVisualDepthMeshChunk

- (__n128)setTransform:(__n128)transform
{
  result[4] = a2;
  result[5] = transform;
  result[6] = a4;
  result[7] = a5;
  return result;
}

- (BOOL)writeToFile:(id)file atomically:(BOOL)atomically
{
  v21 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  v6 = fopen([fileCopy UTF8String], "w");
  if (v6)
  {
    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    fprintf(v6, "#UUID: %s\n", [uUIDString UTF8String]);

    fprintf(v6, "#timestamp: %f\n", self->_timestamp);
    fprintf(v6, "#vertices count: %ld\n", [(ADVisualDepthGeometry *)self->_vertices count]);
    fprintf(v6, "#faces count: %ld\n", [(ADVisualDepthGeometry *)self->_faces count]);
    buffer = [(ADVisualDepthGeometry *)self->_vertices buffer];
    contents = [buffer contents];

    for (i = 0; i < [(ADVisualDepthGeometry *)self->_vertices count]; ++i)
    {
      offset = [(ADVisualDepthGeometry *)self->_vertices offset];
      stride = [(ADVisualDepthGeometry *)self->_vertices stride];
      fprintf(v6, "v %f %f %f\n", *(contents + offset + stride * i), *(contents + offset + stride * i + 4), *(contents + offset + stride * i + 8));
    }

    buffer2 = [(ADVisualDepthGeometry *)self->_faces buffer];
    contents2 = [buffer2 contents];

    for (j = 0; j < [(ADVisualDepthGeometry *)self->_faces count]; ++j)
    {
      offset2 = [(ADVisualDepthGeometry *)self->_faces offset];
      stride2 = [(ADVisualDepthGeometry *)self->_faces stride];
      fprintf(v6, "f %d %d %d\n", *(contents2 + offset2 + stride2 * j) + 1, *(contents2 + offset2 + stride2 * j + 4) + 1, *(contents2 + offset2 + stride2 * j + 8) + 1);
    }

    fclose(v6);
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v20 = fileCopy;
    _os_log_error_impl(&dword_2402F6000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "could not open %{public}@ for write", buf, 0xCu);
  }

  return v6 != 0;
}

- (ADVisualDepthMeshChunk)initWithFile:(id)file
{
  v68 = *MEMORY[0x277D85DE8];
  v62 = 0;
  fileCopy = file;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
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
        contents = [v23 contents];
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
          v30 = (contents + 12 * i);
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
        contents2 = [v28 contents];
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
          v43 = (contents2 + 12 * j);
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
          v5 = [(ADVisualDepthMeshChunk *)self initWithVertices:v41 faces:v46 confidence:0 classification:0 transform:uUID uuid:0 timestamp:*MEMORY[0x277D860B8] longRange:*(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), v9];
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
        uUID = v14;
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

- (ADVisualDepthMeshChunk)initWithVertices:(__n128)vertices faces:(__n128)faces confidence:(__n128)confidence classification:(double)classification transform:(uint64_t)transform uuid:(void *)uuid timestamp:(void *)timestamp longRange:(void *)self0
{
  uuidCopy = uuid;
  timestampCopy = timestamp;
  rangeCopy = range;
  v22 = a11;
  v23 = a12;
  v33.receiver = self;
  v33.super_class = ADVisualDepthMeshChunk;
  v24 = [(ADVisualDepthMeshChunk *)&v33 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_vertices, uuid);
    objc_storeStrong(&v25->_faces, timestamp);
    objc_storeStrong(&v25->_confidence, range);
    objc_storeStrong(&v25->_classification, a11);
    objc_storeStrong(&v25->_uuid, a12);
    v25->_timestamp = classification;
    *&v25[1].super.isa = a2;
    *&v25[1]._uuid = vertices;
    *&v25[1]._vertices = faces;
    *&v25[1]._confidence = confidence;
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

+ (id)removedMeshChunkWithUuid:(id)uuid timestamp:(double)timestamp
{
  timestamp = [ADVisualDepthMeshChunk meshChunkWithVertices:0 faces:0 confidence:0 classification:0 transform:uuid uuid:*MEMORY[0x277D860B8] timestamp:*(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), timestamp];

  return timestamp;
}

+ (id)removedMeshChunkWithUuid:(id)uuid timestamp:(double)timestamp longRange:(BOOL)range
{
  timestamp = [ADVisualDepthMeshChunk meshChunkWithVertices:0 faces:0 confidence:0 classification:0 transform:uuid uuid:range timestamp:*MEMORY[0x277D860B8] longRange:*(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), timestamp];

  return timestamp;
}

+ (id)meshChunkWithVerticesBuffer:(id)buffer verticesCount:(int64_t)count verticesOffset:(int64_t)offset verticesStride:(int64_t)stride facesBuffer:(id)facesBuffer facesCount:(int64_t)facesCount facesOffset:(int64_t)facesOffset facesStride:(int64_t)self0 uuid:(id)self1 timestamp:(double)self2
{
  v29 = *MEMORY[0x277D85DE8];
  bufferCopy = buffer;
  facesBufferCopy = facesBuffer;
  uuidCopy = uuid;
  v21 = [[ADVisualDepthGeometry alloc] initWithBuffer:bufferCopy count:count offset:offset stride:stride];
  v22 = [[ADVisualDepthGeometry alloc] initWithBuffer:facesBufferCopy count:facesCount offset:facesOffset stride:facesStride];
  if (v22 && v21)
  {
    timestamp = [ADVisualDepthMeshChunk meshChunkWithVertices:v21 faces:v22 confidence:0 classification:0 transform:uuidCopy uuid:*MEMORY[0x277D860B8] timestamp:*(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), timestamp];
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

    timestamp = 0;
  }

  return timestamp;
}

+ (ADVisualDepthMeshChunk)meshChunkWithVertices:(double)vertices faces:(double)faces confidence:(double)confidence classification:(uint64_t)classification transform:(uint64_t)transform uuid:(void *)uuid timestamp:(void *)timestamp longRange:(void *)self0
{
  uuidCopy = uuid;
  timestampCopy = timestamp;
  rangeCopy = range;
  v22 = a11;
  v23 = a12;
  confidence = [[ADVisualDepthMeshChunk alloc] initWithVertices:uuidCopy faces:timestampCopy confidence:rangeCopy classification:v22 transform:v23 uuid:a13 timestamp:self longRange:a2, vertices, faces, confidence];

  return confidence;
}

+ (id)meshChunkWithVertices:(uint64_t)vertices faces:(uint64_t)faces confidence:(uint64_t)confidence classification:(uint64_t)classification transform:(uint64_t)transform uuid:(uint64_t)uuid timestamp:(uint64_t)timestamp
{
  v7 = [ADVisualDepthMeshChunk meshChunkWithVertices:"meshChunkWithVertices:faces:confidence:classification:transform:uuid:timestamp:longRange:" faces:confidence confidence:classification classification:transform transform:uuid uuid:timestamp timestamp:0 longRange:?];

  return v7;
}

+ (id)meshChunkWithVertices:(id)vertices faces:(id)faces confidence:(id)confidence classification:(id)classification uuid:(id)uuid timestamp:(double)timestamp
{
  v8 = [ADVisualDepthMeshChunk meshChunkWithVertices:vertices faces:faces confidence:confidence classification:classification uuid:uuid timestamp:0 longRange:timestamp];

  return v8;
}

+ (id)meshChunkWithVertices:(id)vertices faces:(id)faces confidence:(id)confidence classification:(id)classification uuid:(id)uuid timestamp:(double)timestamp longRange:(BOOL)range
{
  rangeCopy = range;
  verticesCopy = vertices;
  facesCopy = faces;
  confidenceCopy = confidence;
  classificationCopy = classification;
  uuidCopy = uuid;
  v20 = [ADVisualDepthMeshChunk alloc];
  timestamp = [(ADVisualDepthMeshChunk *)v20 initWithVertices:verticesCopy faces:facesCopy confidence:confidenceCopy classification:classificationCopy transform:uuidCopy uuid:rangeCopy timestamp:*MEMORY[0x277D860B8] longRange:*(MEMORY[0x277D860B8] + 16), *(MEMORY[0x277D860B8] + 32), *(MEMORY[0x277D860B8] + 48), timestamp];

  return timestamp;
}

@end