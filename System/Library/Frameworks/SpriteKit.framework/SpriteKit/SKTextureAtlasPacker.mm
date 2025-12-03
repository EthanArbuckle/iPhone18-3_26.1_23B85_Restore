@interface SKTextureAtlasPacker
+ (CGImage)copyProcessedImageSource:(id)source;
- (BOOL)isFullyOpaque:(CGImage *)opaque;
- (CGImage)copyRotateCGImage:(CGImage *)image direction:(BOOL)direction;
- (CGRect)calcNonAlphaArea:(CGImage *)area;
- (id)generateMetaData;
- (id)getTextureFileList:(id)list modDate:(id *)date;
- (id)partitionTextureFilesByResolution:(id)resolution;
- (id)processPackedTextureAtlas:(const void *)atlas suffix:(id)suffix packer:(shared_ptr<MaxRectTexturePacker>)packer sortedTrimArray:(const void *)array sortedTextureArray:(const void *)textureArray;
- (void)generateTextureAtlasImages:(id)images outputDictionary:(id *)dictionary forcePOT:(BOOL)t;
@end

@implementation SKTextureAtlasPacker

- (CGImage)copyRotateCGImage:(CGImage *)image direction:(BOOL)direction
{
  directionCopy = direction;
  Width = CGImageGetWidth(image);
  Height = CGImageGetHeight(image);
  v8 = malloc_type_malloc(vcvtd_n_u64_f64(Width * Height, 2uLL), 0x100004077774924uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v10 = CGBitmapContextCreate(v8, Height, Width, 8uLL, vcvtd_n_u64_f64(Height, 2uLL), DeviceRGB, 0x4001u);
  CGColorSpaceRelease(DeviceRGB);
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = Height;
  v18.size.height = Width;
  CGContextClearRect(v10, v18);
  v11 = 1.0;
  if (directionCopy)
  {
    v12 = -1.0;
  }

  else
  {
    v12 = 1.0;
  }

  if (directionCopy)
  {
    v13 = 0.0;
  }

  else
  {
    v11 = -1.0;
    v13 = Height;
  }

  v17.a = 0.0;
  v17.b = v12;
  v17.c = v11;
  if (directionCopy)
  {
    v14 = Width;
  }

  else
  {
    v14 = 0.0;
  }

  v17.d = 0.0;
  v17.tx = v13;
  v17.ty = v14;
  CGContextConcatCTM(v10, &v17);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = Width;
  v19.size.height = Height;
  CGContextDrawImage(v10, v19, image);
  Image = CGBitmapContextCreateImage(v10);
  CGContextRelease(v10);
  free(v8);
  return Image;
}

- (CGRect)calcNonAlphaArea:(CGImage *)area
{
  ColorSpace = CGImageGetColorSpace(area);
  Model = CGColorSpaceGetModel(ColorSpace);
  v6 = *MEMORY[0x277CBF3A0];
  v7 = *(MEMORY[0x277CBF3A0] + 8);
  Width = CGImageGetWidth(area);
  v9 = Width;
  Height = CGImageGetHeight(area);
  v11 = v6;
  v12 = Height;
  v13 = v7;
  v14 = Width;
  v15 = Height;
  if (Model != kCGColorSpaceModelIndexed)
  {
    v16 = Height;
    v17 = malloc_type_malloc((v9 * v12), 0x100004077774924uLL);
    v18 = v9;
    v19 = CGBitmapContextCreate(v17, v9, v12, 8uLL, v9, 0, 7u);
    v51.origin.x = 0.0;
    v51.origin.y = 0.0;
    v51.size.width = Width;
    v51.size.height = v12;
    CGContextClearRect(v19, v51);
    v52.origin.x = 0.0;
    v52.origin.y = 0.0;
    v52.size.width = Width;
    v52.size.height = v12;
    CGContextDrawImage(v19, v52, area);
    v13 = v7;
    v15 = v12;
    if (v16)
    {
      v20 = 0;
      v21 = v17;
      v15 = v12;
      v13 = v7;
      while (!Width)
      {
LABEL_8:
        v13 = v13 + 1.0;
        v15 = v15 + -1.0;
        ++v20;
        v21 += v18;
        if (v20 >= v12)
        {
          goto LABEL_9;
        }
      }

      v22 = 1;
      v23 = v21;
      while (!*v23++)
      {
        v25 = v22++;
        if (v25 >= v9)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_9:
    LODWORD(v26) = (v13 + v15 + -1.0);
    if (v13 <= v26)
    {
      v26 = v26;
      v41 = &v17[v18 * v26];
      while (!Width)
      {
LABEL_26:
        v15 = v15 + -1.0;
        --v26;
        v41 -= v18;
        if (v13 > v26)
        {
          goto LABEL_10;
        }
      }

      v42 = 1;
      v43 = v41;
      while (!*v43++)
      {
        v45 = v42++;
        if (v45 >= v9)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_10:
    v11 = v6;
    v14 = Width;
    if (Width)
    {
      v27 = 0;
      v28 = v13 + v15;
      v29 = &v17[v18 * v13];
      v14 = Width;
      v11 = v6;
      while (1)
      {
        v30 = v13 + 1;
        v31 = v29;
        if (v28 > v13)
        {
          break;
        }

LABEL_15:
        v11 = v11 + 1.0;
        v14 = v14 + -1.0;
        ++v27;
        ++v29;
        if (v27 >= v9)
        {
          goto LABEL_16;
        }
      }

      while (!*v31)
      {
        v31 += v18;
        v32 = v30++;
        if (v28 <= v32)
        {
          goto LABEL_15;
        }
      }
    }

LABEL_16:
    LODWORD(v33) = (v11 + v14 + -1.0);
    if (v11 <= v33)
    {
      v46 = v13 + v15;
      v33 = v33;
      while (1)
      {
        v47 = v13 + 1;
        v48 = &v17[v18 * v13];
        if (v46 > v13)
        {
          break;
        }

LABEL_32:
        v14 = v14 + -1.0;
        if (v11 > --v33)
        {
          goto LABEL_17;
        }
      }

      while (!v48[v33])
      {
        v48 += v18;
        v49 = v47++;
        if (v46 <= v49)
        {
          goto LABEL_32;
        }
      }
    }

LABEL_17:
    CGContextRelease(v19);
    free(v17);
  }

  v53.origin.x = v6;
  v53.origin.y = v7;
  v53.size.width = Width;
  v53.size.height = v12;
  v50.x = v11;
  v50.y = v13;
  v34 = CGRectContainsPoint(v53, v50);
  v35 = *MEMORY[0x277CBF348];
  v36 = *(MEMORY[0x277CBF348] + 8);
  if (v34)
  {
    v35 = v11;
    v36 = v13;
  }

  v37 = v15;
  v38 = fmaxf(v37, 1.0);
  v39 = v14;
  v40 = fmaxf(v39, 1.0);
  result.size.height = v38;
  result.size.width = v40;
  result.origin.y = v36;
  result.origin.x = v35;
  return result;
}

- (BOOL)isFullyOpaque:(CGImage *)opaque
{
  [(SKTextureAtlasPacker *)self calcNonAlphaArea:?];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = malloc_type_malloc((v8 * v10), 0x100004077774924uLL);
  v13 = v9;
  v14 = CGBitmapContextCreate(v12, v9, v11, 8uLL, v9, 0, 7u);
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v9;
  v24.size.height = v11;
  CGContextClearRect(v14, v24);
  v25.origin.x = 0.0;
  v25.origin.y = 0.0;
  v25.size.width = v9;
  v25.size.height = v11;
  CGContextDrawImage(v14, v25, opaque);
  LODWORD(v15) = v7;
  if (v7 + v11 > v7)
  {
    v17 = v5 + v9;
    v15 = v15;
    v18 = &v12[v13 * v15 + v5];
    while (1)
    {
      v19 = v5 + 1;
      v20 = v18;
      if (v17 > v5)
      {
        break;
      }

LABEL_7:
      ++v15;
      v18 += v13;
      if (v7 + v11 <= v15)
      {
        goto LABEL_2;
      }
    }

    while (1)
    {
      v21 = *v20++;
      if (v21 != 255)
      {
        break;
      }

      v22 = v19++;
      if (v17 <= v22)
      {
        goto LABEL_7;
      }
    }

    v16 = 0;
  }

  else
  {
LABEL_2:
    v16 = 1;
  }

  CGContextRelease(v14);
  free(v12);
  return v16;
}

- (id)partitionTextureFilesByResolution:(id)resolution
{
  v32 = *MEMORY[0x277D85DE8];
  resolutionCopy = resolution;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = resolutionCopy;
  v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v21 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v26 + 1) + 8 * i);
        lowercaseString = [v6 lowercaseString];
        stringByDeletingPathExtension = [lowercaseString stringByDeletingPathExtension];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v9 = [&unk_282E2D5D0 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v9)
        {
          v10 = v3;
          v11 = *v23;
          while (2)
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v23 != v11)
              {
                objc_enumerationMutation(&unk_282E2D5D0);
              }

              v13 = *(*(&v22 + 1) + 8 * j);
              if ([stringByDeletingPathExtension hasSuffix:v13])
              {
                v14 = v13;
                goto LABEL_16;
              }
            }

            v9 = [&unk_282E2D5D0 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }

          v14 = @"KFilenameHasNoMatchingSuffix";
LABEL_16:
          v3 = v10;
        }

        else
        {
          v14 = @"KFilenameHasNoMatchingSuffix";
        }

        v15 = [v3 objectForKey:v14];
        v16 = v15;
        if (v15)
        {
          [v15 addObject:v6];
          v17 = v16;
        }

        else
        {
          v17 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v17 addObject:v6];
          [v3 setObject:v17 forKey:v14];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v4);
  }

  return v3;
}

