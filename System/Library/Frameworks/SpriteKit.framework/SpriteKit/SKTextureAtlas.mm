@interface SKTextureAtlas
+ (BOOL)canUseObjectForAtlas:(id)atlas;
+ (CGImage)createCGImageFromCUINamedImage:(CGImage *)image withSize:(CGSize)size atRect:(CGRect)rect;
+ (SKTextureAtlas)atlasNamed:(NSString *)name;
+ (SKTextureAtlas)atlasWithDictionary:(NSDictionary *)properties;
+ (id)atlasFromCUIImageAtlas:(id)atlas withName:(id)name;
+ (id)findTextureNamed:(id)named;
+ (id)getSupportedPostfixes;
+ (id)lookupCachedTextureNamed:(id)named;
+ (void)_exportAtlasWithDictionary:(id)dictionary toFile:(id)file;
+ (void)_exportAtlasWithDictionary:(id)dictionary toFile:(id)file forcePOT:(BOOL)t;
+ (void)preloadTextureAtlases:(NSArray *)textureAtlases withCompletionHandler:(void *)completionHandler;
+ (void)preloadTextureAtlasesNamed:(NSArray *)atlasNames withCompletionHandler:(void *)completionHandler;
- (BOOL)isEqualToTextureAtlas:(id)atlas;
- (NSArray)textureNames;
- (SKTexture)textureNamed:(NSString *)name;
- (SKTextureAtlas)init;
- (SKTextureAtlas)initWithCoder:(id)coder;
- (id).cxx_construct;
- (id)_copyImageData;
- (id)createSubTextureFromTexture:(id)texture andCUINamedImage:(id)image andOrigin:(CGPoint)origin;
- (id)createTextureFromProvider:(CGImageProvider *)provider andSource:(CGImage *)source;
- (id)description;
- (id)findTextureNamedFromAtlas:(id)atlas;
- (void)_prePopulateCache;
- (void)commonInit;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)loadTextures;
- (void)loadTexturesFromCUIImageAtlas:(id)atlas;
- (void)parseAtlasPropertyList:(id)list withPath:(id)path;
- (void)preloadWithCompletionHandler:(void *)completionHandler;
- (void)unload;
@end

@implementation SKTextureAtlas

