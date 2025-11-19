@interface SKShader
+ (SKShader)shader;
+ (SKShader)shaderWithFileNamed:(NSString *)name;
+ (SKShader)shaderWithSource:(NSString *)source;
+ (SKShader)shaderWithSource:(NSString *)source uniforms:(NSArray *)uniforms;
+ (id)precompiledMetalShaderWithFile:(id)a3 uniforms:(id)a4;
- (BOOL)isEqualToShader:(id)a3;
- (BOOL)isValid;
- (NSArray)_textureUniforms;
- (NSArray)attributes;
- (NSArray)uniforms;
- (NSString)source;
- (SKShader)initWithCoder:(id)a3;
- (SKShader)initWithSource:(NSString *)source uniforms:(NSArray *)uniforms;
- (SKUniform)uniformNamed:(NSString *)name;
- (id).cxx_construct;
- (id)_fullMetalVertexSourceWithImplementation:(BOOL)a3;
- (id)_fullVertexSourceWithImplementation:(int64_t)a3;
- (id)_generateMetalSource;
- (id)_getLegacyUniformData;
- (id)_getMetalFragmentFunctionName;
- (id)_getMetalFragmentShaderSource;
- (id)_getMetalVertexOutDefinition;
- (id)_getMetalVertexShaderSource:(BOOL)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)fragmentPrelude;
- (id)fragmentPreludeMetal;
- (id)fullFragmentSource;
- (id)fullMetalFragmentSource;
- (shared_ptr<jet_command_buffer>)_commands;
- (shared_ptr<jet_program>)_backingProgram;
- (shared_ptr<jet_program>)_backingProgramWithTransform;
- (shared_ptr<jet_program>)_makeBackingProgramWithImplementation:(int64_t)a3;
- (void)_removeTargetNode:(id)a3;
- (void)_setUniformsDirty;
- (void)addUniform:(SKUniform *)uniform;
- (void)encodeWithCoder:(id)a3;
- (void)generateFragmentAttributeDeclares:(id *)a3;
- (void)generateVertexAttributeDeclares:(id *)a3 statements:(id *)a4;
- (void)removeUniformNamed:(NSString *)name;
- (void)setAttributes:(NSArray *)attributes;
- (void)setSource:(NSString *)source;
- (void)setUniforms:(NSArray *)uniforms;
@end

@implementation SKShader

- (SKShader)initWithSource:(NSString *)source uniforms:(NSArray *)uniforms
{
  v6 = source;
  v7 = uniforms;
  v14.receiver = self;
  v14.super_class = SKShader;
  v8 = [(SKShader *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
    targetNodes = v8->_targetNodes;
    v8->_targetNodes = v9;

    v11 = [MEMORY[0x277CBEB38] dictionary];
    uniformData = v8->_uniformData;
    v8->_uniformData = v11;

    *&v8->_usesTimeUniform = 0;
    v8->_isPrecompiledMetal = 0;
    [(SKShader *)v8 setUniforms:v7];
    [(SKShader *)v8 setSource:v6];
  }

  return v8;
}

+ (SKShader)shader
{
  v2 = objc_alloc_init(objc_opt_class());

  return v2;
}

+ (SKShader)shaderWithSource:(NSString *)source
{
  v3 = source;
  v4 = [objc_alloc(objc_opt_class()) initWithSource:v3];

  return v4;
}

+ (SKShader)shaderWithSource:(NSString *)source uniforms:(NSArray *)uniforms
{
  v5 = source;
  v6 = uniforms;
  v7 = [objc_alloc(objc_opt_class()) initWithSource:v5 uniforms:v6];

  return v7;
}

+ (SKShader)shaderWithFileNamed:(NSString *)name
{
  v4 = name;
  if ([(NSString *)v4 hasSuffix:@".fsh"])
  {
    v5 = SKGetResourceBundle();
    [v5 pathForResource:v4 ofType:0];
  }

  else
  {
    v5 = SKGetResourceBundle();
    [v5 pathForResource:v4 ofType:@"fsh"];
  }
  v6 = ;

  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v6 options:1 error:0];
    v8 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:objc_msgSend(v7 length:"bytes") encoding:objc_msgSend(v7 freeWhenDone:{"length"), 4, 0}];
    v9 = [objc_alloc(objc_opt_class()) initWithSource:v8];
    objc_storeStrong(v9 + 5, name);
  }

  else
  {
    NSLog(&cfstr_SkshaderFailed.isa, v4);
    v9 = 0;
  }

  return v9;
}

+ (id)precompiledMetalShaderWithFile:(id)a3 uniforms:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_alloc_init(objc_opt_class());
  v8 = v7[5];
  v7[5] = v5;
  v9 = v5;

  *(v7 + 48) = 1;
  v10 = v7[1];
  v7[1] = v6;

  return v7;
}

- (NSArray)attributes
{
  attributes = self->_attributes;
  if (!attributes)
  {
    self->_attributes = MEMORY[0x277CBEBF8];

    attributes = self->_attributes;
  }

  return attributes;
}

