@interface AVTStickerMorpherOverride
+ (id)morpherOverrideFromDictionary:(id)a3;
- (AVTStickerMorpherOverride)initWithNodeNames:(id)a3 morphTargetName:(id)a4 weight:(float)a5;
- (void)applyToAvatar:(id)a3 inHierarchy:(id)a4 reversionContext:(id)a5;
@end

@implementation AVTStickerMorpherOverride

+ (id)morpherOverrideFromDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"node"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [v3 objectForKeyedSubscript:@"geometry"];
  }

  v7 = v6;

  v8 = [AVTStickerMorpherOverride alloc];
  v9 = [v3 objectForKeyedSubscript:@"morpher"];
  v10 = [v3 objectForKeyedSubscript:@"value"];
  [v10 floatValue];
  v11 = [(AVTStickerMorpherOverride *)v8 initWithNodeNames:v7 morphTargetName:v9 weight:?];

  return v11;
}

- (AVTStickerMorpherOverride)initWithNodeNames:(id)a3 morphTargetName:(id)a4 weight:(float)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = AVTStickerMorpherOverride;
  v11 = [(AVTStickerMorpherOverride *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_nodeNames, a3);
    objc_storeStrong(&v12->_morphTargetName, a4);
    v12->_weight = a5;
  }

  return v12;
}

- (void)applyToAvatar:(id)a3 inHierarchy:(id)a4 reversionContext:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [a3 nodesMatchingStickerPattern:self->_nodeNames inHierarchy:a4 options:1 includingDerivedNodes:1];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v26;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(*(&v25 + 1) + 8 * i) morpher];
        v16 = [v15 _weightIndexForTargetNamed:self->_morphTargetName];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = v16;
          if (!((v8 == 0) | v12 & 1))
          {
            [v15 weightForTargetAtIndex:v16];
            v20 = v19;
            v21 = [AVTStickerMorpherOverride alloc];
            LODWORD(v22) = v20;
            v23 = [(AVTStickerMorpherOverride *)v21 initWithNodeNames:self->_nodeNames morphTargetName:self->_morphTargetName weight:v22];
            [v8 saveMorpherOverride:v23];

            v12 = 1;
          }

          *&v17 = self->_weight;
          [v15 setWeight:v18 forTargetAtIndex:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end