- (void)_prePopulateCache
{
  v3 = [(NSDictionary *)self->_textureDict count];
  if (self->_textureDict)
  {
    v4 = v3 < 1;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__rehash<true>(&self->_textureMap, vcvtps_u32_f32((v3 & 0x7FFFFFFF) / self->_textureMap.__table_.__max_load_factor_));
    textureDict = self->_textureDict;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __35__SKTextureAtlas__prePopulateCache__block_invoke;
    v6[3] = &unk_278310240;
    v6[4] = self;
    [(NSDictionary *)textureDict enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __35__SKTextureAtlas__prePopulateCache__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  v8 = v6;
  v9 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(__p, [v7 UTF8String]);
  v10 = v8;
  v13 = v10;
  std::__hash_table<std::__hash_value_type<std::string,SKTexture * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKTexture * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKTexture * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKTexture * {__strong}>>>::__emplace_unique_key_args<std::string,std::pair<std::string,SKTexture * {__strong}>>((v9 + 32), __p);

  if (v12 < 0)
  {
    operator delete(__p[0]);
  }
}

- (void)commonInit
{
  if ([SKTextureAtlas commonInit]::_atlasInit != -1)
  {
    [SKTextureAtlas commonInit];
  }
}

void __28__SKTextureAtlas_commonInit__block_invoke()
{
  v0 = [SKThreadSafeMapTable alloc];
  v1 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v2 = [(SKThreadSafeMapTable *)v0 initWithNSMapTable:v1];
  v3 = _atlasDict;
  _atlasDict = v2;

  v4 = objc_alloc_init(MEMORY[0x277CBEA78]);
  v5 = _offlineAtlasCache;
  _offlineAtlasCache = v4;
}

- (SKTextureAtlas)init
{
  v7.receiver = self;
  v7.super_class = SKTextureAtlas;
  v2 = [(SKTextureAtlas *)&v7 init];
  v3 = v2;
  if (v2)
  {
    textureDict = v2->_textureDict;
    v2->_textureDict = 0;

    atlasName = v3->_atlasName;
    v3->_atlasName = 0;

    [(SKTextureAtlas *)v3 commonInit];
  }

  return v3;
}

- (SKTextureAtlas)initWithCoder:(id)coder
{
  v16[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SKTextureAtlas;
  v5 = [(SKTextureAtlas *)&v15 init];
  v6 = v5;
  if (v5)
  {
    [(SKTextureAtlas *)v5 commonInit];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_atlasName"];
    atlasName = v6->_atlasName;
    v6->_atlasName = v7;

    v9 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    v11 = [v9 setWithArray:v10];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"_textureDict"];
    textureDict = v6->_textureDict;
    v6->_textureDict = v12;

    [_atlasDict setObject:v6 forKey:v6->_atlasName];
    [(SKTextureAtlas *)v6 _prePopulateCache];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_atlasName forKey:@"_atlasName"];
  [coderCopy encodeObject:self->_textureDict forKey:@"_textureDict"];
}

- (BOOL)isEqualToTextureAtlas:(id)atlas
{
  v22 = *MEMORY[0x277D85DE8];
  atlasCopy = atlas;
  atlasName = self->_atlasName;
  v6 = *(atlasCopy + 2);
  if (atlasName)
  {
    if (v6 && [(NSString *)atlasName isEqualToString:?])
    {
      goto LABEL_4;
    }

LABEL_15:
    v15 = 0;
    goto LABEL_20;
  }

  if (v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_textureDict;
  v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [(NSDictionary *)self->_textureDict objectForKey:v11, v17];
        v13 = [*(atlasCopy + 1) objectForKey:v11];
        if (!v13)
        {

LABEL_18:
          v15 = 0;
          goto LABEL_19;
        }

        v14 = [v12 isEqualToTexture:v13];

        if ((v14 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v8 = [(NSDictionary *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      v15 = 1;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v15 = 1;
  }

LABEL_19:

LABEL_20:
  return v15;
}

- (NSArray)textureNames
{
  textureDict = self->_textureDict;
  if (textureDict)
  {
    [(NSDictionary *)textureDict allKeys];
  }

  else
  {
    [MEMORY[0x277CBEA60] array];
  }
  v3 = ;

  return v3;
}

+ (BOOL)canUseObjectForAtlas:(id)atlas
{
  atlasCopy = atlas;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    isKindOfClass = 1;
  }

  else
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

+ (SKTextureAtlas)atlasWithDictionary:(NSDictionary *)properties
{
  v4 = properties;
  allValues = [(NSDictionary *)v4 allValues];
  for (i = 0; [allValues count] > i; ++i)
  {
    v7 = [allValues objectAtIndexedSubscript:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"SKTextures aren't supported in [SKTextureAtlas atlasWithDictionary:].  Use UIImage, NSUrl or NSString instead."}];
LABEL_10:

      v11 = 0;
      goto LABEL_17;
    }

    if (([self canUseObjectForAtlas:v7] & 1) == 0)
    {
      v12 = MEMORY[0x277CBEAD8];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      [v12 raise:*MEMORY[0x277CBE660] format:{@"Unsupported class:%@ passed into [SKTextureAtlas atlasWithDictionary:].  Use UIImage, NSUrl or NSString instead.", v14}];

      goto LABEL_10;
    }
  }

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", -[NSDictionary hash](v4, "hash")];
  v9 = [_atlasDict objectForKey:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = objc_alloc_init(SKTextureAtlas);
    objc_storeStrong(&v11->_atlasName, v8);
    v15 = [(NSDictionary *)v4 objectForKey:@"format"];
    v16 = v15;
    if (v15 && ([v15 isEqualToString:@"APPL"] & 1) != 0)
    {
      [(SKTextureAtlas *)v11 parseAtlasPropertyList:v4 withPath:0];
    }

    else
    {
      v17 = objc_alloc_init(SKTextureAtlasPacker);
      v20 = 0;
      [(SKTextureAtlasPacker *)v17 generateTextureAtlasImages:v4 outputDictionary:&v20 forcePOT:0];
      v18 = v20;
      [(SKTextureAtlas *)v11 parseAtlasPropertyList:v18 withPath:0];
    }
  }

LABEL_17:

  return v11;
}

- (void)parseAtlasPropertyList:(id)list withPath:(id)path
{
  v152 = *MEMORY[0x277D85DE8];
  listCopy = list;
  pathCopy = path;
  v104 = listCopy;
  if (listCopy)
  {
    v102 = [listCopy objectForKey:@"format"];
    if (v102 && [v102 isEqualToString:@"APPL"])
    {
      v6 = [listCopy objectForKey:@"version"];
      if ([v6 intValue] == 1)
      {
        v97 = v6;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        [listCopy objectForKey:@"images"];
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        obj = v143 = 0u;
        v8 = [obj countByEnumeratingWithState:&v142 objects:v151 count:16];
        if (!v8)
        {
          goto LABEL_45;
        }

        v100 = *v143;
        __asm { FMOV            V0.2D, #0.5 }

        v96 = _Q0;
        while (1)
        {
          v14 = 0;
          v98 = v8;
          do
          {
            if (*v143 != v100)
            {
              objc_enumerationMutation(obj);
            }

            v15 = *(*(&v142 + 1) + 8 * v14);
            v108 = [v15 objectForKey:{@"path", *&v96}];
            v141 = 0;
            v16 = [v15 objectForKey:@"size"];
            v107 = v14;
            v141 = CGSizeFromString(v16);

            v140 = v141;
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v108;
              v18 = +[SKTexture textureWithCGImage:](SKTexture, "textureWithCGImage:", [v108 CGImage]);
              goto LABEL_23;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v19 = CGImageSourceCreateWithURL(v108, 0);
              v20 = v19;
              if (v19)
              {
                ImageAtIndex = CGImageSourceCreateImageAtIndex(v19, 0, 0);
                CFRelease(v20);
                v18 = [SKTexture textureWithCGImage:ImageAtIndex];
                CGImageRelease(ImageAtIndex);
                goto LABEL_23;
              }

LABEL_18:
              v18 = 0;
              goto LABEL_23;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_18;
            }

            v22 = v108;
            if (pathCopy)
            {
              v23 = [pathCopy stringByAppendingPathComponent:v22];
            }

            else
            {
              v23 = v22;
            }

            v24 = v23;
            v18 = [SKTexture textureWithImageNamed:v23];
            lowercaseString = [v22 lowercaseString];
            v26 = [lowercaseString rangeOfString:@"@2x"] == 0x7FFFFFFFFFFFFFFFLL;

            if (!v26)
            {
              v140 = vmulq_f64(v140, v96);
            }

LABEL_23:
            [v18 setTextureDimension:&v140 withPixelSize:&v141];
            v27 = [v15 objectForKey:@"subimages"];
            v113 = v18;
            v138 = 0u;
            v139 = 0u;
            v136 = 0u;
            v137 = 0u;
            v109 = v27;
            v28 = [v109 countByEnumeratingWithState:&v136 objects:v150 count:16];
            if (v28)
            {
              v111 = *v137;
              do
              {
                for (i = 0; i != v28; ++i)
                {
                  if (*v137 != v111)
                  {
                    objc_enumerationMutation(v109);
                  }

                  v30 = *(*(&v136 + 1) + 8 * i);
                  v31 = [v30 objectForKey:@"aliases"];
                  v32 = [v30 objectForKey:@"textureRect"];
                  v153 = CGRectFromString(v32);
                  y = v153.origin.y;
                  x = v153.origin.x;
                  width = v153.size.width;
                  height = v153.size.height;

                  v35 = [v30 objectForKey:@"spriteOffset"];
                  v36 = CGPointFromString(v35);

                  v37 = [v30 objectForKey:@"spriteSourceSize"];
                  v38 = CGSizeFromString(v37);

                  v39 = [v30 objectForKey:@"textureRotated"];
                  bOOLValue = [v39 BOOLValue];

                  if (bOOLValue)
                  {
                    v41 = width;
                  }

                  else
                  {
                    v41 = height;
                  }

                  if (bOOLValue)
                  {
                    v42 = height;
                  }

                  else
                  {
                    v42 = width;
                  }

                  v43 = [SKTexture textureWithRect:v113 inTexture:x / v141.width, (v141.height - (y + height)) / v141.height, width / v141.width, height / v141.height];
                  [v43 setCropOffset:{(v36.x - (v38.width - v42) * 0.5) / v42, (v36.y - (v38.height - v41) * 0.5) / v41}];
                  [v43 setIsRotated:bOOLValue];
                  [v43 setCropScale:{v42 / v38.width, v41 / v38.height}];
                  v44 = [v30 objectForKey:@"name"];
                  [v43 setSubTextureName:v44];
                  [v43 setOriginalAtlasName:self->_atlasName];
                  [(NSDictionary *)dictionary setObject:v43 forKey:v44];
                  v134 = 0u;
                  v135 = 0u;
                  v132 = 0u;
                  v133 = 0u;
                  v45 = v31;
                  v46 = [v45 countByEnumeratingWithState:&v132 objects:v149 count:16];
                  if (v46)
                  {
                    v47 = *v133;
                    do
                    {
                      for (j = 0; j != v46; ++j)
                      {
                        if (*v133 != v47)
                        {
                          objc_enumerationMutation(v45);
                        }

                        [(NSDictionary *)dictionary setObject:v43 forKey:*(*(&v132 + 1) + 8 * j)];
                      }

                      v46 = [v45 countByEnumeratingWithState:&v132 objects:v149 count:16];
                    }

                    while (v46);
                  }
                }

                v28 = [v109 countByEnumeratingWithState:&v136 objects:v150 count:16];
              }

              while (v28);
            }

            v14 = v107 + 1;
          }

          while (v107 + 1 != v98);
          v8 = [obj countByEnumeratingWithState:&v142 objects:v151 count:16];
          if (!v8)
          {
LABEL_45:

            textureDict = self->_textureDict;
            self->_textureDict = dictionary;

            v6 = v97;
            goto LABEL_79;
          }
        }
      }

      [MEMORY[0x277CBEAD8] raise:@"Unsupported Texture Atlas Format" format:@"Unsupported Texture Atlas Format Code 3"];
LABEL_79:

      goto LABEL_80;
    }

    v50 = [listCopy objectForKey:@"metadata"];
    v51 = v50;
    if (!v50)
    {
      [MEMORY[0x277CBEAD8] raise:@"Unsupported Texture Atlas Format" format:@"Unsupported Texture Atlas Format Code 2"];
LABEL_81:

      goto LABEL_82;
    }

    v52 = [v50 objectForKey:@"format"];
    if (v52)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 intValue] == 3)
      {
        v99 = v52;
        v101 = v51;
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        v117 = [SKTexture textureWithImageNamed:self->_atlasName];
        v54 = [v51 objectForKey:@"size"];
        v55 = CGSizeFromString(v54);

        v119 = [v104 objectForKey:@"frames"];
        [v119 allKeys];
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v110 = v129 = 0u;
        v56 = [v110 countByEnumeratingWithState:&v128 objects:v148 count:16];
        if (v56)
        {
          obja = *v129;
          do
          {
            for (k = 0; k != v56; ++k)
            {
              if (*v129 != obja)
              {
                objc_enumerationMutation(v110);
              }

              v58 = *(*(&v128 + 1) + 8 * k);
              v59 = [v119 objectForKey:v58];
              v60 = [v59 objectForKey:@"aliases"];
              v61 = [v59 objectForKey:@"textureRect"];
              v154 = CGRectFromString(v61);
              v112 = v154.origin.x;
              v114 = v154.size.width;
              v62 = v154.origin.y;
              v63 = v154.size.height;

              v64 = [v59 objectForKey:@"spriteSize"];
              v65 = CGSizeFromString(v64);

              v66 = [v59 objectForKey:@"spriteOffset"];
              v67 = CGPointFromString(v66);

              v68 = [v59 objectForKey:@"spriteSourceSize"];
              v69 = CGSizeFromString(v68);

              v70 = [v59 objectForKey:@"textureRotated"];
              bOOLValue2 = [v70 BOOLValue];

              v72 = [SKTexture textureWithRect:v117 inTexture:v112 / v55.width, (v55.height - (v62 + v63)) / v55.height, v114 / v55.width, v63 / v55.height];
              [v72 setCropOffset:{v67.x / v65.width, v67.y / v65.height}];
              [v72 setIsRotated:bOOLValue2];
              [v72 setCropScale:{v65.width / v69.width, v65.height / v69.height}];
              [v72 setSubTextureName:v58];
              [v72 setOriginalAtlasName:self->_atlasName];
              [(NSDictionary *)dictionary2 setObject:v72 forKey:v58];
              v126 = 0u;
              v127 = 0u;
              v124 = 0u;
              v125 = 0u;
              v73 = v60;
              v74 = [v73 countByEnumeratingWithState:&v124 objects:v147 count:16];
              if (v74)
              {
                v75 = *v125;
                do
                {
                  for (m = 0; m != v74; ++m)
                  {
                    if (*v125 != v75)
                    {
                      objc_enumerationMutation(v73);
                    }

                    [(NSDictionary *)dictionary2 setObject:v72 forKey:*(*(&v124 + 1) + 8 * m)];
                  }

                  v74 = [v73 countByEnumeratingWithState:&v124 objects:v147 count:16];
                }

                while (v74);
              }
            }

            v56 = [v110 countByEnumeratingWithState:&v128 objects:v148 count:16];
          }

          while (v56);
        }

LABEL_76:

        v95 = self->_textureDict;
        self->_textureDict = dictionary2;

LABEL_80:
        [(SKTextureAtlas *)self _prePopulateCache];
        goto LABEL_81;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v52 intValue] == 1)
      {
        v99 = v52;
        v101 = v51;
        dictionary2 = [MEMORY[0x277CBEB38] dictionary];
        v77 = [v51 objectForKey:@"textureFileName"];
        v117 = [SKTexture textureWithImageNamed:v77];

        v78 = [v51 objectForKey:@"size"];
        v79 = CGSizeFromString(v78);

        v119 = [v104 objectForKey:@"frames"];
        [v119 allKeys];
        v122 = 0u;
        v123 = 0u;
        v120 = 0u;
        v110 = v121 = 0u;
        v80 = [v110 countByEnumeratingWithState:&v120 objects:v146 count:16];
        if (v80)
        {
          v81 = *v121;
          do
          {
            for (n = 0; n != v80; ++n)
            {
              if (*v121 != v81)
              {
                objc_enumerationMutation(v110);
              }

              v83 = *(*(&v120 + 1) + 8 * n);
              v84 = [v119 objectForKey:v83];
              v85 = [v84 objectForKey:@"frame"];
              v155 = CGRectFromString(v85);
              v86 = v155.origin.x;
              v87 = v155.origin.y;
              v88 = v155.size.width;
              v89 = v155.size.height;

              v90 = [v84 objectForKey:@"offset"];
              v91 = CGPointFromString(v90);

              v92 = [v84 objectForKey:@"sourceSize"];
              v93 = CGSizeFromString(v92);

              v94 = [SKTexture textureWithRect:v117 inTexture:v86 / v79.width, (v79.height - (v87 + v89)) / v79.height, v88 / v79.width, v89 / v79.height];
              [v94 setCropOffset:{v91.x, v91.y}];
              [v94 setIsRotated:0];
              [v94 setCropScale:{v88 / v93.width, v89 / v93.height}];
              [(NSDictionary *)dictionary2 setObject:v94 forKey:v83];
            }

            v80 = [v110 countByEnumeratingWithState:&v120 objects:v146 count:16];
          }

          while (v80);
        }

        goto LABEL_76;
      }
    }

    goto LABEL_80;
  }

  [MEMORY[0x277CBEAD8] raise:@"Unsupported Texture Atlas Format" format:@"Unsupported Texture Atlas Format Code 1"];
LABEL_82:
}