- (void)setAttributes:(NSArray *)attributes
{
  v4 = attributes;
  v5 = v4;
  if (v4)
  {
    v6 = [(NSArray *)v4 copy];
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = self->_attributes;
  self->_attributes = v6;

  *&self->_programDirty = 257;
  cntrl = self->_backingProgram.__cntrl_;
  self->_backingProgram.__ptr_ = 0;
  self->_backingProgram.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v9 = self->_backingProgramWithTransform.__cntrl_;
  self->_backingProgramWithTransform.__ptr_ = 0;
  self->_backingProgramWithTransform.__cntrl_ = 0;
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::destroy(&self->_attributeBuffers, self->_attributeBuffers.__tree_.__end_node_.__left_);
  self->_attributeBuffers.__tree_.__begin_node_ = &self->_attributeBuffers.__tree_.__end_node_;
  self->_attributeBuffers.__tree_.__size_ = 0;
  self->_attributeBuffers.__tree_.__end_node_.__left_ = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __26__SKShader_setAttributes___block_invoke;
  v10[3] = &unk_278310508;
  v10[4] = self;
  SKCPerformResourceOperation(v10);
}

void __26__SKShader_setAttributes___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  obj = *(*(a1 + 32) + 16);
  v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = MEMORY[0x277CCACA8];
        v8 = [v6 name];
        v9 = [v7 stringWithFormat:@"a_%@", v8];

        v10 = [v6 type] - 1;
        if (v10 < 8)
        {
          v11 = (*(**a2 + 16))(*a2, dword_21C4B9FE0[v10], dword_21C4B9FC0[v10], 40);
          std::shared_ptr<jet_buffer_pool>::shared_ptr[abi:ne200100]<jet_buffer_pool,0>(&v13, v11);
        }
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }
}

- (void)setSource:(NSString *)source
{
  v13 = source;
  v4 = [(NSString *)v13 copy];
  v5 = self->_source;
  self->_source = v4;

  fileName = self->_fileName;
  self->_fileName = 0;

  *&self->_programDirty = 257;
  cntrl = self->_backingProgram.__cntrl_;
  self->_backingProgram.__ptr_ = 0;
  self->_backingProgram.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v8 = self->_backingProgramWithTransform.__cntrl_;
  self->_backingProgramWithTransform.__ptr_ = 0;
  self->_backingProgramWithTransform.__cntrl_ = 0;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  *&self->_usesTimeUniform = 0;
  if (self->_source)
  {
    v9 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[^a-zA-Z0-9_](u_time)[^a-zA-Z0-9_]" options:1024 error:0];
    v10 = [v9 firstMatchInString:self->_source options:0 range:{0, -[NSString length](self->_source, "length")}];
    if (v10)
    {
      self->_usesTimeUniform = 1;
    }

    v11 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:@"[^a-zA-Z0-9_](u_path_length)[^a-zA-Z0-9_]" options:1024 error:0];

    v12 = [v11 firstMatchInString:self->_source options:0 range:{0, -[NSString length](self->_source, "length")}];

    if (v12)
    {
      self->_usesPathLengthUniform = 1;
    }
  }
}

- (NSString)source
{
  v2 = [(NSString *)self->_source copy];

  return v2;
}

- (NSArray)uniforms
{
  uniforms = self->_uniforms;
  if (uniforms)
  {
    v4 = [(NSMutableArray *)uniforms copy];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)fragmentPrelude
{
  v34 = *MEMORY[0x277D85DE8];
  v3 = [SKShader_preamble_fsh copy];
  v27 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_uniformData];
  v4 = [(SKShader *)self _getLegacyUniformData];
  v26 = v4;
  if (v4)
  {
    v5 = [v4 uniform];
    v6 = [v5 name];
    [v27 setObject:v26 forKey:v6];

    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  self->_usesSpriteSizeUniform = v7;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [v27 allValues];
  v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v8)
  {
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = [v11 uniform];
        v13 = [v12 name];
        v14 = [v12 uniformType];
        if (v14 <= 4)
        {
          if (v14 > 2)
          {
            v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"uniform mediump vec4 %@ ", v13];;
            v16 = [v3 stringByAppendingString:v15];
          }

          else if (v14 == 1)
          {
            v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"uniform mediump float %@ ", v13];;
            v16 = [v3 stringByAppendingString:v15];
          }

          else
          {
            if (v14 != 2)
            {
              goto LABEL_30;
            }

            v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"uniform mediump vec2 %@ ", v13];;
            v16 = [v3 stringByAppendingString:v15];
          }

          goto LABEL_28;
        }

        if (v14 <= 6)
        {
          if (v14 == 5)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"uniform mediump mat2 %@; ", v13];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"uniform mediump mat3 %@; ", v13];
          }
          v15 = ;
          v16 = [v3 stringByAppendingString:v15];
          goto LABEL_28;
        }

        if (v14 == 7)
        {
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"uniform mediump mat4 %@ ", v13];;
          v16 = [v3 stringByAppendingString:v15];
LABEL_28:
          v23 = v16;

LABEL_29:
          v3 = v23;
          goto LABEL_30;
        }

        if (v14 == 8)
        {
          v17 = [v12 textureValue];
          v18 = v17 == 0;

          if (!v18)
          {
            v19 = [v12 textureValue];
            v20 = [v19 textureTarget];

            if (v20 == 3553)
            {
              v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"uniform lowp sampler2D %@ ", v13];;
              v22 = [v3 stringByAppendingString:v21];

              v3 = v22;
            }

            v15 = [v12 textureValue];
            [v11 setTextureTarget:{objc_msgSend(v15, "textureTarget")}];
            v23 = v3;
            goto LABEL_29;
          }
        }

LABEL_30:
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  v24 = v3;
  return v3;
}

- (id)fragmentPreludeMetal
{
  v3 = [SKShader_Metal_preamble_fsh copy];
  v4 = [(SKShader *)self _getMetalVertexOutDefinition];
  v5 = [v3 stringByAppendingString:v4];

  return v5;
}

