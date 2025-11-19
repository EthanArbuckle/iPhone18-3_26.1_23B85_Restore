@interface SKBitmapFont
+ (id)_fontForFileNamed:(id)a3;
+ (id)fontForFileNamed:(id)a3;
+ (id)fontWithTexture:(id)a3 fontDataString:(id)a4;
- (BOOL)loadFontWithTexture:(id)a3 fontDataString:(id)a4;
- (SKBitmapFont)init;
- (SKBitmapFont)initWithCoder:(id)a3;
- (double)advanceForCharacterNamed:(unsigned __int16)a3;
- (double)kerningForCharacterNamed:(unsigned __int16)a3 followedBy:(unsigned __int16)a4;
- (id).cxx_construct;
- (id)spriteForCharacterNamed:(unsigned __int16)a3;
@end

@implementation SKBitmapFont

- (SKBitmapFont)init
{
  v17.receiver = self;
  v17.super_class = SKBitmapFont;
  v2 = [(SKBitmapFont *)&v17 init];
  v3 = v2;
  if (v2)
  {
    v2->_internal = 0;
    v15 = 0;
    v16 = 0;
    v14 = &v15;
    p_end_node = &v2->_characterSpriteByChar.__tree_.__end_node_;
    std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(&v2->_characterSpriteByChar, v2->_characterSpriteByChar.__tree_.__end_node_.__left_);
    v5 = v15;
    v3->_characterSpriteByChar.__tree_.__begin_node_ = &v15;
    p_end_node->__left_ = v5;
    v6 = v16;
    v3->_characterSpriteByChar.__tree_.__size_ = v16;
    if (v6)
    {
      v5[2] = p_end_node;
      v14 = &v15;
      v15 = 0;
      v16 = 0;
      v5 = 0;
    }

    else
    {
      v3->_characterSpriteByChar.__tree_.__begin_node_ = p_end_node;
    }

    std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(&v14, v5);
    v15 = 0;
    v16 = 0;
    v14 = &v15;
    v7 = &v3->_characterAdvanceByChar.__tree_.__end_node_;
    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&v3->_characterAdvanceByChar, v3->_characterAdvanceByChar.__tree_.__end_node_.__left_);
    v8 = v15;
    v3->_characterAdvanceByChar.__tree_.__begin_node_ = v14;
    v3->_characterAdvanceByChar.__tree_.__end_node_.__left_ = v8;
    v9 = v16;
    v3->_characterAdvanceByChar.__tree_.__size_ = v16;
    if (v9)
    {
      v8[2] = v7;
      v14 = &v15;
      v15 = 0;
      v16 = 0;
      v8 = 0;
    }

    else
    {
      v3->_characterAdvanceByChar.__tree_.__begin_node_ = v7;
    }

    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&v14, v8);
    v15 = 0;
    v16 = 0;
    v14 = &v15;
    v10 = &v3->_characterKerningByCharPair.__tree_.__end_node_;
    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&v3->_characterKerningByCharPair, v3->_characterKerningByCharPair.__tree_.__end_node_.__left_);
    v11 = v15;
    v3->_characterKerningByCharPair.__tree_.__begin_node_ = v14;
    v3->_characterKerningByCharPair.__tree_.__end_node_.__left_ = v11;
    v12 = v16;
    v3->_characterKerningByCharPair.__tree_.__size_ = v16;
    if (v12)
    {
      v11[2] = v10;
      v14 = &v15;
      v15 = 0;
      v16 = 0;
      v11 = 0;
    }

    else
    {
      v3->_characterKerningByCharPair.__tree_.__begin_node_ = v10;
    }

    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&v14, v11);
    if (onceToken != -1)
    {
      [SKBitmapFont init];
    }
  }

  return v3;
}

void __20__SKBitmapFont_init__block_invoke()
{
  v0 = [SKThreadSafeMapTable alloc];
  v3 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v1 = [(SKThreadSafeMapTable *)v0 initWithNSMapTable:?];
  v2 = _fontDict;
  _fontDict = v1;
}