- (void)loadTextures
{
  v26 = [MEMORY[0x277D02670] defaultUICatalogForBundle:0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v5 = v4;

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v8 = [v26 namedImageAtlasWithName:self->_atlasName scaleFactor:__deviceClassForInterfaceIdiom(userInterfaceIdiom) deviceIdiom:v5];
  if (v8)
  {
    v9 = +[SKAnalytics instance];
    [v9 sendAnalyticsDataWithKey:@"com.apple.spritekit.atlas.coreui"];

    [(SKTextureAtlas *)self loadTexturesFromCUIImageAtlas:v8];
LABEL_15:
    [_atlasDict setObject:self forKey:self->_atlasName];
    goto LABEL_16;
  }

  v10 = +[SKAnalytics instance];
  [v10 sendAnalyticsDataWithKey:@"com.apple.spritekit.atlas.local"];

  v11 = SKGetResourceBundle();
  v12 = [v11 pathForResource:self->_atlasName ofType:@"plist"];

  if (!v12)
  {
    pathExtension = [(NSString *)self->_atlasName pathExtension];
    v14 = [pathExtension caseInsensitiveCompare:@"plist"];

    atlasName = self->_atlasName;
    if (v14)
    {
      pathExtension2 = [(NSString *)atlasName pathExtension];
      v17 = [pathExtension2 caseInsensitiveCompare:@"atlasc"];

      v18 = self->_atlasName;
      if (v17)
      {
        lastPathComponent2 = [(NSString *)self->_atlasName stringByAppendingString:@".atlasc"];
        lastPathComponent = [(NSString *)self->_atlasName lastPathComponent];
        v21 = [lastPathComponent2 stringByAppendingPathComponent:lastPathComponent];
      }

      else
      {
        lastPathComponent2 = [(NSString *)self->_atlasName lastPathComponent];
        stringByDeletingPathExtension = [lastPathComponent2 stringByDeletingPathExtension];
        v21 = [(NSString *)v18 stringByAppendingPathComponent:stringByDeletingPathExtension];
      }
    }

    else
    {
      v21 = atlasName;
    }

    v23 = SKGetResourceBundle();
    v12 = [v23 pathForResource:v21 ofType:@"plist"];
  }

  stringByDeletingLastPathComponent = [v12 stringByDeletingLastPathComponent];
  if (v12)
  {
    v25 = [_offlineAtlasCache objectForKey:v12];
    if (!v25)
    {
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v12];
    }

    [(SKTextureAtlas *)self parseAtlasPropertyList:v25 withPath:stringByDeletingLastPathComponent];
    [_offlineAtlasCache removeObjectForKey:v12];

    goto LABEL_15;
  }

  NSLog(&cfstr_TextureAtlasCa.isa, self->_atlasName);

LABEL_16:
}