- (void)generateVertexAttributeDeclares:(id *)a3 statements:(id *)a4
{
  v20 = *MEMORY[0x277D85DE8];
  *a3 = @"\n\n/* Vertex Attribute Declares */\n";
  *a4 = @"\n\n/* Vertex Attribute Statements */\n";
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(SKShader *)self attributes];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [v10 type] - 1;
        if (v11 < 8)
        {
          v12 = off_278310550[v11];
          v13 = [v10 name];
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@attribute %@ a_%@\n", *a3, v12, v13];;
          *a3 = v14;
          *a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@varying mediump %@ %@\n", v14, v12, v13];;
          *a4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@ = a_%@\n", *a4, v13, v13];;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  *a3 = [*a3 stringByAppendingString:@"\n\n"];
  *a4 = [*a4 stringByAppendingString:@"\n\n"];
}

- (void)generateFragmentAttributeDeclares:(id *)a3
{
  v17 = *MEMORY[0x277D85DE8];
  *a3 = @"\n\n/* Fragment Attribute Declares */\n";
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(SKShader *)self attributes];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        v9 = [v8 type] - 1;
        if (v9 < 8)
        {
          v10 = off_278310550[v9];
          v11 = [v8 name];
          *a3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@varying mediump %@ %@\n", *a3, v10, v11];;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  *a3 = [*a3 stringByAppendingString:@"\n\n"];
}

- (id)_fullVertexSourceWithImplementation:(int64_t)a3
{
  v18 = 0;
  v19 = 0;
  [(SKShader *)self generateVertexAttributeDeclares:&v19 statements:&v18];
  v4 = v19;
  v5 = v18;
  if (a3)
  {
    v6 = [SKShader_declares_with_transform_vsh copy];
    v7 = [v6 stringByAppendingString:v4];

    v8 = [SKShader_begin_main_with_transform_vsh copy];
    v9 = [v7 stringByAppendingString:v8];

    v10 = [v9 stringByAppendingString:v5];

    v11 = [SKShader_end_main_with_transform_vsh copy];
  }

  else
  {
    v12 = [SKShader_declares_vsh copy];
    v13 = [v12 stringByAppendingString:v4];

    v14 = [SKShader_begin_main_vsh copy];
    v15 = [v13 stringByAppendingString:v14];

    v10 = [v15 stringByAppendingString:v5];

    v11 = [SKShader_end_main_vsh copy];
  }

  v16 = [v10 stringByAppendingString:v11];

  return v16;
}

- (id)fullFragmentSource
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0;
  [(SKShader *)self generateFragmentAttributeDeclares:&v23];
  v16 = v23;
  v3 = [(SKShader *)self fragmentPrelude];
  v18 = [v16 stringByAppendingString:v3];

  v4 = [&stru_282E190D8 stringByAppendingString:v18];
  v5 = [(SKShader *)self source];
  v6 = [v4 stringByAppendingString:v5];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = self->_uniforms;
  v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        if ([v10 uniformType] == 3)
        {
          v11 = [v10 name];
          v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\b%@(?=\\b)", v11];
          v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"(%@.xyz)", v11];
          v14 = [v6 stringByReplacingOccurrencesOfString:v12 withString:v13 options:1024 range:{objc_msgSend(v18, "length"), objc_msgSend(v6, "length") - objc_msgSend(v18, "length")}];

          v6 = v14;
        }
      }

      v7 = [(NSMutableArray *)obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  return v6;
}

- (id)_fullMetalVertexSourceWithImplementation:(BOOL)a3
{
  v28 = a3;
  v35 = *MEMORY[0x277D85DE8];
  v4 = [SKShader_Metal_declares_vsh copy];
  v5 = [(SKShader *)self _getMetalVertexOutDefinition];
  v6 = [v4 stringByAppendingString:v5];

  if (v28)
  {
    v27 = objc_msgSend(v6, "stringByAppendingString:", @"               vertex SKShader_VertexOut SKShader_VertexFunc (const device float4 *a_position  [[buffer(0)]],\n               const device float2 *a_tex_coord [[buffer(1)]],\n               constant float4 &u_color         [[buffer(2)]],\n               constant float4x4 &u_transform   [[buffer(3)]],\n               \n");
    v7 = 4;
  }

  else
  {
    v27 = objc_msgSend(v6, "stringByAppendingString:", @"               vertex SKShader_VertexOut SKShader_VertexFunc (const device uchar4 *a_color      [[buffer(0)]],\n               const device float4 *a_position   [[buffer(1)]],\n               const device float2 *a_tex_coord  [[buffer(2)]],\n               \n");
    v7 = 3;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = [(SKShader *)self attributes];
  v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v8)
  {
    v9 = &stru_282E190D8;
    v10 = *v31;
    v11 = &stru_282E190D8;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v30 + 1) + 8 * i);
        v14 = [v13 type] - 1;
        if (v14 < 8)
        {
          v15 = off_278310590[v14];
          v16 = [v13 name];
          v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@const device %@ *a_%@   [[buffer(%d)]], ", v9, v15, v16, v7];

          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@vOut.%@ = a_%@[vid]\n", v11, v16, v16];;

          v7 = (v7 + 1);
          v9 = v17;
          v11 = v18;
        }
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = &stru_282E190D8;
    v11 = &stru_282E190D8;
  }

  v19 = [v27 stringByAppendingString:v9];

  if (v28)
  {
    v20 = @"               unsigned int vid                  [[vertex_id]]\n               {\n               SKShader_VertexOut vOut;\n               vOut.position = a_position[vid] * u_transform;\n               vOut.v_tex_coord = a_tex_coord[vid];\n               vOut.v_color_mix = u_color;\n               return vOut;\n               \n");
  }

  else
  {
    v20 = @"               unsigned int vid                  [[vertex_id]]\n               {\n               SKShader_VertexOut vOut;\n               vOut.position = float4(a_position[vid].xyz, 1.0f);\n               vOut.v_path_distance = a_position[vid].w;\n               vOut.v_tex_coord = a_tex_coord[vid];\n               vOut.v_color_mix = float4(a_color[vid].r / 255.0f,\n               a_color[vid].g / 255.0f,\n               a_color[vid].b / 255.0f,\n               a_color[vid].a / 255.0f);\n               \n");
  }

  v21 = [v19 stringByAppendingString:v20];

  v22 = [v21 stringByAppendingString:v11];

  v23 = [SKShader_Metal_end_main_vsh copy];
  v24 = [v22 stringByAppendingString:v23];

  v25 = v24;
  return v24;
}