- (SKBitmapFont)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = SKBitmapFont;
  v5 = [(SKBitmapFont *)&v26 init];
  v6 = v5;
  if (v5)
  {
    v5->_internal = 0;
    v24 = 0;
    v25 = 0;
    v23 = &v24;
    p_end_node = &v5->_characterSpriteByChar.__tree_.__end_node_;
    std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(&v5->_characterSpriteByChar, v5->_characterSpriteByChar.__tree_.__end_node_.__left_);
    v8 = v24;
    v6->_characterSpriteByChar.__tree_.__begin_node_ = &v24;
    p_end_node->__left_ = v8;
    v9 = v25;
    v6->_characterSpriteByChar.__tree_.__size_ = v25;
    if (v9)
    {
      v8[2] = p_end_node;
      v23 = &v24;
      v24 = 0;
      v25 = 0;
      v8 = 0;
    }

    else
    {
      v6->_characterSpriteByChar.__tree_.__begin_node_ = p_end_node;
    }

    std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(&v23, v8);
    v24 = 0;
    v25 = 0;
    v23 = &v24;
    v10 = &v6->_characterAdvanceByChar.__tree_.__end_node_;
    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&v6->_characterAdvanceByChar, v6->_characterAdvanceByChar.__tree_.__end_node_.__left_);
    v11 = v24;
    v6->_characterAdvanceByChar.__tree_.__begin_node_ = v23;
    v6->_characterAdvanceByChar.__tree_.__end_node_.__left_ = v11;
    v12 = v25;
    v6->_characterAdvanceByChar.__tree_.__size_ = v25;
    if (v12)
    {
      v11[2] = v10;
      v23 = &v24;
      v24 = 0;
      v25 = 0;
      v11 = 0;
    }

    else
    {
      v6->_characterAdvanceByChar.__tree_.__begin_node_ = v10;
    }

    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&v23, v11);
    v24 = 0;
    v25 = 0;
    v23 = &v24;
    v13 = &v6->_characterKerningByCharPair.__tree_.__end_node_;
    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&v6->_characterKerningByCharPair, v6->_characterKerningByCharPair.__tree_.__end_node_.__left_);
    v14 = v24;
    v6->_characterKerningByCharPair.__tree_.__begin_node_ = v23;
    v6->_characterKerningByCharPair.__tree_.__end_node_.__left_ = v14;
    v15 = v25;
    v6->_characterKerningByCharPair.__tree_.__size_ = v25;
    if (v15)
    {
      v14[2] = v13;
      v23 = &v24;
      v24 = 0;
      v25 = 0;
      v14 = 0;
    }

    else
    {
      v6->_characterKerningByCharPair.__tree_.__begin_node_ = v13;
    }

    std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&v23, v14);
    if (onceToken != -1)
    {
      [SKBitmapFont initWithCoder:];
    }

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fileName"];
    fileName = v6->_fileName;
    v6->_fileName = v16;

    v18 = SKGetResourceBundle();
    v19 = [v18 pathForResource:v6->_fileName ofType:@"fnt"];
    filePath = v6->_filePath;
    v6->_filePath = v19;

    v21 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v6->_filePath encoding:4 error:0];
    [(SKBitmapFont *)v6 loadFontWithTexture:0 fontDataString:v21];
  }

  return v6;
}

void __30__SKBitmapFont_initWithCoder___block_invoke()
{
  v0 = [SKThreadSafeMapTable alloc];
  v3 = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
  v1 = [(SKThreadSafeMapTable *)v0 initWithNSMapTable:?];
  v2 = _fontDict;
  _fontDict = v1;
}