+ (SKTextureAtlas)atlasNamed:(NSString *)name
{
  v3 = name;
  v4 = [_atlasDict objectForKey:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = objc_alloc_init(SKTextureAtlas);
    stringByDeletingPathExtension = [(NSString *)v3 stringByDeletingPathExtension];
    atlasName = v6->_atlasName;
    v6->_atlasName = stringByDeletingPathExtension;

    [(SKTextureAtlas *)v6 loadTextures];
  }

  return v6;
}

- (id)createTextureFromProvider:(CGImageProvider *)provider andSource:(CGImage *)source
{
  v5 = CGImageProviderCopyIOSurface();
  if (!v5)
  {
    v12 = 0;
    goto LABEL_14;
  }

  v6 = v5;
  PixelFormat = IOSurfaceGetPixelFormat(v5);
  ColorSpace = CGImageGetColorSpace(source);
  ProcessColorModel = CGColorSpaceGetProcessColorModel();
  v10 = CGColorSpaceUsesExtendedRange(ColorSpace);
  switch(PixelFormat)
  {
    case 0x52476841:
      if (ProcessColorModel != 1 || !v10)
      {
        v12 = 0;
        goto LABEL_13;
      }

      v11 = 10;
      break;
    case 0x52474241:
      v11 = 3;
      break;
    case 0x42475241:
      v11 = 4;
      break;
    default:
      v12 = 0;
      NSLog(&cfstr_SktexturePixel.isa, PixelFormat);
      goto LABEL_13;
  }

  ID = IOSurfaceGetID(v6);
  Width = IOSurfaceGetWidth(v6);
  v12 = [SKTexture textureWithIOSurfaceID:ID width:Width height:IOSurfaceGetHeight(v6) format:v11];
LABEL_13:
  CFRelease(v6);
LABEL_14:

  return v12;
}