- (id)fullMetalFragmentSource
{
  v3 = [SKShader_Metal_declares_vsh copy];
  v4 = [(SKShader *)self fragmentPreludeMetal];
  v5 = [v3 stringByAppendingString:v4];

  v6 = [(SKShader *)self _generateMetalSource];
  v7 = [v5 stringByAppendingString:v6];

  return v7;
}

- (void)setUniforms:(NSArray *)uniforms
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = uniforms;
  if (!v5)
  {
    v5 = [MEMORY[0x277CBEA60] array];
  }

  v21 = v5;
  v6 = [(NSArray *)v5 mutableCopy];
  v7 = self->_uniforms;
  self->_uniforms = v6;

  [(NSMutableDictionary *)self->_uniformData removeAllObjects];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = self->_uniforms;
  v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [(NSMutableDictionary *)self->_uniformData objectForKey:v12];
        if (v13)
        {
          NSLog(&cfstr_ErrorDuplicate.isa, v12);
          v14 = self->_uniforms;
          v15 = [v13 uniform];
          [(NSMutableArray *)v14 removeExactObject:v15];
        }

        v16 = objc_opt_new();
        [v16 setUniform:v11];
        v17 = [v11 uniformType];
        if (v17 == 8)
        {
          v3 = [v11 textureValue];
          v18 = [v3 textureTarget];
        }

        else
        {
          v18 = 0;
        }

        [v16 setTextureTarget:v18];
        if (v17 == 8)
        {
        }

        [(NSMutableDictionary *)self->_uniformData setObject:v16 forKey:v12];
        [v11 _addTargetShader:self];
      }

      v8 = [(NSMutableArray *)obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v8);
  }

  *&self->_programDirty = 257;
  cntrl = self->_backingProgram.__cntrl_;
  self->_backingProgram.__ptr_ = 0;
  self->_backingProgram.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }

  v20 = self->_backingProgramWithTransform.__cntrl_;
  self->_backingProgramWithTransform.__ptr_ = 0;
  self->_backingProgramWithTransform.__cntrl_ = 0;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }
}

- (void)addUniform:(SKUniform *)uniform
{
  v5 = uniform;
  if (v5)
  {
    v14 = v5;
    v6 = [(SKUniform *)v5 name];
    v7 = [(NSMutableDictionary *)self->_uniformData objectForKey:v6];
    if (v7)
    {
      NSLog(&cfstr_ErrorDuplicate.isa, v6);
      uniforms = self->_uniforms;
      v8 = [v7 uniform];
      [uniforms removeObject:v8];
    }

    v9 = objc_opt_new();
    [v9 setUniform:v14];
    v10 = [(SKUniform *)v14 uniformType];
    if (v10 == 8)
    {
      uniforms = [(SKUniform *)v14 textureValue];
      v11 = [uniforms textureTarget];
    }

    else
    {
      v11 = 0;
    }

    [v9 setTextureTarget:v11];
    if (v10 == 8)
    {
    }

    [(NSMutableDictionary *)self->_uniformData setObject:v9 forKey:v6];
    [(NSMutableArray *)self->_uniforms addObject:v14];
    [(SKUniform *)v14 _addTargetShader:self];
    *&self->_programDirty = 257;
    cntrl = self->_backingProgram.__cntrl_;
    self->_backingProgram.__ptr_ = 0;
    self->_backingProgram.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v13 = self->_backingProgramWithTransform.__cntrl_;
    self->_backingProgramWithTransform.__ptr_ = 0;
    self->_backingProgramWithTransform.__cntrl_ = 0;
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    v5 = v14;
  }
}

- (SKUniform)uniformNamed:(NSString *)name
{
  v3 = [(NSMutableDictionary *)self->_uniformData objectForKey:name];
  v4 = [v3 uniform];

  return v4;
}

- (void)removeUniformNamed:(NSString *)name
{
  v10 = name;
  v4 = [(NSMutableDictionary *)self->_uniformData objectForKey:?];
  if (v4)
  {
    [(NSMutableDictionary *)self->_uniformData removeObjectForKey:v10];
    uniforms = self->_uniforms;
    v6 = [v4 uniform];
    [(NSMutableArray *)uniforms removeExactObject:v6];

    v7 = [v4 uniform];
    [v7 _removeTargetShader:self];

    *&self->_programDirty = 257;
    cntrl = self->_backingProgram.__cntrl_;
    self->_backingProgram.__ptr_ = 0;
    self->_backingProgram.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v9 = self->_backingProgramWithTransform.__cntrl_;
    self->_backingProgramWithTransform.__ptr_ = 0;
    self->_backingProgramWithTransform.__cntrl_ = 0;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

- (NSArray)_textureUniforms
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_uniforms;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 uniformType] == 8)
        {
          [v3 addObject:v8];
        }
      }

      v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v3;
}