- (id)getTextureFileList:(id)list modDate:(id *)date
{
  v35 = *MEMORY[0x277D85DE8];
  listCopy = list;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v25 = *MEMORY[0x277CBE7B0];
  v26 = *MEMORY[0x277CBE868];
  v4 = *MEMORY[0x277CBE8E8];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:{*MEMORY[0x277CBE868], *MEMORY[0x277CBE7B0], 0}];
  v19 = [defaultManager enumeratorAtURL:listCopy includingPropertiesForKeys:v5 options:4 errorHandler:0];

  array = [MEMORY[0x277CBEB18] array];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v19;
  v6 = 0;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v7)
  {
    v8 = *v31;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        v29 = 0;
        [v10 getResourceValue:&v29 forKey:v4 error:0];
        v11 = v29;
        v28 = 0;
        [v10 getResourceValue:&v28 forKey:v26 error:0];
        v12 = v28;
        v27 = 0;
        [v10 getResourceValue:&v27 forKey:v25 error:0];
        v13 = v27;
        v14 = v13;
        if (v6)
        {
          if ([v13 compare:v6] == 1)
          {
            v15 = v14;

            v6 = v15;
          }
        }

        else
        {
          v6 = v13;
        }

        if (([v12 BOOLValue] & 1) == 0)
        {
          lowercaseString = [v11 lowercaseString];
          if (([lowercaseString hasSuffix:@".jpg"] & 1) != 0 || objc_msgSend(lowercaseString, "hasSuffix:", @".png"))
          {
            [array addObject:v10];
          }
        }
      }

      v7 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  if (date)
  {
    v17 = v6;
    *date = v6;
  }

  return array;
}