- (id)createSubTextureFromTexture:(id)texture andCUINamedImage:(id)image andOrigin:(CGPoint)origin
{
  y = origin.y;
  x = origin.x;
  textureCopy = texture;
  imageCopy = image;
  croppedImage = [imageCopy croppedImage];
  [imageCopy size];
  v12 = v11;
  [imageCopy scale];
  v14 = v13;
  [imageCopy size];
  v16 = v15;
  [imageCopy scale];
  v17 = v12 * v14;
  v19 = v16 * v18;
  v60 = v17;
  *v65 = v17;
  *&v65[1] = v16 * v18;
  Width = CGImageGetWidth(croppedImage);
  Height = CGImageGetHeight(croppedImage);
  v64[0] = Width;
  v64[1] = Height;
  if (textureCopy)
  {
    [textureCopy pixelSize];
    v23 = v22;
    [imageCopy scale];
    v25 = v24;
    [textureCopy pixelSize];
    v27 = v26;
    [imageCopy scale];
    v62 = v23 / v25;
    v63 = v27 / v28;
    [textureCopy pixelSize];
    v30 = v29;
    [textureCopy pixelSize];
    v32 = v31;
    [textureCopy pixelSize];
    v34 = v33;
    [textureCopy pixelSize];
    v36 = [SKTexture textureWithRect:textureCopy inTexture:x / v30, y / v32, Width / v34, Height / v35];
    [v36 setIsFlipped:1];
    if ([imageCopy isAlphaCropped])
    {
      [imageCopy alphaCroppedRect];
      v38 = v37;
      [imageCopy alphaCroppedRect];
      v40 = v39;
      [imageCopy alphaCroppedRect];
      [v36 setCropOffset:{(v38 - (v60 - (v38 + Width))) * 0.5 / Width, (v19 - (v40 + v41) - (v19 - (v19 - (v40 + v41) + Height))) * 0.5 / Height}];
      [v36 setCropScale:{Width / v60, Height / v19}];
    }

    [textureCopy pixelSize];
    v61[0] = v42;
    v61[1] = v43;
    [v36 setTextureDimension:&v62 withPixelSize:v61];
  }

  else if ([imageCopy isAlphaCropped])
  {
    [imageCopy alphaCroppedRect];
    v45 = v44;
    [imageCopy alphaCroppedRect];
    v47 = v46;
    [imageCopy alphaCroppedRect];
    v49 = v48;
    [imageCopy alphaCroppedRect];
    v51 = v50;
    [imageCopy alphaCroppedRect];
    v53 = [SKTextureAtlas createCGImageFromCUINamedImage:croppedImage withSize:v60 atRect:v19, v45, v19 - (v47 + v49), v51, v52];
    v36 = [SKTexture textureWithCGImage:v53];
    CGImageRelease(v53);
    [imageCopy scale];
    v55 = v54;
    [imageCopy scale];
    v62 = v60 / v55;
    v63 = v19 / v56;
    [v36 setTextureDimension:&v62 withPixelSize:v65];
  }

  else
  {
    v36 = [SKTexture textureWithCGImage:croppedImage];
    [imageCopy size];
    v62 = v57;
    v63 = v58;
    [v36 setTextureDimension:&v62 withPixelSize:v64];
  }

  return v36;
}

- (void)loadTexturesFromCUIImageAtlas:(id)atlas
{
  v33 = *MEMORY[0x277D85DE8];
  atlasCopy = atlas;
  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  memset(v29, 0, sizeof(v29));
  v30 = 1065353216;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [atlasCopy imageNames];
  v4 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
  if (v4)
  {
    v5 = *v26;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v26 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v8 = [atlasCopy imageWithName:v7];
        croppedImage = [v8 croppedImage];
        if (v7)
        {
          v10 = croppedImage == 0;
        }

        else
        {
          v10 = 1;
        }

        if (!v10)
        {
          v24[0] = 0;
          IsSubimage = CGImageIsSubimage();
          if (v24[0])
          {
            v12 = IsSubimage;
          }

          else
          {
            v12 = 0;
          }

          if (v12 == 1)
          {
            v13 = std::__hash_table<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::__unordered_map_hasher<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::hash<CGImage *>,std::equal_to<CGImage *>,true>,std::__unordered_map_equal<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::equal_to<CGImage *>,std::hash<CGImage *>,true>,std::allocator<std::__hash_value_type<CGImage *,SKTexture * {__strong}>>>::find<CGImage *>(v29, v24);
            if (v13)
            {
              v14 = v13[3];
            }

            else
            {
              v14 = [(SKTextureAtlas *)self createTextureFromProvider:CGImageGetImageProvider() andSource:v24[0]];
              if (v14)
              {
                v31 = v24;
                v15 = std::__hash_table<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::__unordered_map_hasher<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::hash<CGImage *>,std::equal_to<CGImage *>,true>,std::__unordered_map_equal<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::equal_to<CGImage *>,std::hash<CGImage *>,true>,std::allocator<std::__hash_value_type<CGImage *,SKTexture * {__strong}>>>::__emplace_unique_key_args<CGImage *,std::piecewise_construct_t const&,std::tuple<CGImage * const&>,std::tuple<>>(v29, v24);
                objc_storeStrong(v15 + 3, v14);
                v16 = v14;
              }
            }
          }

          else
          {
            v14 = 0;
          }

          v17 = [(SKTextureAtlas *)self createSubTextureFromTexture:v14 andCUINamedImage:v8 andOrigin:*&v24[1], *&v24[2]];
          if (objc_opt_respondsToSelector())
          {
            v18 = [atlasCopy completeTextureExtrusion] ^ 1;
          }

          else
          {
            v18 = 1;
          }

          [v17 setNeedsExtrusionWorkaround:v18];
          stringByDeletingPathExtension = [v7 stringByDeletingPathExtension];
          [v17 _setImageName:stringByDeletingPathExtension];

          [(NSDictionary *)v21 setObject:v17 forKey:v7];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v4);
  }

  self->_isCUIImageAtlas = 1;
  textureDict = self->_textureDict;
  self->_textureDict = v21;

  std::__hash_table<std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::__unordered_map_hasher<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::hash<CGImage *>,std::equal_to<CGImage *>,true>,std::__unordered_map_equal<CGImage *,std::__hash_value_type<CGImage *,SKTexture * {__strong}>,std::equal_to<CGImage *>,std::hash<CGImage *>,true>,std::allocator<std::__hash_value_type<CGImage *,SKTexture * {__strong}>>>::~__hash_table(v29);
}

+ (id)atlasFromCUIImageAtlas:(id)atlas withName:(id)name
{
  atlasCopy = atlas;
  nameCopy = name;
  v7 = [_atlasDict objectForKey:nameCopy];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = objc_alloc_init(SKTextureAtlas);
    stringByDeletingPathExtension = [nameCopy stringByDeletingPathExtension];
    atlasName = v9->_atlasName;
    v9->_atlasName = stringByDeletingPathExtension;

    [_atlasDict setObject:v9 forKey:v9->_atlasName];
    if (atlasCopy)
    {
      [(SKTextureAtlas *)v9 loadTexturesFromCUIImageAtlas:atlasCopy];
    }
  }

  return v9;
}