- (BOOL)isValid
{
  [(SKShader *)self _backingProgram];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return v3 != 0;
}

- (shared_ptr<jet_program>)_backingProgram
{
  v3 = self;
  v4 = v2;
  ptr = self->_backingProgram.__ptr_;
  if (!ptr)
  {
    if (self->_programDirty)
    {
      [(SKShader *)self _makeBackingProgramWithImplementation:0];
      v6 = v3->_backingProgram.__ptr_;
      self = v3->_backingProgram.__cntrl_;
      v3->_backingProgram = v8;
      v8.__cntrl_ = self;
      v3->_programDirty = 0;
      if (!v8.__ptr_)
      {
        if (v3->_fileName)
        {
          NSLog(&cfstr_SkshaderFailed_0.isa, v3->_fileName, v3->_compileLog, v6);
        }

        else
        {
          NSLog(&cfstr_SkshaderFailed_1.isa, v3->_compileLog);
        }

        kdebug_trace();
        self = v8.__cntrl_;
      }

      if (self)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](self);
      }

      ptr = v3->_backingProgram.__ptr_;
    }

    else
    {
      ptr = 0;
    }
  }

  cntrl = v3->_backingProgram.__cntrl_;
  *v4 = ptr;
  v4[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<jet_program>)_backingProgramWithTransform
{
  v3 = self;
  v4 = v2;
  ptr = self->_backingProgramWithTransform.__ptr_;
  if (!ptr)
  {
    if (self->_programWithTransformDirty)
    {
      [(SKShader *)self _makeBackingProgramWithImplementation:1];
      v6 = v3->_backingProgramWithTransform.__ptr_;
      self = v3->_backingProgramWithTransform.__cntrl_;
      v3->_backingProgramWithTransform = v8;
      v8.__cntrl_ = self;
      v3->_programWithTransformDirty = 0;
      if (!v8.__ptr_)
      {
        if (v3->_fileName)
        {
          NSLog(&cfstr_SkshaderFailed_0.isa, v3->_fileName, v3->_compileLog, v6);
        }

        else
        {
          NSLog(&cfstr_SkshaderFailed_1.isa, v3->_compileLog);
        }

        kdebug_trace();
        self = v8.__cntrl_;
      }

      if (self)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](self);
      }

      ptr = v3->_backingProgramWithTransform.__ptr_;
    }

    else
    {
      ptr = 0;
    }
  }

  cntrl = v3->_backingProgramWithTransform.__cntrl_;
  *v4 = ptr;
  v4[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (shared_ptr<jet_program>)_makeBackingProgramWithImplementation:(int64_t)a3
{
  v4 = v3;
  v9 = 0;
  v10 = &v9;
  v11 = 0x4012000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = "";
  v15 = 0;
  v16 = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__SKShader__makeBackingProgramWithImplementation___block_invoke;
  v8[3] = &unk_278310530;
  v8[5] = &v9;
  v8[6] = a3;
  v8[4] = self;
  SKCPerformResourceOperation(v8);
  v5 = v10[7];
  *v4 = v10[6];
  v4[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  _Block_object_dispose(&v9, 8);
  v7 = v16;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  result.__cntrl_ = v6;
  result.__ptr_ = v7;
  return result;
}

void __50__SKShader__makeBackingProgramWithImplementation___block_invoke(uint64_t a1, void *a2)
{
  if (!*a2)
  {
    return;
  }

  kdebug_trace();
  v26 = 0;
  v27 = 0;
  if ((*(**a2 + 136))() != 1)
  {
    v14 = *(a1 + 32);
    if (*(a1 + 48))
    {
      [v14 fullVertexWithTransformSource];
    }

    else
    {
      [v14 fullVertexSource];
    }
    v12 = ;
    v15 = [*(a1 + 32) fullFragmentSource];
    v10 = (*(**a2 + 72))(*a2, [v12 UTF8String], "main", 1, &v27);
    v16 = (*(**a2 + 72))(*a2, [v15 UTF8String], "main", 2, &v26);
    goto LABEL_16;
  }

  v4 = *(a1 + 32);
  if (v4[48] != 1)
  {
    if (*(a1 + 48))
    {
      [v4 fullMetalVertexWithTransformSource];
    }

    else
    {
      [v4 fullMetalVertexSource];
    }
    v12 = ;
    v15 = [*(a1 + 32) fullMetalFragmentSource];
    v10 = (*(**a2 + 72))(*a2, [v12 UTF8String], "SKShader_VertexFunc", 1, &v27);
    v16 = (*(**a2 + 72))(*a2, [v15 UTF8String], "SKShader_FragFunc", 2, &v26);
LABEL_16:
    v11 = v16;
    v13 = v15;
    goto LABEL_17;
  }

  v5 = [MEMORY[0x277CCA8D8] mainBundle];
  v6 = [v5 pathForResource:*(*(a1 + 32) + 40) ofType:@"metallib"];

  v7 = *a2;
  v8 = [v6 UTF8String];
  if (*(a1 + 48))
  {
    v9 = "SKShader_VertexTransformFunc";
  }

  else
  {
    v9 = "SKShader_VertexFunc";
  }

  v10 = (*(*v7 + 64))(v7, v8, v9, 1, &v27);
  v11 = (*(**a2 + 64))(*a2, [v6 UTF8String], "SKShader_FragFunc", 2, &v26);

  v12 = 0;
  v13 = 0;
LABEL_17:
  v17 = v27;
  if (v27)
  {
    if (*(v27 + 23) < 0)
    {
      operator delete(*v27);
    }

    MEMORY[0x21CF0A160](v17, 0x1012C40EC159624);
  }

  if (v26)
  {
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    v19 = *(a1 + 32);
    v20 = *(v19 + 56);
    *(v19 + 56) = v18;

    v21 = v26;
    if (v26)
    {
      if (*(v26 + 23) < 0)
      {
        operator delete(*v26);
      }

      MEMORY[0x21CF0A160](v21, 0x1012C40EC159624);
    }

    if (!v10)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v22 = *(a1 + 32);
  v23 = *(v22 + 56);
  *(v22 + 56) = &stru_282E190D8;

  if (v10)
  {
LABEL_29:
    if (v11)
    {
      v24 = (*(**a2 + 80))(*a2, v10, v11);
      std::shared_ptr<jet_program>::shared_ptr[abi:ne200100]<jet_program,0>(&v25, v24);
    }
  }

LABEL_31:
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  if (v11)
  {
    (*(*v11 + 8))(v11);
  }
}

- (shared_ptr<jet_command_buffer>)_commands
{
  v2 = [(SKShader *)self _commandsForBatchOffset:0 count:0];
  result.var1 = v3;
  result.var0 = v2;
  return result;
}

- (id)_generateMetalSource
{
  v62 = *MEMORY[0x277D85DE8];
  v2 = [(SKShader *)self source];
  v3 = [v2 copy];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &stru_282E190D8;
  }

  v5 = [(__CFString *)v4 stringByReplacingOccurrencesOfString:@"gl_FragColor\\s*=\\s*" withString:@"return " options:1024 range:0, [(__CFString *)v4 length]];

  v41 = [&unk_282E2D5E8 mutableCopy];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v6 = [(SKShader *)self attributes];
  v7 = [v6 countByEnumeratingWithState:&v54 objects:v61 count:16];
  if (v7)
  {
    v8 = *v55;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v55 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v54 + 1) + 8 * i) name];
        [v41 addObject:v10];
      }

      v7 = [v6 countByEnumeratingWithState:&v54 objects:v61 count:16];
    }

    while (v7);
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = v41;
  v11 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
  if (v11)
  {
    v12 = *v51;
    do
    {
      v13 = 0;
      v14 = v5;
      do
      {
        if (*v51 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v50 + 1) + 8 * v13);
        v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\b%@(?=\\b)", v15];
        v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"interpolated.%@", v15];
        v5 = [v14 stringByReplacingOccurrencesOfString:v16 withString:v17 options:1024 range:{0, objc_msgSend(v14, "length")}];

        ++v13;
        v14 = v5;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v50 objects:v60 count:16];
    }

    while (v11);
  }

  v38 = [&unk_282E2D600 mutableCopy];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v18 = self->_uniforms;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v46 objects:v59 count:16];
  if (v19)
  {
    v20 = *v47;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v47 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v46 + 1) + 8 * j);
        if ([v22 uniformType] != 8)
        {
          v23 = [v22 name];
          [v38 addObject:v23];
        }
      }

      v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v46 objects:v59 count:16];
    }

    while (v19);
  }

  if (([v38 containsObject:@"u_sprite_size"] & 1) == 0 && (objc_msgSend(obj, "containsObject:", @"u_sprite_size") & 1) == 0)
  {
    [v38 addObject:@"u_sprite_size"];
  }

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v39 = v38;
  v24 = [v39 countByEnumeratingWithState:&v42 objects:v58 count:16];
  if (v24)
  {
    v25 = *v43;
    do
    {
      v26 = 0;
      v27 = v5;
      do
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(v39);
        }

        v28 = *(*(&v42 + 1) + 8 * v26);
        v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"\\b%@(?=\\b)", v28];
        v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@[0]", v28];
        v5 = [v27 stringByReplacingOccurrencesOfString:v29 withString:v30 options:1024 range:{0, objc_msgSend(v27, "length")}];

        ++v26;
        v27 = v5;
      }

      while (v24 != v26);
      v24 = [v39 countByEnumeratingWithState:&v42 objects:v58 count:16];
    }

    while (v24);
  }

  v31 = objc_msgSend(v5, "stringByReplacingOccurrencesOfString:withString:options:range:", CFSTR("mat2\\s*\\("), CFSTR("_make_mat2("), 1024, 0, objc_msgSend(v5, "length"));

  v32 = [(SKShader *)self _getMetalFragmentFunctionName];
  v33 = [v31 stringByReplacingOccurrencesOfString:@"void\\s+main\\s*\\(\\s*(void)?\\s*\\)" withString:v32 options:1024 range:{0, objc_msgSend(v31, "length")}];

  v34 = [v33 stringByReplacingOccurrencesOfString:@"\\bdiscard(?=\\b)" withString:@" discard_fragment()" options:1024 range:{0, objc_msgSend(v33, "length")}];

  v35 = [v34 stringByReplacingOccurrencesOfString:@"\\bgl_FragCoord(?=\\b)" withString:@" interpolated.position" options:1024 range:{0, objc_msgSend(v34, "length")}];

  return v35;
}