- (BOOL)loadFontWithTexture:(id)a3 fontDataString:(id)a4
{
  v176 = a3;
  v170 = a4;
  v177 = self;
  obj = objc_opt_new();
  v184[0] = 0;
  v184[1] = 0;
  v182[1] = 0;
  v183 = v184;
  v181 = v182;
  v182[0] = 0;
  v180[0] = 0;
  v180[1] = 0;
  v179 = v180;
  v175 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:0];
  v6 = v170;
  if (v6)
  {
    v168 = v6;
    v7 = [v6 componentsSeparatedByString:@"\n"];
    v8 = [v7 objectAtIndex:0];
    v9 = [v8 rangeOfString:@"info face="];
    v11 = [v8 substringFromIndex:v9 + v10];

    v167 = [v11 substringToIndex:{objc_msgSend(v11, "rangeOfString:", @""}];
    objc_storeStrong(&v177->_fontName, v167);
    v12 = [v7 objectAtIndex:1];

    v13 = [v12 rangeOfString:@"common lineHeight="];
    v15 = [v12 substringFromIndex:v13 + v14];

    v16 = [v15 substringToIndex:{objc_msgSend(v15, "rangeOfString:", @" "}];
    [v16 doubleValue];
    v177->_lineHeight = v17;

    v18 = [v15 rangeOfString:@"base="];
    v20 = [v15 substringFromIndex:v18 + v19];

    v21 = [v20 substringToIndex:{objc_msgSend(v20, "rangeOfString:", @" "}];
    [v21 doubleValue];
    v177->_baseLine = v22;

    v23 = [v7 objectAtIndex:2];

    v24 = [v23 rangeOfString:@"file="];
    v26 = [v23 substringFromIndex:v24 + v25];

    v169 = [v26 substringToIndex:{objc_msgSend(v26, "rangeOfString:", @""}];
    if (!v176)
    {
      if (v177->_internal)
      {
        [SKTexture _textureWithImageNamed:v169];
      }

      else
      {
        [SKTexture textureWithImageNamed:v169];
      }
      v176 = ;
    }

    v28 = [v7 objectAtIndex:3];

    v29 = [v28 rangeOfString:@"chars count="];
    v31 = [v28 substringFromIndex:v29 + v30];

    v32 = [v31 intValue];
    v27 = 0;
    if (v32 >= 1 && v176)
    {
      if ([v7 count] >= (v32 + 4))
      {
        v166 = (v32 + 4);
        v173 = v7;
        [v176 pixelSize];
        v172 = v33;
        v35 = v34;
        v165 = v32;
        v171 = -v32;
        v36 = 4;
        do
        {
          LOWORD(v178) = 0;
          v37 = [v173 objectAtIndex:v36];

          v38 = [v37 rangeOfString:@"id="];
          v40 = [v37 substringFromIndex:v38 + v39];

          v41 = [v40 rangeOfString:@" "];
          v43 = v42;
          v44 = [v40 substringToIndex:v41];
          v45 = [v44 intValue];

          v46 = [v40 substringFromIndex:v41 + v43];

          v47 = [v46 rangeOfString:@"x="];
          v49 = [v46 substringFromIndex:v47 + v48];

          v50 = [v49 rangeOfString:@" "];
          v52 = v51;
          v53 = [v49 substringToIndex:v50];
          [v53 doubleValue];
          v55 = v54;

          v56 = [v49 substringFromIndex:v50 + v52];

          v57 = [v56 rangeOfString:@"y="];
          v59 = [v56 substringFromIndex:v57 + v58];

          v60 = [v59 rangeOfString:@" "];
          v62 = v61;
          v63 = [v59 substringToIndex:v60];
          [v63 doubleValue];
          v65 = v64;

          v66 = [v59 substringFromIndex:v60 + v62];

          v67 = [v66 rangeOfString:@"width="];
          v69 = [v66 substringFromIndex:v67 + v68];

          v70 = [v69 rangeOfString:@" "];
          v72 = v71;
          v73 = [v69 substringToIndex:v70];
          [v73 doubleValue];
          v75 = v74;

          v76 = [v69 substringFromIndex:v70 + v72];

          v77 = [v76 rangeOfString:@"height="];
          v79 = [v76 substringFromIndex:v77 + v78];

          v80 = [v79 rangeOfString:@" "];
          v82 = v81;
          v83 = [v79 substringToIndex:v80];
          [v83 doubleValue];
          v85 = v84;

          v86 = [v79 substringFromIndex:v80 + v82];

          v87 = [v86 rangeOfString:@"xoffset="];
          v89 = [v86 substringFromIndex:v87 + v88];

          v90 = [v89 rangeOfString:@" "];
          v92 = v91;
          v93 = [v89 substringToIndex:v90];
          [v93 doubleValue];
          v95 = v94;

          v96 = [v89 substringFromIndex:v90 + v92];

          v97 = [v96 rangeOfString:@"yoffset="];
          v99 = [v96 substringFromIndex:v97 + v98];

          v100 = [v99 rangeOfString:@" "];
          v102 = v101;
          v103 = [v99 substringToIndex:v100];
          [v103 doubleValue];
          v105 = v104;

          v106 = [v99 substringFromIndex:v100 + v102];

          v107 = [v106 rangeOfString:@"xadvance="];
          v109 = [v106 substringFromIndex:v107 + v108];

          v110 = [v109 rangeOfString:@" "];
          v112 = v111;
          v113 = [v109 substringToIndex:v110];
          [v113 doubleValue];
          v115 = v114;

          v116 = [v109 substringFromIndex:v110 + v112];

          v117 = [v116 rangeOfString:@"letter="];
          v119 = [v116 substringFromIndex:v117 + v118];

          v120 = [v119 substringToIndex:{objc_msgSend(v119, "rangeOfString:", @""}];
          if ([(__CFString *)v120 isEqualToString:@"space"])
          {
            LOWORD(v178) = 32;

            v120 = @" ";
          }

          else if ([(__CFString *)v120 length])
          {
            LOWORD(v178) = [(__CFString *)v120 characterAtIndex:0];
          }

          else
          {
            LOWORD(v178) = 0;
          }

          v121 = [SKTexture textureWithRect:v176 inTexture:v55 / v172, (v35 - (v65 + v85)) / v35, v75 / v172, v85 / v35];
          if (SKGetGlobalFlippedFlag())
          {
            v122 = [SKSpriteNode spriteNodeWithTexture:v121];
            [v122 setAnchorPoint:{0.0, 0.0}];
            v123 = v122;
            [v122 setPosition:{v95, v105 - v177->_lineHeight}];
          }

          else
          {
            v124 = [SKSpriteNode spriteNodeWithTexture:v121];
            [v124 setAnchorPoint:{0.0, 1.0}];
            v123 = v124;
            [v124 setPosition:{v95, v177->_lineHeight - v105}];
          }

          [obj addObject:v123];
          v185 = &v178;
          v125 = std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v183, &v178);
          objc_storeStrong(v125 + 5, v123);
          v185 = &v178;
          std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v181, &v178)[5] = v115;
          v126 = [MEMORY[0x277CCABB0] numberWithInt:v45];
          [v175 setObject:v120 forKey:v126];

          ++v36;
          v31 = v119;
        }

        while (v171 + v36 != 4);
        if ([v173 count] > v166)
        {
          v127 = [v173 objectAtIndex:v166];

          v128 = [v127 rangeOfString:@"kernings count="];
          if (v128 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v119 = v127;
          }

          else
          {
            v130 = [v127 substringFromIndex:v128 + v129];

            v131 = [v130 intValue];
            if ([v173 count] <= (v131 + v166) || v131 < 1)
            {
              v119 = v130;
            }

            else
            {
              v132 = v131;
              v133 = (v165 + 5);
              v119 = v130;
              do
              {
                v134 = [v173 objectAtIndex:v133];

                v135 = [v134 rangeOfString:@"first="];
                v137 = [v134 substringFromIndex:v135 + v136];

                v138 = [v137 rangeOfString:@" "];
                v140 = v139;
                v141 = [v137 substringToIndex:v138];
                v142 = [v141 intValue];

                v143 = [v137 substringFromIndex:v138 + v140];

                v144 = [v143 rangeOfString:@"second="];
                v146 = [v143 substringFromIndex:v144 + v145];

                v147 = [v146 rangeOfString:@" "];
                v149 = v148;
                v150 = [v146 substringToIndex:v147];
                v151 = [v150 intValue];

                v152 = [v146 substringFromIndex:v147 + v149];

                v153 = [v152 rangeOfString:@"amount="];
                v119 = [v152 substringFromIndex:v153 + v154];

                [v119 doubleValue];
                v156 = v155;
                v157 = [MEMORY[0x277CCABB0] numberWithInt:v142];
                v158 = [v175 objectForKey:v157];
                v159 = [v158 characterAtIndex:0];

                v160 = [MEMORY[0x277CCABB0] numberWithInt:v151];
                v161 = [v175 objectForKey:v160];
                v162 = [v161 characterAtIndex:0];

                if (v159 && v162)
                {
                  v178 = v162 | (v159 << 16);
                  v185 = &v178;
                  std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v179, &v178)[5] = v156;
                }

                ++v133;
                --v132;
              }

              while (v132);
            }
          }
        }

        objc_storeStrong(&v177->_characterSprites, obj);
        v7 = v173;
        if (&v177->_characterSpriteByChar != &v183)
        {
          std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__tree_node<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,void *> *,long>>(&v177->_characterSpriteByChar, v183, v184);
        }

        if (&v177->_characterAdvanceByChar != &v181)
        {
          std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned short,double>,std::__tree_node<std::__value_type<unsigned short,double>,void *> *,long>>(&v177->_characterAdvanceByChar, v181, v182);
        }

        if (&v177->_characterKerningByCharPair != &v179)
        {
          std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned int,double>,std::__tree_node<std::__value_type<unsigned int,double>,void *> *,long>>(&v177->_characterKerningByCharPair, v179, v180);
        }

        if (v177->_fileName)
        {
          [_fontDict setObject:? forKey:?];
        }

        v27 = 1;
        v31 = v119;
      }

      else
      {
        v27 = 0;
      }
    }

    v6 = v168;
  }

  else
  {
    v27 = 0;
  }

  v163 = v6;

  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&v179, v180[0]);
  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(&v181, v182[0]);
  std::__tree<std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,SKSpriteNode * {__strong}>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,SKSpriteNode * {__strong}>>>::destroy(&v183, v184[0]);

  return v27;
}