- (void)preloadWithCompletionHandler:(void *)completionHandler
{
  v6[1] = *MEMORY[0x277D85DE8];
  v4 = completionHandler;
  v6[0] = self;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1];
  [SKTextureAtlas preloadTextureAtlases:v5 withCompletionHandler:v4];
}

+ (void)preloadTextureAtlases:(NSArray *)textureAtlases withCompletionHandler:(void *)completionHandler
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = textureAtlases;
  v6 = completionHandler;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = v5;
  v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        if (*(v12 + 8))
        {
          v19 = 0u;
          v20 = 0u;
          v17 = 0u;
          v18 = 0u;
          objectEnumerator = [*(v12 + 8) objectEnumerator];
          v14 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v25 count:16];
          if (v14)
          {
            v15 = *v18;
            do
            {
              v16 = 0;
              do
              {
                if (*v18 != v15)
                {
                  objc_enumerationMutation(objectEnumerator);
                }

                [v7 addObject:*(*(&v17 + 1) + 8 * v16++)];
              }

              while (v14 != v16);
              v14 = [objectEnumerator countByEnumeratingWithState:&v17 objects:v25 count:16];
            }

            while (v14);
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v9);
  }

  [SKTexture preloadTextures:v7 withCompletionHandler:v6];
}

+ (void)preloadTextureAtlasesNamed:(NSArray *)atlasNames withCompletionHandler:(void *)completionHandler
{
  v5 = atlasNames;
  v6 = completionHandler;
  v7 = dispatch_get_global_queue(17, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__SKTextureAtlas_preloadTextureAtlasesNamed_withCompletionHandler___block_invoke;
  v10[3] = &unk_2783102B8;
  v11 = v5;
  v12 = v6;
  v8 = v6;
  v9 = v5;
  dispatch_async(v7, v10);
}

void __67__SKTextureAtlas_preloadTextureAtlasesNamed_withCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D759A0] mainScreen];
  [v2 scale];
  v4 = v3;

  v5 = [MEMORY[0x277D02670] defaultUICatalogForBundle:0];
  v6 = [*(a1 + 32) mutableCopy];
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__SKTextureAtlas_preloadTextureAtlasesNamed_withCompletionHandler___block_invoke_2;
  v16[3] = &unk_278310268;
  v8 = v6;
  v17 = v8;
  v9 = v7;
  v18 = v9;
  v19 = *(a1 + 40);
  v10 = MEMORY[0x21CF0AB10](v16);
  if (objc_opt_respondsToSelector())
  {
    v11 = *(a1 + 32);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__SKTextureAtlas_preloadTextureAtlasesNamed_withCompletionHandler___block_invoke_3;
    v12[3] = &unk_278310290;
    v13 = v8;
    v14 = v9;
    v15 = v10;
    [v5 preloadNamedAtlasWithScaleFactor:v11 andNames:v12 completionHandler:v4];
  }

  else
  {
    v10[2](v10, 0);
  }
}

void __67__SKTextureAtlas_preloadTextureAtlasesNamed_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [SKTextureAtlas atlasNamed:*(*(&v10 + 1) + 8 * v7), v10];
        if (v8)
        {
          [*(a1 + 40) addObject:v8];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    (*(v9 + 16))(v9, v3, *(a1 + 40));
  }
}

void __67__SKTextureAtlas_preloadTextureAtlasesNamed_withCompletionHandler___block_invoke_3(void *a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v15 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = a3;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = a1[4];
        v11 = [v9 name];
        [v10 removeObject:v11];

        v12 = a1[5];
        v13 = [v9 name];
        v14 = [SKTextureAtlas atlasFromCUIImageAtlas:v9 withName:v13];
        [v12 addObject:v14];
      }

      v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  (*(a1[6] + 16))();
}

- (id)description
{
  textureDict = self->_textureDict;
  if (textureDict && (v4 = [(NSDictionary *)textureDict count]) != 0)
  {
    v5 = v4;
    v6 = MEMORY[0x277CCACA8];
    atlasName = self->_atlasName;
    allValues = [(NSDictionary *)self->_textureDict allValues];
    v9 = [allValues description];
    v10 = [v6 stringWithFormat:@"<SKTextureAtlas> '%@' %ld textures:\n %@", atlasName, v5, v9];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"<SKTextureAtlas> '%@' 0 textures", self->_atlasName];
  }

  return v10;
}

- (void)dealloc
{
  [(SKTextureAtlas *)self unload];
  v3.receiver = self;
  v3.super_class = SKTextureAtlas;
  [(SKTextureAtlas *)&v3 dealloc];
}

- (id)findTextureNamedFromAtlas:(id)atlas
{
  v49 = *MEMORY[0x277D85DE8];
  atlasCopy = atlas;
  std::string::basic_string[abi:ne200100]<0>(__p, [atlasCopy UTF8String]);
  v5 = std::__hash_table<std::__hash_value_type<std::string,SKTexture * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKTexture * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKTexture * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKTexture * {__strong}>>>::find<std::string>(&self->_textureMap.__table_.__bucket_list_.__ptr_, __p);
  if (v5)
  {
    v6 = v5[5];
  }

  else
  {
    pathExtension = [atlasCopy pathExtension];
    selfCopy = self;
    v8 = [pathExtension length];

    v29 = +[SKTextureAtlas getSupportedPostfixes];
    v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v29, "count")}];
    if (v8)
    {
      stringByDeletingPathExtension = [atlasCopy stringByDeletingPathExtension];

      atlasCopy = stringByDeletingPathExtension;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v11 = v29;
    v12 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v12)
    {
      v13 = *v41;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v41 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = [atlasCopy stringByAppendingString:*(*(&v40 + 1) + 8 * i)];
          [v9 addObject:v15];
        }

        v12 = [v11 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v12);
    }

    if (selfCopy->_textureDict)
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v16 = v9;
      v27 = v16;
      v25 = [v16 countByEnumeratingWithState:&v36 objects:v47 count:16];
      if (v25)
      {
        v26 = *v37;
        do
        {
          for (j = 0; j != v25; ++j)
          {
            if (*v37 != v26)
            {
              objc_enumerationMutation(v16);
            }

            v17 = *(*(&v36 + 1) + 8 * j);
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v35 = 0u;
            obj = [(NSDictionary *)selfCopy->_textureDict allKeys];
            v18 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
            if (v18)
            {
              v19 = *v33;
              while (2)
              {
                for (k = 0; k != v18; ++k)
                {
                  if (*v33 != v19)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v21 = *(*(&v32 + 1) + 8 * k);
                  stringByDeletingPathExtension2 = [v21 stringByDeletingPathExtension];

                  if (![stringByDeletingPathExtension2 caseInsensitiveCompare:v17])
                  {
                    v23 = [(NSDictionary *)selfCopy->_textureDict objectForKey:v21];
                    v6 = [v23 copy];
                    [v6 setRootAtlas:selfCopy];

                    goto LABEL_31;
                  }
                }

                v18 = [obj countByEnumeratingWithState:&v32 objects:v46 count:16];
                if (v18)
                {
                  continue;
                }

                break;
              }
            }

            v16 = v27;
          }

          v25 = [v27 countByEnumeratingWithState:&v36 objects:v47 count:16];
        }

        while (v25);
      }
    }

    v6 = [0 copy];
    [v6 setRootAtlas:selfCopy];
