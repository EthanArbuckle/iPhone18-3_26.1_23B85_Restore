@interface MDLObject(SCNModelIO)
+ (id)objectWithSCNNode:()SCNModelIO bufferAllocator:;
@end

@implementation MDLObject(SCNModelIO)

+ (id)objectWithSCNNode:()SCNModelIO bufferAllocator:
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = objc_alloc_init(self);
  v7 = objc_opt_new();
  [v6 setTransform:v7];

  if (a3)
  {
    [a3 transform];
    v9 = v39;
    LODWORD(v10) = v40.i32[0];
    v11 = v39.i32[3];
    v12 = v40.i32[1];
    v14 = v41.i32[0];
    v13 = v42;
    v15 = vextq_s8(v42, vtrn2q_s32(v41, v42), 4uLL);
    v16 = vzip2q_s64(v41, v40);
    v8 = vextq_s8(v9, v9, 8uLL);
    *v8.i8 = vext_s8(*v39.i8, *v8.i8, 4uLL);
  }

  else
  {
    v13 = 0uLL;
    v8.i64[0] = 0;
    v12 = 0;
    v14 = 0;
    LODWORD(v10) = 0;
    v11 = 0;
    v9 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
  }

  v17 = vextq_s8(vextq_s8(v9, v9, 4uLL), v8, 0xCuLL);
  v17.i32[3] = v11;
  HIDWORD(v10) = v12;
  v18 = vextq_s8(v15, v16, 8uLL);
  v18.i32[0] = v14;
  transform = [v6 transform];
  [transform setMatrix:{v34, v31, v33, v32}];
  [v6 setName:{objc_msgSend(a3, "name")}];
  objc_setAssociatedObject(v6, @"SCNSceneKitAssociatedObject", a3, 0x301);
  objc_setAssociatedObject(a3, @"SCNSceneKitAssociatedObject", v6, 0);
  camera = [a3 camera];
  if (camera)
  {
    [v6 addChild:{objc_msgSend(MEMORY[0x277CD7AD8], "cameraWithSCNCamera:", camera)}];
  }

  light = [a3 light];
  if (light)
  {
    v22 = light;
    if ([objc_msgSend(light "type")])
    {
      v23 = [MEMORY[0x277CD7AE8] lightProbeWithSCNLight:v22 node:a3];
    }

    else
    {
      v23 = [MEMORY[0x277CD7AE0] lightWithSCNLight:v22];
    }

    [v6 addChild:v23];
  }

  geometry = [a3 geometry];
  if (geometry)
  {
    [v6 addChild:{objc_msgSend(MEMORY[0x277CD7B00], "meshWithSCNGeometry:bufferAllocator:", geometry, a4)}];
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  childNodes = [a3 childNodes];
  v26 = [childNodes countByEnumeratingWithState:&v35 objects:v43 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v36;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v36 != v28)
        {
          objc_enumerationMutation(childNodes);
        }

        [v6 addChild:{objc_msgSend(MEMORY[0x277CD7B18], "objectWithSCNNode:bufferAllocator:", *(*(&v35 + 1) + 8 * i), a4)}];
      }

      v27 = [childNodes countByEnumeratingWithState:&v35 objects:v43 count:16];
    }

    while (v27);
  }

  return v6;
}

@end