- (id)generateMetaData
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:@"APPL" forKey:@"format"];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:1];
  [v2 setObject:v3 forKey:@"version"];

  return v2;
}

- (id)processPackedTextureAtlas:(const void *)atlas suffix:(id)suffix packer:(shared_ptr<MaxRectTexturePacker>)packer sortedTrimArray:(const void *)array sortedTextureArray:(const void *)textureArray
{
  var1 = packer.var1;
  var0 = packer.var0;
  suffixCopy = suffix;
  v70 = [MEMORY[0x277CBEB18] arrayWithCapacity:(*(atlas + 1) - *atlas) >> 4];
  if (*(atlas + 1) != *atlas)
  {
    v8 = 0;
    atlasCopy = atlas;
    while (1)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = (*atlas + 16 * v8);
      v11 = *v10;
      rect = v10[1];
      v12 = malloc_type_malloc(vcvtd_n_u64_f64(*v10 * rect, 2uLL), 0x100004077774924uLL);
      DeviceRGB = CGColorSpaceCreateDeviceRGB();
      point_8 = CGBitmapContextCreate(v12, v11, rect, 8uLL, vcvtd_n_u64_f64(v11, 2uLL), DeviceRGB, 0x4001u);
      CGColorSpaceRelease(DeviceRGB);
      v96.origin.x = 0.0;
      v96.origin.y = 0.0;
      v96.size.width = v11;
      v96.size.height = rect;
      CGContextClearRect(point_8, v96);
      v73 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v14 = NSStringFromCGSize(*(*atlas + 16 * v8));
      [v73 setObject:v14 forKey:@"size"];
      v72 = v9;

      v15 = (*(**var0 + 40))(*var0, v8);
      v71 = v12;
      v84 = [MEMORY[0x277CBEB18] arrayWithCapacity:v15];
      if (v15)
      {
        break;
      }

LABEL_53:
      [v73 setObject:v84 forKey:@"subimages"];
      Image = CGBitmapContextCreateImage(point_8);
      v66 = [MEMORY[0x277D755B8] imageWithCGImage:Image];
      [v73 setObject:v66 forKey:@"path"];
      CGContextRelease(point_8);
      free(v71);
      CGImageRelease(Image);
      [v70 addObject:v73];

      objc_autoreleasePoolPop(v72);
      ++v8;
      atlas = atlasCopy;
      if (v8 >= (atlasCopy[1] - *atlasCopy) >> 4)
      {
        goto LABEL_54;
      }
    }

    v16 = 0;
    v80 = v15;
    while (1)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(MEMORY[0x277CBF3A0] + 16);
      v92.origin = *MEMORY[0x277CBF3A0];
      v92.size = v18;
      v91 = 0;
      v90 = 0;
      v19 = (*(**var0 + 48))(*var0, v8, v16, &v91, &v92, &v90);
      v20 = *var1 + 32 * v91;
      v21 = *v20;
      v22 = *(v20 + 8);
      v24 = *(v20 + 16);
      v23 = *(v20 + 24);
      v25 = *array + 32 * v91;
      v26 = *v25;
      if (*(v25 + 31) < 0)
      {
        std::string::__init_copy_ctor_external(&v89, *(v25 + 8), *(v25 + 16));
      }

      else
      {
        v27 = *(v25 + 8);
        v89.__r_.__value_.__r.__words[2] = *(v25 + 24);
        *&v89.__r_.__value_.__l.__data_ = v27;
      }

      v28 = v8;
      v29 = MEMORY[0x277CCACA8];
      v30 = SHIBYTE(v89.__r_.__value_.__r.__words[2]);
      v31 = v89.__r_.__value_.__r.__words[0];
      defaultCStringEncoding = [MEMORY[0x277CCACA8] defaultCStringEncoding];
      v33 = v30 >= 0 ? &v89 : v31;
      v34 = [v29 stringWithCString:v33 encoding:defaultCStringEncoding];
      v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v35 setObject:v34 forKey:@"name"];
      v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
      [v35 setObject:v36 forKey:@"aliases"];

      Width = CGImageGetWidth(v26);
      Height = CGImageGetHeight(v26);
      if (!v19)
      {
        break;
      }

      v26 = [(SKTextureAtlasPacker *)self copyRotateCGImage:v26 direction:1];
      v39 = CGImageGetWidth(v26) - v22 - v23;
      v40 = v21;
      v41 = v23;
      v42 = v24;
      if (v26)
      {
        goto LABEL_15;
      }