LABEL_31:
  }

  if (v45 < 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

- (SKTexture)textureNamed:(NSString *)name
{
  v3 = [(SKTextureAtlas *)self findTextureNamedFromAtlas:name];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [SKTexture _textureWithImageNamed:@"MissingResource.png"];
  }

  v6 = v5;

  return v6;
}

- (id).cxx_construct
{
  *(self + 2) = 0u;
  *(self + 3) = 0u;
  *(self + 16) = 1065353216;
  return self;
}

+ (CGImage)createCGImageFromCUINamedImage:(CGImage *)image withSize:(CGSize)size atRect:(CGRect)rect
{
  if (!image)
  {
    return 0;
  }

  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v9 = size.height;
  v10 = size.width;
  v12 = size.width;
  v13 = size.height;
  v14 = malloc_type_malloc((4 * v13 * v12), 0x100004077774924uLL);
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v16 = CGBitmapContextCreate(v14, v12, v13, 8uLL, (4 * v12), DeviceRGB, 0x4001u);
  CGColorSpaceRelease(DeviceRGB);
  v19.origin.x = 0.0;
  v19.origin.y = 0.0;
  v19.size.width = v10;
  v19.size.height = v9;
  CGContextClearRect(v16, v19);
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  CGContextDrawImage(v16, v20, image);
  Image = CGBitmapContextCreateImage(v16);
  CGContextRelease(v16);
  free(v14);
  return Image;
}

+ (id)getSupportedPostfixes
{
  if (!+[SKTextureAtlas(Internal) getSupportedPostfixes]::s_postfixes)
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    v6 = v5;

    if (userInterfaceIdiom == 1)
    {
      v7 = &unk_282E2D558;
      v8 = +[SKTextureAtlas(Internal) getSupportedPostfixes]::s_postfixes;
      if (v6 >= 2.0)
      {
        v7 = &unk_282E2D540;
      }
    }

    else if (v6 < 2.0)
    {
      v8 = +[SKTextureAtlas(Internal) getSupportedPostfixes]::s_postfixes;
      v7 = &unk_282E2D5B8;
    }

    else
    {
      mainScreen2 = [MEMORY[0x277D759A0] mainScreen];
      currentMode = [mainScreen2 currentMode];
      [currentMode size];
      v12 = v11;

      mainScreen3 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen3 bounds];
      v15 = v14;

      mainScreen4 = [MEMORY[0x277D759A0] mainScreen];
      [mainScreen4 bounds];
      v18 = v17;

      if (v15 >= v18)
      {
        v19 = v15;
      }

      else
      {
        v19 = v18;
      }

      v8 = +[SKTextureAtlas(Internal) getSupportedPostfixes]::s_postfixes;
      if (v19 == 736.0)
      {
        v7 = &unk_282E2D570;
      }

      else
      {
        v7 = &unk_282E2D5A0;
        if (v12 == 1136.0)
        {
          v7 = &unk_282E2D588;
        }
      }
    }

    +[SKTextureAtlas(Internal) getSupportedPostfixes]::s_postfixes = v7;
  }

  v20 = +[SKTextureAtlas(Internal) getSupportedPostfixes]::s_postfixes;

  return v20;
}

