@interface GIFBuilder
+ (id)builderWithContext:(id)a3 forURL:(id)a4 maxRes:(unint64_t)a5 fps:(float)a6;
- (BOOL)addImage:(id)a3;
- (BOOL)finish;
- (GIFBuilder)initWithContext:(id)a3 forURL:(id)a4 maxRes:(unint64_t)a5 fps:(float)a6;
- (void)dealloc;
@end

@implementation GIFBuilder

+ (id)builderWithContext:(id)a3 forURL:(id)a4 maxRes:(unint64_t)a5 fps:(float)a6
{
  v9 = a4;
  v10 = a3;
  v11 = [GIFBuilder alloc];
  *&v12 = a6;
  v13 = [(GIFBuilder *)v11 initWithContext:v10 forURL:v9 maxRes:a5 fps:v12];

  return v13;
}

- (GIFBuilder)initWithContext:(id)a3 forURL:(id)a4 maxRes:(unint64_t)a5 fps:(float)a6
{
  v33[1] = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = v12;
  if (!v11)
  {
    NSLog(&cfstr_GifbuilderNilC.isa);
LABEL_7:
    v24 = 0;
    goto LABEL_10;
  }

  if (!v12)
  {
    NSLog(&cfstr_GifbuilderNilG.isa);
    goto LABEL_7;
  }

  objc_storeStrong(&self->_ciCtx, a3);
  self->_maxRes = a5;
  v14 = *MEMORY[0x277CD31C8];
  v32 = *MEMORY[0x277CD31C8];
  v15 = *MEMORY[0x277CD31D8];
  v30[0] = *MEMORY[0x277CD31E0];
  v30[1] = v15;
  v31[0] = &unk_285384E90;
  v31[1] = MEMORY[0x277CBEC28];
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  v33[0] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];

  v18 = CGImageDestinationCreateWithURL(v13, *MEMORY[0x277CC2088], 0, 0);
  self->_imgDest = v18;
  if (v18)
  {
    CGImageDestinationSetProperties(v18, v17);
    v28 = v14;
    v26 = *MEMORY[0x277CD31C0];
    *&v19 = 1.0 / a6;
    v20 = [MEMORY[0x277CCABB0] numberWithFloat:v19];
    v27 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    v29 = v21;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    frameProperties = self->_frameProperties;
    self->_frameProperties = v22;

    v24 = self;
  }

  else
  {
    NSLog(&cfstr_GifbuilderCgim.isa);
    v24 = 0;
  }

LABEL_10:
  return v24;
}

- (void)dealloc
{
  imgDest = self->_imgDest;
  if (imgDest)
  {
    CFRelease(imgDest);
  }

  v4.receiver = self;
  v4.super_class = GIFBuilder;
  [(GIFBuilder *)&v4 dealloc];
}

- (BOOL)addImage:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    [v4 extent];
    v7 = v6;
    [v5 extent];
    maxRes = self->_maxRes;
    v10 = v7 / v8;
    if (v7 <= v8)
    {
      if (v8 >= maxRes)
      {
        v13 = self->_maxRes;
      }

      else
      {
        v13 = v8;
      }

      v15 = v10 * v13;
      v11 = roundf(v15);
    }

    else
    {
      if (v7 >= maxRes)
      {
        v11 = self->_maxRes;
      }

      else
      {
        v11 = v7;
      }

      v12 = v11 / v10;
      v13 = roundf(v12);
    }

    v16 = v13 / v8;
    v17 = [MEMORY[0x277CBF750] filterWithName:@"CILanczosScaleTransform"];
    [v17 setDefaults];
    [v17 setValue:v5 forKey:*MEMORY[0x277CBFAF0]];
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v16];
    [v17 setValue:v18 forKey:*MEMORY[0x277CBFB18]];
    v19 = [v17 outputImage];
    v20 = [(CIContext *)self->_ciCtx createCGImage:v19 fromRect:0.0, 0.0, v11, v13];
    v14 = v20 != 0;
    if (v20)
    {
      v21 = v20;
      CGImageDestinationAddImage(self->_imgDest, v20, self->_frameProperties);
      CGImageRelease(v21);
    }

    else
    {
      NSLog(&cfstr_GifbuilderAddi_0.isa);
    }
  }

  else
  {
    NSLog(&cfstr_GifbuilderAddi.isa);
    v14 = 0;
  }

  return v14;
}

- (BOOL)finish
{
  v2 = CGImageDestinationFinalize(self->_imgDest);
  if (!v2)
  {
    NSLog(&cfstr_GifbuilderFini.isa);
  }

  return v2;
}

@end