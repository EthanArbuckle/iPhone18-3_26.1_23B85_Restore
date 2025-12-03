@interface TUIElementPageControl
+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context;
+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context;
+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context;
@end

@implementation TUIElementPageControl

+ (id)builderWithNode:(id)node object:(id)object attributes:(id)attributes context:(id)context
{
  attributesCopy = attributes;
  v8 = objc_alloc_init(_TUIElementPageControlBuilder);
  v9 = [attributesCopy stringForAttribute:116 node:node.var0];

  v10 = v9;
  v11 = v10;
  if (qword_2E6810 != -1)
  {
    sub_19BF7C();
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_5:
    unsignedIntegerValue = 0;
    goto LABEL_6;
  }

  if (!v10)
  {
    goto LABEL_5;
  }

LABEL_3:
  v12 = [qword_2E6808 objectForKeyedSubscript:v11];
  unsignedIntegerValue = [v12 unsignedIntegerValue];

LABEL_6:
  [(_TUIElementPageControlBuilder *)v8 setKind:unsignedIntegerValue];

  return v8;
}

+ (void)configureBox:(id)box withNode:(id)node attributes:(id)attributes context:(id)context
{
  boxCopy = box;
  attributesCopy = attributes;
  [boxCopy setEnabled:{objc_msgSend(attributesCopy, "BOOLForAttribute:withDefault:node:", 74, 1, node.var0)}];
  [attributesCopy floatForAttribute:157 withDefault:node.var0 node:1.0];
  [boxCopy setPressedScale:?];
  v9 = [attributesCopy pointerForNode:node.var0];
  [boxCopy setPointer:v9];

  [boxCopy setGrouped:{objc_msgSend(attributesCopy, "BOOLForAttribute:node:", 93, node.var0)}];
  v10 = [attributesCopy stringForAttribute:227 node:node.var0];

  if (v10)
  {
    v11 = [v10 isEqualToString:@"hidden"];
  }

  else
  {
    v11 = (_UISolariumEnabled() ^ 1);
  }

  [boxCopy setHiddenWhenUnavailable:v11];
}

+ (void)configureObject:(id)object withBuilder:(id)builder context:(id)context
{
  objectCopy = object;
  builderCopy = builder;
  contextCopy = context;
  v10 = [builderCopy finalizeStateMapWithContext:contextCopy];
  [objectCopy setStateMap:v10];

  finalizeAnimationGroups = [builderCopy finalizeAnimationGroups];
  [objectCopy setAnimationGroups:finalizeAnimationGroups];

  kind = [builderCopy kind];
  pointer = [objectCopy pointer];
  objc_initWeak(&location, objectCopy);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_16807C;
  v15[3] = &unk_263370;
  objc_copyWeak(v17, &location);
  v14 = pointer;
  v16 = v14;
  v17[1] = kind;
  [objectCopy setRenderModelBlock:v15];

  objc_destroyWeak(v17);
  objc_destroyWeak(&location);
}

@end