- (id)_getMetalVertexOutDefinition
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [(SKShader *)self attributes];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = @"    struct SKShader_VertexOut {\n    float4 position [[position]];\n    float2 v_tex_coord;\n    float4 v_color_mix;\n    float v_path_distance;\n    ";
    v5 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * i);
        v8 = [v7 type] - 1;
        if (v8 < 8)
        {
          v9 = off_278310590[v8];
          v10 = [v7 name];
          v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@ %@\n", v4, v9, v10];;

          v4 = v11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = @"    struct SKShader_VertexOut {\n    float4 position [[position]];\n    float2 v_tex_coord;\n    float4 v_color_mix;\n    float v_path_distance;\n    ";
  }

  v12 = [(__CFString *)v4 stringByAppendingString:@"}\n"];;

  return v12;
}

- (id)_getMetalFragmentFunctionName
{
  v37 = *MEMORY[0x277D85DE8];
  v29 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:self->_uniformData];
  v3 = [(SKShader *)self _getLegacyUniformData];
  v28 = v3;
  if (v3)
  {
    v4 = [v3 uniform];
    v5 = [v4 name];
    [v29 setObject:v28 forKey:v5];

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  self->_usesSpriteSizeUniform = v6;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = [v29 allValues];
  v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = 2;
    v9 = &stru_282E190D8;
    v30 = 1;
    v10 = *v33;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        v13 = [v12 uniform];
        v14 = [v13 name];
        v15 = [v13 uniformType];
        if (v15 <= 4)
        {
          if (v15 <= 2)
          {
            if (v15 == 1)
            {
              v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"const device float * %@ [[buffer(%d)]], ", v14, v8];
              v17 = [(__CFString *)v9 stringByAppendingString:v16];
            }

            else
            {
              if (v15 != 2)
              {
                goto LABEL_32;
              }

              v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"const device float2 * %@ [[buffer(%d)]], ", v14, v8];
              v17 = [(__CFString *)v9 stringByAppendingString:v16];
            }

            goto LABEL_30;
          }

          if (v15 == 3)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"const device float3 * %@ [[buffer(%d)]], ", v14, v8];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"const device float4 * %@ [[buffer(%d)]], ", v14, v8];
          }

          v16 = LABEL_17:;
          v17 = [(__CFString *)v9 stringByAppendingString:v16];