LABEL_16:
      point = v21;
      v46 = Width;
      v47 = Height;
      if (v24 != Width || v23 != v47)
      {
        goto LABEL_48;
      }

      origin = v92.origin;
      size = v92.size;
      v81 = v92.origin.y + -1.0;
      v82 = v92.size.height + -1.0;
      v74 = v92.origin.x + -1.0;
      v75 = v92.origin.y + v92.size.height;
      v78 = v92.origin.x + v92.size.width;
      v79 = v92.size.width + -1.0;
      v51 = v90;
      if ((v90 & 8) != 0)
      {
        if (!v26)
        {
          goto LABEL_48;
        }

        v98.origin.x = 0.0;
        v98.origin.y = 0.0;
        v98.size.height = 1.0;
        v98.size.width = v92.size.width;
        v52 = CGImageCreateWithImageInRect(v26, v98);
        v99.size.height = 1.0;
        v99.origin.x = origin.x;
        v99.origin.y = v75;
        v99.size.width = size.width;
        CGContextDrawImage(point_8, v99, v52);
        CGImageRelease(v52);
        v51 = v90;
        if ((v90 & 4) == 0)
        {
          if (v90)
          {
LABEL_35:
            v104.origin.x = 0.0;
            v104.origin.y = 0.0;
            v104.size.width = 1.0;
            v104.size.height = size.height;
            v55 = CGImageCreateWithImageInRect(v26, v104);
            v105.size.width = 1.0;
            v105.origin.x = v74;
            v105.origin.y = origin.y;
            v105.size.height = size.height;
            CGContextDrawImage(point_8, v105, v55);
            CGImageRelease(v55);
            v51 = v90;
            if ((v90 & 2) == 0)
            {
              goto LABEL_36;
            }

LABEL_33:
            v102.origin.y = 0.0;
            v102.size.width = 1.0;
            v102.origin.x = v79;
            v102.size.height = size.height;
            v54 = CGImageCreateWithImageInRect(v26, v102);
            v103.size.width = 1.0;
            v103.origin.x = v78;
            v103.origin.y = origin.y;
            v103.size.height = size.height;
            CGContextDrawImage(point_8, v103, v54);
            CGImageRelease(v54);
            v51 = v90;
            goto LABEL_37;
          }

LABEL_31:
          if (v26 && (v51 & 2) != 0)
          {
            goto LABEL_33;
          }

LABEL_36:
          if (v26)
          {
LABEL_37:
            if ((v51 & 9) == 9)
            {
              v106.origin.x = 0.0;
              v106.origin.y = 0.0;
              v106.size.width = 1.0;
              v106.size.height = 1.0;
              v56 = CGImageCreateWithImageInRect(v26, v106);
              v107.size.width = 1.0;
              v107.size.height = 1.0;
              v107.origin.x = v74;
              v107.origin.y = v75;
              CGContextDrawImage(point_8, v107, v56);
              CGImageRelease(v56);
              v51 = v90;
            }
          }

          if (v26 && (v51 & 5) == 5)
          {
            v108.origin.x = 0.0;
            v108.size.width = 1.0;
            v108.size.height = 1.0;
            v108.origin.y = v82;
            v57 = CGImageCreateWithImageInRect(v26, v108);
            v109.size.width = 1.0;
            v109.size.height = 1.0;
            v109.origin.x = v74;
            v109.origin.y = v81;
            CGContextDrawImage(point_8, v109, v57);
            CGImageRelease(v57);
            v51 = v90;
          }

          if (v26 && (v51 & 0xA) == 0xA)
          {
            v110.origin.y = 0.0;
            v110.size.width = 1.0;
            v110.size.height = 1.0;
            v110.origin.x = v79;
            v58 = CGImageCreateWithImageInRect(v26, v110);
            v111.size.width = 1.0;
            v111.size.height = 1.0;
            v111.origin.x = v78;
            v111.origin.y = v75;
            CGContextDrawImage(point_8, v111, v58);
            CGImageRelease(v58);
            v51 = v90;
          }

          if ((~v51 & 6) == 0 && v26)
          {
            v112.size.width = 1.0;
            v112.size.height = 1.0;
            v112.origin.x = v79;
            v112.origin.y = v82;
            v59 = CGImageCreateWithImageInRect(v26, v112);
            v113.size.width = 1.0;
            v113.size.height = 1.0;
            v113.origin.x = v78;
            v113.origin.y = v81;
            CGContextDrawImage(point_8, v113, v59);
            CGImageRelease(v59);
          }

          goto LABEL_48;
        }
      }

      else if (!v26 || (v90 & 4) == 0)
      {
        if ((v90 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_34;
      }

      v100.origin.x = 0.0;
      v100.size.height = 1.0;
      v100.origin.y = v82;
      v100.size.width = size.width;
      v53 = CGImageCreateWithImageInRect(v26, v100);
      v101.size.height = 1.0;
      v101.origin.x = origin.x;
      v101.origin.y = v81;
      v101.size.width = size.width;
      CGContextDrawImage(point_8, v101, v53);
      CGImageRelease(v53);
      v51 = v90;
      if ((v90 & 1) == 0)
      {
        goto LABEL_31;
      }

LABEL_34:
      if (v26)
      {
        goto LABEL_35;
      }

LABEL_48:
      v94.y = v47 - v22 - v23;
      v92.origin.y = rect - v92.origin.y - v92.size.height;
      v94.x = point;
      v60 = NSStringFromCGPoint(v94);
      [v35 setObject:v60 forKey:@"spriteOffset"];

      v95.width = v46;
      v95.height = Height;
      v61 = NSStringFromCGSize(v95);
      [v35 setObject:v61 forKey:@"spriteSourceSize"];

      v62 = NSStringFromCGRect(v92);
      [v35 setObject:v62 forKey:@"textureRect"];

      v63 = [MEMORY[0x277CCABB0] numberWithBool:v19];
      [v35 setObject:v63 forKey:@"textureRotated"];

      v64 = [MEMORY[0x277CCABB0] numberWithBool:{-[SKTextureAtlasPacker isFullyOpaque:](self, "isFullyOpaque:", v26)}];
      [v35 setObject:v64 forKey:@"isFullyOpaque"];

      [v84 addObject:v35];
      if (v19)
      {
        CGImageRelease(v26);
      }

      if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v89.__r_.__value_.__l.__data_);
      }

      objc_autoreleasePoolPop(v17);
      v8 = v28;
      if (v80 == ++v16)
      {
        goto LABEL_53;
      }
    }

    v39 = v21;
    v40 = v22;
    v41 = v24;
    v42 = v23;
    if (!v26)
    {
      goto LABEL_16;
    }