+ (id)findTextureNamed:(id)named
{
  v79 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  pathExtension = [namedCopy pathExtension];
  v5 = [pathExtension length];

  if (v5)
  {
    stringByDeletingPathExtension = [namedCopy stringByDeletingPathExtension];

    namedCopy = stringByDeletingPathExtension;
  }

  if (_atlasDict)
  {
    keyEnumerator = [_atlasDict keyEnumerator];
    for (i = 0; ; i = nextObject)
    {
      nextObject = [keyEnumerator nextObject];

      if (!nextObject)
      {

        goto LABEL_9;
      }

      v10 = [_atlasDict objectForKey:nextObject];
      v11 = [v10 findTextureNamedFromAtlas:namedCopy];
      if (v11)
      {
        break;
      }
    }

    v13 = v11;

    v36 = v13;
  }

  else
  {
LABEL_9:
    v12 = SKGetResourceBundle();
    v13 = [v12 pathsForResourcesOfType:@".atlasc" inDirectory:&stru_282E190D8];

    if (v13)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      obj = v13;
      v14 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
      if (v14)
      {
        v47 = *v71;
        do
        {
          v45 = v14;
          for (j = 0; j != v45; ++j)
          {
            if (*v71 != v47)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v70 + 1) + 8 * j);
            lastPathComponent = [v16 lastPathComponent];
            v17 = [_atlasDict objectForKey:?];
            v18 = v17 == 0;

            if (v18)
            {
              stringByDeletingPathExtension2 = [lastPathComponent stringByDeletingPathExtension];
              v20 = [v16 stringByAppendingPathComponent:stringByDeletingPathExtension2];

              v51 = [v20 stringByAppendingString:@".plist"];

              v21 = [_offlineAtlasCache objectForKey:v51];
              if (!v21)
              {
                v21 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v51];
                if (v21)
                {
                  [_offlineAtlasCache setObject:v21 forKey:v51];
                }
              }

              v46 = v21;
              v48 = +[SKTextureAtlas getSupportedPostfixes];
              v22 = [v21 objectForKey:@"images"];
              v68 = 0u;
              v69 = 0u;
              v66 = 0u;
              v67 = 0u;
              v49 = v22;
              v39 = [v49 countByEnumeratingWithState:&v66 objects:v77 count:16];
              if (v39)
              {
                v41 = *v67;
                do
                {
                  for (k = 0; k != v39; ++k)
                  {
                    if (*v67 != v41)
                    {
                      objc_enumerationMutation(v49);
                    }

                    v23 = [*(*(&v66 + 1) + 8 * k) objectForKey:@"subimages"];
                    v64 = 0u;
                    v65 = 0u;
                    v62 = 0u;
                    v63 = 0u;
                    v50 = v23;
                    v40 = [v50 countByEnumeratingWithState:&v62 objects:v76 count:16];
                    if (v40)
                    {
                      v42 = *v63;
                      do
                      {
                        for (m = 0; m != v40; ++m)
                        {
                          if (*v63 != v42)
                          {
                            objc_enumerationMutation(v50);
                          }

                          v24 = [*(*(&v62 + 1) + 8 * m) objectForKey:@"name"];
                          v25 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v48, "count")}];
                          v60 = 0u;
                          v61 = 0u;
                          v58 = 0u;
                          v59 = 0u;
                          v26 = v48;
                          v27 = [v26 countByEnumeratingWithState:&v58 objects:v75 count:16];
                          if (v27)
                          {
                            v28 = *v59;
                            do
                            {
                              for (n = 0; n != v27; ++n)
                              {
                                if (*v59 != v28)
                                {
                                  objc_enumerationMutation(v26);
                                }

                                v30 = [namedCopy stringByAppendingString:*(*(&v58 + 1) + 8 * n)];
                                [v25 addObject:v30];
                              }

                              v27 = [v26 countByEnumeratingWithState:&v58 objects:v75 count:16];
                            }

                            while (v27);
                          }

                          stringByDeletingPathExtension3 = [v24 stringByDeletingPathExtension];

                          v56 = 0u;
                          v57 = 0u;
                          v54 = 0u;
                          v55 = 0u;
                          v32 = v25;
                          v33 = [v32 countByEnumeratingWithState:&v54 objects:v74 count:16];
                          if (v33)
                          {
                            v34 = *v55;
                            while (2)
                            {
                              for (ii = 0; ii != v33; ++ii)
                              {
                                if (*v55 != v34)
                                {
                                  objc_enumerationMutation(v32);
                                }

                                if (![stringByDeletingPathExtension3 caseInsensitiveCompare:*(*(&v54 + 1) + 8 * ii)])
                                {
                                  v37 = [SKTextureAtlas atlasNamed:lastPathComponent];
                                  v36 = [v37 textureNamed:namedCopy];

                                  v13 = v36;
                                  goto LABEL_56;
                                }
                              }

                              v33 = [v32 countByEnumeratingWithState:&v54 objects:v74 count:16];
                              if (v33)
                              {
                                continue;
                              }

                              break;
                            }
                          }
                        }

                        v40 = [v50 countByEnumeratingWithState:&v62 objects:v76 count:16];
                      }

                      while (v40);
                    }
                  }

                  v39 = [v49 countByEnumeratingWithState:&v66 objects:v77 count:16];
                }

                while (v39);
              }
            }
          }

          v14 = [obj countByEnumeratingWithState:&v70 objects:v78 count:16];
        }

        while (v14);
      }

      v36 = 0;
      v13 = obj;
    }

    else
    {
      v36 = 0;
    }
  }

LABEL_56:

  return v36;
}

+ (id)lookupCachedTextureNamed:(id)named
{
  v21 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  pathExtension = [namedCopy pathExtension];
  v5 = [pathExtension length];

  if (v5)
  {
    stringByDeletingPathExtension = [namedCopy stringByDeletingPathExtension];

    namedCopy = stringByDeletingPathExtension;
  }

  objectEnumerator = [_atlasDict objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = allObjects;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) findTextureNamedFromAtlas:{namedCopy, v16}];
        if (v13)
        {
          v14 = v13;

          v10 = v14;
          goto LABEL_13;
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v14 = v9;
LABEL_13:

  return v10;
}

- (void)unload
{
  [_atlasDict removeObjectForKey:self->_atlasName];
  textureDict = self->_textureDict;
  self->_textureDict = 0;

  std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::clear(&self->_textureMap);
}

+ (void)_exportAtlasWithDictionary:(id)dictionary toFile:(id)file
{
  dictionaryCopy = dictionary;
  fileCopy = file;
  [objc_opt_class() _exportAtlasWithDictionary:dictionaryCopy toFile:fileCopy forcePOT:0];
}

+ (void)_exportAtlasWithDictionary:(id)dictionary toFile:(id)file forcePOT:(BOOL)t
{
  tCopy = t;
  v37 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  fileCopy = file;
  v25 = dictionaryCopy;
  v35 = 0;
  v26 = objc_alloc_init(SKTextureAtlasPacker);
  [(SKTextureAtlasPacker *)v26 generateTextureAtlasImages:dictionaryCopy outputDictionary:&v35 forcePOT:tCopy];
  v27 = v35;
  pathExtension = [fileCopy pathExtension];
  LOBYTE(file) = [pathExtension caseInsensitiveCompare:@"plist"] == 0;

  if ((file & 1) == 0)
  {
    v9 = [fileCopy stringByAppendingPathExtension:@"plist"];

    fileCopy = v9;
  }

  if (v27)
  {
    [v27 objectForKey:@"images"];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    obj = v32 = 0u;
    v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v10)
    {
      v11 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * i);
          v14 = [v13 objectForKey:@"path"];
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@".%ld.png", 1];
          lastPathComponent = [fileCopy lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

          v18 = [stringByDeletingPathExtension stringByAppendingString:v15];

          stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
          v20 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:v18];

          v21 = UIImagePNGRepresentation(v14);
          [v21 writeToFile:v20 atomically:1];

          [v13 setObject:v18 forKey:@"path"];
        }

        v10 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v10);
    }

    v30 = 0;
    v22 = [MEMORY[0x277CCAC58] dataWithPropertyList:v27 format:200 options:0 error:&v30];
    v23 = v30;
    if (v22)
    {
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager createFileAtPath:fileCopy contents:v22 attributes:0];
    }
  }
}

- (id)_copyImageData
{
  textureDict = self->_textureDict;
  if (!textureDict)
  {
    return 0;
  }

  allValues = [(NSDictionary *)textureDict allValues];
  v4 = [allValues objectAtIndex:0];
  _copyImageData = [v4 _copyImageData];

  return _copyImageData;
}

@end