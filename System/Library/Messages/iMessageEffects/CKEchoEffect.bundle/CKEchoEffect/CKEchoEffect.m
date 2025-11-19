@interface CKEchoEffect
- (CKEchoEffect)init;
- (id)soundEffectFileURL;
@end

@implementation CKEchoEffect

- (CKEchoEffect)init
{
  v36.receiver = self;
  v36.super_class = CKEchoEffect;
  v2 = [(CKEchoEffect *)&v36 init];
  if (v2)
  {
    v3 = [CAFilter filterWithType:kCAFilterColorMatrix];
    v25 = 1065353216;
    v27 = 0;
    v26 = 0;
    v28 = 0x3F80000000000000;
    v30 = 0;
    v29 = 0;
    v31 = 0x3F80000000000000;
    v33 = 0;
    v32 = 0;
    v34 = 0;
    v35 = 1065353216;
    [NSValue valueWithCAColorMatrix:&v25];
    v4 = v24 = v2;
    [v3 setValue:v4 forKey:@"inputColorMatrix"];

    v5 = objc_alloc_init(CKFullscreenEffectMessageFilter);
    [v5 setType:0];
    v23 = v5;
    [v5 setDirection:1];
    v45 = v3;
    v6 = [NSArray arrayWithObjects:&v45 count:1];
    [v5 setBalloonFilters:v6];

    v7 = objc_alloc_init(CKFullscreenEffectMessageFilter);
    [v7 setType:0];
    [v7 setDirection:2];
    v44 = v3;
    v8 = [NSArray arrayWithObjects:&v44 count:1];
    [v7 setBalloonFilters:v8];

    v22 = objc_alloc_init(CKFullscreenEffectMessageFilter);
    [v22 setType:999];
    v43 = v3;
    v9 = [NSArray arrayWithObjects:&v43 count:1];
    [v22 setBalloonFilters:v9];

    v21 = objc_alloc_init(CKFullscreenEffectMessageFilter);
    [v21 setType:4];
    v42 = v3;
    v10 = [NSArray arrayWithObjects:&v42 count:1];
    [v21 setBalloonFilters:v10];

    v20 = objc_alloc_init(CKFullscreenEffectMessageFilter);
    [v20 setType:1];
    v41 = v3;
    v11 = [NSArray arrayWithObjects:&v41 count:1];
    [v20 setBalloonFilters:v11];

    v12 = objc_alloc_init(CKFullscreenEffectMessageFilter);
    [v12 setType:5];
    v40 = v3;
    v13 = [NSArray arrayWithObjects:&v40 count:1];
    [v12 setBalloonFilters:v13];

    v14 = objc_alloc_init(CKFullscreenEffectMessageFilter);
    [v14 setType:2];
    v39 = v3;
    v15 = [NSArray arrayWithObjects:&v39 count:1];
    [v14 setBalloonFilters:v15];

    v16 = objc_alloc_init(CKFullscreenEffectMessageFilter);
    [v16 setType:3];
    v38 = v3;
    v17 = [NSArray arrayWithObjects:&v38 count:1];
    [v16 setBalloonFilters:v17];

    v37[0] = v23;
    v37[1] = v7;
    v37[2] = v22;
    v37[3] = v21;
    v37[4] = v20;
    v37[5] = v12;
    v37[6] = v14;
    v37[7] = v16;
    v2 = v24;
    v18 = [NSArray arrayWithObjects:v37 count:8];
    [(CKEchoEffect *)v24 setFilters:v18];
  }

  return v2;
}

- (id)soundEffectFileURL
{
  messageOrientation = self->_messageOrientation;
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = v3;
  if (messageOrientation)
  {
    v5 = @"EchoSoundEffect_sent";
  }

  else
  {
    v5 = @"EchoSoundEffect_received";
  }

  v6 = [v3 URLForResource:v5 withExtension:@"m4r"];
  v7 = qword_C848;
  qword_C848 = v6;

  v8 = qword_C848;

  return v8;
}

@end