+ (id)fontForFileNamed:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [_fontDict objectForKey:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v8 = SKGetResourceBundle();
      v9 = [v8 pathForResource:v4 ofType:@"fnt"];

      if (v9)
      {
        v10 = objc_alloc_init(SKBitmapFont);
        objc_storeStrong(&v10->_fileName, a3);
        objc_storeStrong(&v10->_filePath, v9);
        v11 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v10->_filePath encoding:4 error:0];
        v12 = [(SKBitmapFont *)v10 loadFontWithTexture:0 fontDataString:v11];

        if (v12)
        {
          v7 = v10;
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)spriteForCharacterNamed:(unsigned __int16)a3
{
  v5 = a3;
  v6 = &v5;
  v3 = [std::__tree<std::__value_type<unsigned short SKSpriteNode * {:std::__map_value_compare<unsigned short :{std::__value_type<unsigned short, SKSpriteNode * {__strong}>, std::less<unsigned short>, true>, std::allocator<std::__value_type<unsigned short, SKSpriteNode * {__strong}>>>::__emplace_unique_key_args<unsigned short, std::piecewise_construct_t const&, std::tuple<unsigned short const&>, std::tuple<>>(&self->_characterSpriteByChar, &v5)[5], "copy"}strong}>];

  return v3;
}

- (double)advanceForCharacterNamed:(unsigned __int16)a3
{
  v4 = a3;
  v5 = &v4;
  return *(std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&self->_characterAdvanceByChar, &v4) + 5);
}

