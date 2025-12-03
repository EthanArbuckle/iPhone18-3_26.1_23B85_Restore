@interface AXUIContextDrawingAnnotation
+ (id)annotationsForContext:(CGContext *)context;
+ (id)contextAnnotationMap;
+ (void)addLabel:(id)label boundingRect:(CGRect)rect withContext:(CGContext *)context;
- (AXUIContextDrawingAnnotation)initWithLabel:(id)label boundingRect:(CGRect)rect;
- (CGRect)boundingRect;
- (id)description;
@end

@implementation AXUIContextDrawingAnnotation

+ (id)contextAnnotationMap
{
  if (contextAnnotationMap_onceToken != -1)
  {
    +[AXUIContextDrawingAnnotation contextAnnotationMap];
  }

  v3 = contextAnnotationMap___axContextAnnotationMap;

  return v3;
}

- (AXUIContextDrawingAnnotation)initWithLabel:(id)label boundingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelCopy = label;
  v14.receiver = self;
  v14.super_class = AXUIContextDrawingAnnotation;
  v11 = [(AXUIContextDrawingAnnotation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_label, label);
    v12->_boundingRect.origin.x = x;
    v12->_boundingRect.origin.y = y;
    v12->_boundingRect.size.width = width;
    v12->_boundingRect.size.height = height;
  }

  return v12;
}

+ (void)addLabel:(id)label boundingRect:(CGRect)rect withContext:(CGContext *)context
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  labelCopy = label;
  if (context)
  {
    v12 = [MEMORY[0x1E696B098] valueWithPointer:context];
    height = [[AXUIContextDrawingAnnotation alloc] initWithLabel:labelCopy boundingRect:x, y, width, height];
    contextAnnotationMap = [self contextAnnotationMap];
    objc_sync_enter(contextAnnotationMap);
    v15 = [contextAnnotationMap objectForKeyedSubscript:v12];

    if (!v15)
    {
      array = [MEMORY[0x1E695DF70] array];
      [contextAnnotationMap setObject:array forKeyedSubscript:v12];
    }

    v17 = [contextAnnotationMap objectForKeyedSubscript:v12];
    [v17 addObject:height];

    v18 = contextAnnotationMap;
    v19 = v12;
    v20 = height;
    AXPerformBlockOnMainThreadAfterDelay();

    objc_sync_exit(v18);
  }
}

void __66__AXUIContextDrawingAnnotation_addLabel_boundingRect_withContext___block_invoke(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  [v2 removeObject:*(a1 + 48)];

  v3 = [*(a1 + 32) objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 count];

  if (!v4)
  {
    [*(a1 + 32) removeObjectForKey:*(a1 + 40)];
  }

  objc_sync_exit(obj);
}

+ (id)annotationsForContext:(CGContext *)context
{
  if (context)
  {
    v4 = [MEMORY[0x1E696B098] valueWithPointer:?];
    contextAnnotationMap = [self contextAnnotationMap];
    objc_sync_enter(contextAnnotationMap);
    v6 = [contextAnnotationMap objectForKey:v4];
    v7 = [v6 copy];

    if (v7)
    {
      [contextAnnotationMap removeObjectForKey:v4];
    }

    objc_sync_exit(contextAnnotationMap);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __52__AXUIContextDrawingAnnotation_contextAnnotationMap__block_invoke()
{
  contextAnnotationMap___axContextAnnotationMap = objc_alloc_init(MEMORY[0x1E695DF90]);

  return MEMORY[0x1EEE66BB8]();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = AXUIContextDrawingAnnotation;
  v4 = [(AXUIContextDrawingAnnotation *)&v9 description];
  label = [(AXUIContextDrawingAnnotation *)self label];
  [(AXUIContextDrawingAnnotation *)self boundingRect];
  v6 = NSStringFromCGRect(v11);
  v7 = [v3 stringWithFormat:@"%@, label=%@, boundingRect=%@", v4, label, v6];

  return v7;
}

- (CGRect)boundingRect
{
  x = self->_boundingRect.origin.x;
  y = self->_boundingRect.origin.y;
  width = self->_boundingRect.size.width;
  height = self->_boundingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end