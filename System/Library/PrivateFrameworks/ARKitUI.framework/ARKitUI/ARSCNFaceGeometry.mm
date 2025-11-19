@interface ARSCNFaceGeometry
+ (ARSCNFaceGeometry)faceGeometryWithDevice:(id)a3 eyesFilled:(BOOL)a4 mouthFilled:(BOOL)a5;
- (void)updateFromFaceGeometry:(ARFaceGeometry *)faceGeometry;
@end

@implementation ARSCNFaceGeometry

+ (ARSCNFaceGeometry)faceGeometryWithDevice:(id)a3 eyesFilled:(BOOL)a4 mouthFilled:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v32[3] = *MEMORY[0x277D85DE8];
  v7 = a3;
  if ([MEMORY[0x277CE5288] isSupported])
  {
    v8 = objc_alloc(MEMORY[0x277CE5278]);
    v9 = [v8 initWithBlendShapes:MEMORY[0x277CBEC10]];
    v31 = [v7 newBufferWithBytes:objc_msgSend(v9 length:"vertices") options:{16 * objc_msgSend(v9, "vertexCount"), 0}];
    v30 = [MEMORY[0x277CDBA78] geometrySourceWithBuffer:v31 vertexFormat:30 semantic:*MEMORY[0x277CDBB38] vertexCount:objc_msgSend(v9 dataOffset:"vertexCount") dataStride:0, 16];
    v29 = [v7 newBufferWithBytes:objc_msgSend(v9 length:"textureCoordinates") options:{8 * objc_msgSend(v9, "textureCoordinateCount"), 0}];
    v28 = [MEMORY[0x277CDBA78] geometrySourceWithBuffer:v29 vertexFormat:29 semantic:*MEMORY[0x277CDBB30] vertexCount:objc_msgSend(v9 dataOffset:"textureCoordinateCount") dataStride:0, 8];
    v27 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:objc_msgSend(v9 length:"triangleIndices") freeWhenDone:{6 * objc_msgSend(v9, "triangleCount"), 0}];
    v10 = [MEMORY[0x277CDBA70] geometryElementWithData:v27 primitiveType:0 primitiveCount:objc_msgSend(v9 bytesPerIndex:{"triangleCount"), 2}];
    v11 = [v7 newBufferWithBytes:objc_msgSend(v9 length:"normals") options:{16 * objc_msgSend(v9, "normalCount"), 0}];
    v12 = [MEMORY[0x277CDBA78] geometrySourceWithBuffer:v11 vertexFormat:30 semantic:*MEMORY[0x277CDBB28] vertexCount:objc_msgSend(v9 dataOffset:"vertexCount") dataStride:0, 16];
    v26 = v10;
    v13 = [MEMORY[0x277CBEB18] arrayWithObject:v10];
    if (v6)
    {
      v14 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&ar_faceTriangleIndicesLeftEye length:132 freeWhenDone:0];
      v15 = [MEMORY[0x277CDBA70] geometryElementWithData:v14 primitiveType:0 primitiveCount:22 bytesPerIndex:2];
      [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&ar_faceTriangleIndicesRightEye length:132 freeWhenDone:0];
      v17 = v16 = v5;
      v18 = [MEMORY[0x277CDBA70] geometryElementWithData:v17 primitiveType:0 primitiveCount:22 bytesPerIndex:2];
      [v13 addObject:v15];
      [v13 addObject:v18];

      v5 = v16;
    }

    if (v5)
    {
      v19 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:&ar_faceTriangleIndicesMouth length:204 freeWhenDone:0];
      v20 = [MEMORY[0x277CDBA70] geometryElementWithData:v19 primitiveType:0 primitiveCount:34 bytesPerIndex:2];
      [v13 addObject:v20];
    }

    v32[0] = v30;
    v32[1] = v12;
    v32[2] = v28;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:3];
    v22 = [v13 copy];
    v23 = [(SCNGeometry *)ARSCNFaceGeometry geometryWithSources:v21 elements:v22];

    [v23 setVertexBuffer:v31];
    [v23 setNormalBuffer:v11];
    [v23 setTextureBuffer:v29];
  }

  else
  {
    v23 = 0;
  }

  v24 = *MEMORY[0x277D85DE8];

  return v23;
}

- (void)updateFromFaceGeometry:(ARFaceGeometry *)faceGeometry
{
  v4 = faceGeometry;
  [(ARFaceGeometry *)v4 vertexCount];
  kdebug_trace();
  v5 = [(ARSCNFaceGeometry *)self vertexBuffer];
  memcpy([v5 contents], -[ARFaceGeometry vertices](v4, "vertices"), 16 * -[ARFaceGeometry vertexCount](v4, "vertexCount"));

  v6 = [(ARSCNFaceGeometry *)self normalBuffer];
  v7 = [v6 contents];
  v8 = [(ARFaceGeometry *)v4 normals];
  v9 = [(ARFaceGeometry *)v4 normalCount];

  memcpy(v7, v8, 16 * v9);

  kdebug_trace();
}

@end