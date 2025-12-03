@interface AVTStickerMorpherOverride
+ (id)morpherOverrideFromDictionary:(id)dictionary;
- (AVTStickerMorpherOverride)initWithNodeNames:(id)names morphTargetName:(id)name weight:(float)weight;
- (void)applyToAvatar:(id)avatar inHierarchy:(id)hierarchy reversionContext:(id)context;
@end

@implementation AVTStickerMorpherOverride

+ (id)morpherOverrideFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"node"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"geometry"];
  }

  v7 = v6;

  v8 = [AVTStickerMorpherOverride alloc];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"morpher"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  [v10 floatValue];
  v11 = [(AVTStickerMorpherOverride *)v8 initWithNodeNames:v7 morphTargetName:v9 weight:?];

  return v11;
}

- (AVTStickerMorpherOverride)initWithNodeNames:(id)names morphTargetName:(id)name weight:(float)weight
{
  namesCopy = names;
  nameCopy = name;
  v14.receiver = self;
  v14.super_class = AVTStickerMorpherOverride;
  v11 = [(AVTStickerMorpherOverride *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_nodeNames, names);
    objc_storeStrong(&v12->_morphTargetName, name);
    v12->_weight = weight;
  }

  return v12;
}

- (void)applyToAvatar:(id)avatar inHierarchy:(id)hierarchy reversionContext:(id)context
{
  v30 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v9 = [avatar nodesMatchingStickerPattern:self->_nodeNames inHierarchy:hierarchy options:1 includingDerivedNodes:1];
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

        morpher = [*(*(&v25 + 1) + 8 * i) morpher];
        v16 = [morpher _weightIndexForTargetNamed:self->_morphTargetName];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = v16;
          if (!((contextCopy == 0) | v12 & 1))
          {
            [morpher weightForTargetAtIndex:v16];
            v20 = v19;
            v21 = [AVTStickerMorpherOverride alloc];
            LODWORD(v22) = v20;
            v23 = [(AVTStickerMorpherOverride *)v21 initWithNodeNames:self->_nodeNames morphTargetName:self->_morphTargetName weight:v22];
            [contextCopy saveMorpherOverride:v23];

            v12 = 1;
          }

          *&v17 = self->_weight;
          [morpher setWeight:v18 forTargetAtIndex:v17];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v11);
  }

  v24 = *MEMORY[0x1E69E9840];
}

@end