- (double)kerningForCharacterNamed:(unsigned __int16)a3 followedBy:(unsigned __int16)a4
{
  v5 = a4 | (a3 << 16);
  v6 = &v5;
  return *(std::__tree<std::__value_type<unsigned int,double>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,double>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,double>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&self->_characterKerningByCharPair, &v5) + 5);
}

+ (id)fontWithTexture:(id)a3 fontDataString:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = objc_alloc_init(SKBitmapFont);
    if ([(SKBitmapFont *)v7 loadFontWithTexture:v5 fontDataString:v6])
    {
      goto LABEL_5;
    }
  }

  v7 = 0;
LABEL_5:

  return v7;
}

- (id).cxx_construct
{
  *(self + 7) = 0;
  *(self + 6) = self + 56;
  *(self + 10) = 0;
  *(self + 8) = 0;
  *(self + 9) = self + 80;
  *(self + 14) = 0;
  *(self + 13) = 0;
  *(self + 11) = 0;
  *(self + 12) = self + 104;
  return self;
}

+ (id)_fontForFileNamed:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 pathForResource:v4 ofType:@"fnt"];

    v7 = [_fontDict objectForKey:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v10 = objc_alloc_init(SKBitmapFont);
      objc_storeStrong(&v10->_fileName, v6);
      objc_storeStrong(&v10->_filePath, v6);
      v10->_internal = 1;
      v11 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v10->_filePath encoding:4 error:0];
      v12 = [(SKBitmapFont *)v10 loadFontWithTexture:0 fontDataString:v11];

      if (v12)
      {
        v9 = v10;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end