LABEL_30:
          v24 = v17;

          v8 = (v8 + 1);
LABEL_31:

          v9 = v24;
          goto LABEL_32;
        }

        if (v15 <= 6)
        {
          if (v15 == 5)
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"const device float2x2 * %@ [[buffer(%d)]], ", v14, v8];
          }

          else
          {
            [MEMORY[0x277CCACA8] stringWithFormat:@"const device float3x3 * %@ [[buffer(%d)]], ", v14, v8];
          }

          goto LABEL_17;
        }

        if (v15 == 7)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"const device float4x4 * %@ [[buffer(%d)]], ", v14, v8];
          v17 = [(__CFString *)v9 stringByAppendingString:v16];
          goto LABEL_30;
        }

        if (v15 == 8)
        {
          v18 = [v13 textureValue];
          v19 = v18 == 0;

          if (!v19)
          {
            v20 = [v13 textureValue];
            v21 = [v20 textureTarget];

            if (v21 == 3553)
            {
              v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"texture2d<float> %@ [[texture(%d)]], ", v14, v30];
              v23 = [(__CFString *)v9 stringByAppendingString:v22];

              v30 = (v30 + 1);
              v9 = v23;
            }

            v16 = [v13 textureValue];
            [v12 setTextureTarget:{objc_msgSend(v16, "textureTarget")}];
            v24 = v9;
            goto LABEL_31;
          }
        }

LABEL_32:
      }

      v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      if (!v7)
      {
        goto LABEL_36;
      }
    }
  }

  v9 = &stru_282E190D8;
LABEL_36:

  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@ SKShader_VertexOut interpolated     [[stage_in]]"], @"    fragment float4 SKShader_FragFunc(    texture2d<float>  u_texture         [[texture(0)]],     const device float *u_time           [[buffer(0)]],     const device float *u_path_length    [[buffer(1)]], "), v9;
  v26 = v25;

  return v25;
}

- (id)_getMetalVertexShaderSource:(BOOL)a3
{
  if (self->_isPrecompiledMetal)
  {
    v5 = 0;
  }

  else
  {
    if (a3)
    {
      [(SKShader *)self fullMetalVertexWithTransformSource];
    }

    else
    {
      [(SKShader *)self fullMetalVertexSource];
    }
    v5 = ;
  }

  return v5;
}

- (id)_getMetalFragmentShaderSource
{
  if (self->_isPrecompiledMetal)
  {
    v4 = 0;
  }

  else
  {
    v4 = [(SKShader *)self fullMetalFragmentSource];
  }

  return v4;
}

- (void)_setUniformsDirty
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_targetNodes;
  v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (v8)
        {
          SKCNode::setFlags([v8 _backingNode], 2, 1);
        }

        else
        {
          v5 = 1;
        }
      }

      v4 = [(NSPointerArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);

    if (v5)
    {
      [(NSPointerArray *)self->_targetNodes compact];
    }
  }

  else
  {
  }
}