LABEL_15:
    v43 = v41;
    v44 = v42;
    v45 = CGImageCreateWithImageInRect(v26, *&v39);
    v97.origin = v92.origin;
    v97.size.width = v41;
    v97.size.height = v42;
    CGContextDrawImage(point_8, v97, v45);
    CGImageRelease(v45);
    goto LABEL_16;
  }

LABEL_54:

  return v70;
}

+ (CGImage)copyProcessedImageSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = CGImageSourceCreateWithURL(sourceCopy, 0);
      v6 = v5;
      if (v5)
      {
        ImageAtIndex = CGImageSourceCreateImageAtIndex(v5, 0, 0);
        CFRelease(v6);
        goto LABEL_10;
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = sourceCopy;
        v8 = MEMORY[0x277D755B8];
        v9 = SKGetResourceBundle();
        v10 = [v8 imageNamed:v7 inBundle:v9];

        ImageAtIndex = CGImageRetain([v10 CGImage]);
        goto LABEL_10;
      }
    }

LABEL_9:
    ImageAtIndex = 0;
    goto LABEL_10;
  }

  ImageAtIndex = CGImageRetain([(__CFURL *)sourceCopy CGImage]);
LABEL_10:

  return ImageAtIndex;
}

- (void)generateTextureAtlasImages:(id)images outputDictionary:(id *)dictionary forcePOT:(BOOL)t
{
  v57 = *MEMORY[0x277D85DE8];
  imagesCopy = images;
  allKeys = [imagesCopy allKeys];
  dictionaryCopy = dictionary;
  v31 = [(SKTextureAtlasPacker *)self partitionTextureFilesByResolution:allKeys];

  generateMetaData = [(SKTextureAtlasPacker *)self generateMetaData];
  v28 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = [v31 allKeys];
  v32 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
  if (v32)
  {
    v30 = *v52;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v52 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v51 + 1) + 8 * i);
        v11 = [v10 isEqualToString:@"KFilenameHasNoMatchingSuffix"];
        v12 = &stru_282E190D8;
        if ((v11 & 1) == 0)
        {
          v12 = v10;
        }

        v33 = v12;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v13 = [v31 objectForKey:v10];
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v35 = v13;
        v14 = [v35 countByEnumeratingWithState:&v44 objects:v55 count:16];
        if (v14)
        {
          v15 = *v45;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v45 != v15)
              {
                objc_enumerationMutation(v35);
              }

              v17 = *(*(&v44 + 1) + 8 * j);
              __p = 0uLL;
              v43 = 0;
              v18 = [imagesCopy objectForKey:v17];
              image = [SKTextureAtlasPacker copyProcessedImageSource:v18];

              v19 = v17;
              v20 = [v17 cStringUsingEncoding:4];
              v21 = strlen(v20);
              if (v21 >= 0x7FFFFFFFFFFFFFF8)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v22 = v21;
              if (v21 >= 0x17)
              {
                operator new();
              }

              HIBYTE(v37) = v21;
              if (v21)
              {
                memmove(&__dst, v20, v21);
              }

              *(&__dst + v22) = 0;
              if (SHIBYTE(v43) < 0)
              {
                operator delete(__p);
              }

              __p = __dst;
              v43 = v37;
              std::vector<TextureInfo>::push_back[abi:ne200100](&v48, &image);
              if (SHIBYTE(v43) < 0)
              {
                operator delete(__p);
              }
            }

            v14 = [v35 countByEnumeratingWithState:&v44 objects:v55 count:16];
          }

          while (v14);
        }

        v24 = 126 - 2 * __clz((v49 - v48) >> 5);
        *&__dst = sortTextureFunc;
        if (v49 == v48)
        {
          v25 = 0;
        }

        else
        {
          v25 = v24;
        }

        std::__introsort<std::_ClassicAlgPolicy,BOOL (*&)(TextureInfo const&,TextureInfo const&),TextureInfo*,false>(v48, v49, &__dst, v25, 1, v23);
        if (v49 != v48)
        {
          v38 = 0;
          v39 = 0;
          v40 = 0;
          operator new();
        }

        image = &v48;
        std::vector<TextureInfo>::__destroy_vector::operator()[abi:ne200100](&image);
      }

      v32 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    }

    while (v32);
  }

  [generateMetaData setObject:v28 forKey:@"images"];
  v26 = generateMetaData;
  *dictionaryCopy = generateMetaData;
}

@end