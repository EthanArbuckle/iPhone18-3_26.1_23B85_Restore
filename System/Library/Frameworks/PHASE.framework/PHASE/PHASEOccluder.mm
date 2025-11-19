@interface PHASEOccluder
- (PHASEOccluder)init;
- (PHASEOccluder)initWithEngine:(PHASEEngine *)engine shapes:(NSArray *)shapes;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setIsStatic:(BOOL)a3;
@end

@implementation PHASEOccluder

- (PHASEOccluder)init
{
  [(PHASEOccluder *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEOccluder)initWithEngine:(PHASEEngine *)engine shapes:(NSArray *)shapes
{
  v6 = engine;
  v7 = shapes;
  v8 = v7;
  if (v7 && [(NSArray *)v7 count])
  {
    v15.receiver = self;
    v15.super_class = PHASEOccluder;
    v9 = [(PHASEObject *)&v15 initWithEngine:v6 entityType:4 shapes:v8];
    v10 = v9;
    if (v9)
    {
      v9->_materialScaleFactor = 1.0;
      v9->_isStatic = 0;
      v11 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
      v12 = v10->_shapes;
      v10->_shapes = v11;
    }

    self = v10;
    v13 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot create a PHASEOccluder with nil or empty shape array"];
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PHASEObject *)self engine];
  v6 = [(PHASEOccluder *)self shapes];
  v7 = [v4 initWithEngine:v5 shapes:v6];

  *&v8 = self->_materialScaleFactor;
  [v7 setMaterialScaleFactor:v8];
  [v7 setIsStatic:self->_isStatic];
  [(PHASEObject *)self transform];
  [v7 setTransform:?];
  return v7;
}

- (void)setIsStatic:(BOOL)a3
{
  v3 = a3;
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = [(PHASEObject *)self engine];
  v6 = v5;
  if (v5)
  {
    if (self->_isStatic != v3)
    {
      v7 = *([v5 implementation] + 368);
      (*(*v7 + 264))(v7, [(PHASEObject *)self geoEntityHandle], v3);
      self->_isStatic = v3;
    }
  }

  else
  {
    v8 = *MEMORY[0x277CCA450];
    v21 = *MEMORY[0x277CCA450];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid PHASEEngine"];
    v22[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];

    v12 = **(Phase::Logger::GetInstance(v11) + 448);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v10 objectForKeyedSubscript:v8];
      v14 = v13;
      v15 = 136315650;
      v16 = "PHASEOccluder.mm";
      v17 = 1024;
      v18 = 83;
      v19 = 2080;
      v20 = [v13 UTF8String];
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v15, 0x1Cu);
    }
  }
}

@end