@interface AXUIContextDrawingAnnotation
+ (id)annotationsForContext:(CGContext *)a3;
+ (id)contextAnnotationMap;
+ (void)addLabel:(id)a3 boundingRect:(CGRect)a4 withContext:(CGContext *)a5;
- (AXUIContextDrawingAnnotation)initWithLabel:(id)a3 boundingRect:(CGRect)a4;
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

- (AXUIContextDrawingAnnotation)initWithLabel:(id)a3 boundingRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3;
  v14.receiver = self;
  v14.super_class = AXUIContextDrawingAnnotation;
  v11 = [(AXUIContextDrawingAnnotation *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_label, a3);
    v12->_boundingRect.origin.x = x;
    v12->_boundingRect.origin.y = y;
    v12->_boundingRect.size.width = width;
    v12->_boundingRect.size.height = height;
  }

  return v12;
}

+ (void)addLabel:(id)a3 boundingRect:(CGRect)a4 withContext:(CGContext *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = a3;
  if (a5)
  {
    v12 = [MEMORY[0x1E696B098] valueWithPointer:a5];
    v13 = [[AXUIContextDrawingAnnotation alloc] initWithLabel:v11 boundingRect:x, y, width, height];
    v14 = [a1 contextAnnotationMap];
    objc_sync_enter(v14);
    v15 = [v14 objectForKeyedSubscript:v12];

    if (!v15)
    {
      v16 = [MEMORY[0x1E695DF70] array];
      [v14 setObject:v16 forKeyedSubscript:v12];
    }

    v17 = [v14 objectForKeyedSubscript:v12];
    [v17 addObject:v13];

    v18 = v14;
    v19 = v12;
    v20 = v13;
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

+ (id)annotationsForContext:(CGContext *)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x1E696B098] valueWithPointer:?];
    v5 = [a1 contextAnnotationMap];
    objc_sync_enter(v5);
    v6 = [v5 objectForKey:v4];
    v7 = [v6 copy];

    if (v7)
    {
      [v5 removeObjectForKey:v4];
    }

    objc_sync_exit(v5);
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
  v5 = [(AXUIContextDrawingAnnotation *)self label];
  [(AXUIContextDrawingAnnotation *)self boundingRect];
  v6 = NSStringFromCGRect(v11);
  v7 = [v3 stringWithFormat:@"%@, label=%@, boundingRect=%@", v4, v5, v6];

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