- (void)_removeTargetNode:(id)a3
{
  v5 = a3;
  for (i = 0; [(NSPointerArray *)self->_targetNodes count]> i; ++i)
  {
    if ([(NSPointerArray *)self->_targetNodes pointerAtIndex:i]== v5)
    {
      [(NSPointerArray *)self->_targetNodes replacePointerAtIndex:i withPointer:0];
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [v6 encodeBool:-[SKShader performFullCapture](self forKey:{"performFullCapture"), @"_isCapture"}];
  v4 = [(SKShader *)self uniforms];
  [v6 encodeObject:v4 forKey:@"_uniforms"];

  v5 = [(SKShader *)self source];
  [v6 encodeObject:v5 forKey:@"_source"];

  [v6 encodeObject:self->_fileName forKey:@"_fileName"];
  [v6 encodeObject:self->_attributes forKey:@"_attributes"];
}

- (SKShader)initWithCoder:(id)a3
{
  v28[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];
  targetNodes = self->_targetNodes;
  self->_targetNodes = v5;

  v7 = [MEMORY[0x277CBEB38] dictionary];
  uniformData = self->_uniformData;
  self->_uniformData = v7;

  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_fileName"];
  fileName = self->_fileName;
  self->_fileName = v9;

  v11 = self->_fileName;
  if (v11 && -[NSString length](v11, "length") && ([v4 decodeBoolForKey:@"_isCapture"] & 1) == 0)
  {
    v22 = [SKShader shaderWithFileNamed:self->_fileName];
    v23 = [v22 source];
    source = self->_source;
    self->_source = v23;

    *&self->_programDirty = 257;
    cntrl = self->_backingProgram.__cntrl_;
    self->_backingProgram.__ptr_ = 0;
    self->_backingProgram.__cntrl_ = 0;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v26 = self->_backingProgramWithTransform.__cntrl_;
    self->_backingProgramWithTransform.__ptr_ = 0;
    self->_backingProgramWithTransform.__cntrl_ = 0;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  else
  {
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_source"];
    [(SKShader *)self setSource:v12];
  }

  v13 = MEMORY[0x277CBEB98];
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v28[3] = objc_opt_class();
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  v15 = [v13 setWithArray:v14];
  v16 = [v4 decodeObjectOfClasses:v15 forKey:@"_attributes"];
  [(SKShader *)self setAttributes:v16];

  v17 = MEMORY[0x277CBEB98];
  v27[0] = objc_opt_class();
  v27[1] = objc_opt_class();
  v27[2] = objc_opt_class();
  v27[3] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  v19 = [v17 setWithArray:v18];
  v20 = [v4 decodeObjectOfClasses:v19 forKey:@"_uniforms"];
  [(SKShader *)self setUniforms:v20];

  return self;
}

- (BOOL)isEqualToShader:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v9 = 1;
  }

  else
  {
    v5 = 0;
    while ([(NSMutableArray *)self->_uniforms count]> v5)
    {
      v6 = [(NSMutableArray *)self->_uniforms objectAtIndexedSubscript:v5];
      v7 = [(NSMutableArray *)v4->_uniforms objectAtIndexedSubscript:v5];
      v8 = [v6 isEqualToUniform:v7];

      ++v5;
      if ((v8 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v10 = 0;
    while ([(NSArray *)self->_attributes count]> v10)
    {
      v11 = [(NSArray *)self->_attributes objectAtIndexedSubscript:v10];
      v12 = [(NSArray *)v4->_attributes objectAtIndexedSubscript:v10];
      v13 = [v11 isEqualToAttribute:v12];

      ++v10;
      if ((v13 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    fileName = self->_fileName;
    if ((!fileName || !v4->_fileName || ([(NSString *)fileName isEqual:?]& 1) != 0) && [(NSString *)self->_source isEqual:v4->_source])
    {
      v9 = self->_performFullCapture == v4->_performFullCapture;
      goto LABEL_17;
    }

LABEL_16:
    v9 = 0;
  }

LABEL_17:

  return v9;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [(SKShader *)self source];
  v5 = [v4 copy];
  v6 = [(SKShader *)self uniforms];
  v7 = [v6 copy];
  v8 = [SKShader shaderWithSource:v5 uniforms:v7];

  v9 = [(SKShader *)self attributes];
  [v8 setAttributes:v9];

  return v8;
}

- (id)_getLegacyUniformData
{
  v27 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = [(NSMutableDictionary *)self->_uniformData allValues];
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = *v22;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v22 != v5)
      {
        objc_enumerationMutation(v3);
      }

      v7 = [*(*(&v21 + 1) + 8 * v6) uniform];
      v8 = [v7 name];
      v9 = [v8 isEqual:@"u_sprite_size"];

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [(NSArray *)v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v3 = self->_attributes;
    v10 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
    if (!v10)
    {
LABEL_17:

      v3 = [SKUniform uniformWithName:@"u_sprite_size" vectorFloat2:0.0];
      v15 = objc_opt_new();
      [v15 setUniform:v3];
      goto LABEL_19;
    }

    v11 = *v18;
LABEL_11:
    v12 = 0;
    while (1)
    {
      if (*v18 != v11)
      {
        objc_enumerationMutation(v3);
      }

      v13 = [*(*(&v17 + 1) + 8 * v12) name];
      v14 = [v13 isEqual:@"u_sprite_size"];

      if (v14)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(NSArray *)v3 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_11;
        }

        goto LABEL_17;
      }
    }
  }

  v15 = 0;
LABEL_19:

  return v15;
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 17) = 0;
  *(self + 88) = 0u;
  *(self + 104) = 0u;
  *(self + 15) = self + 128;
  return self;
}

@end