@interface PHASESource
- (PHASESource)init;
- (PHASESource)initWithEngine:(PHASEEngine *)engine;
- (PHASESource)initWithEngine:(PHASEEngine *)engine shapes:(NSArray *)shapes;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setDopplerFactor:(double)a3;
- (void)setGain:(double)gain;
@end

@implementation PHASESource

- (PHASESource)init
{
  [(PHASESource *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASESource)initWithEngine:(PHASEEngine *)engine
{
  v4 = engine;
  v9.receiver = self;
  v9.super_class = PHASESource;
  v5 = [(PHASEObject *)&v9 initWithEngine:v4 entityType:3 shapes:0];
  if (v5)
  {
    v6 = objc_opt_new();
    shapes = v5->_shapes;
    v5->_shapes = v6;

    v5->_gain = 1.0;
    v5->_dopplerFactor = 1.0;
    *v5->_velocity = 0u;
  }

  return v5;
}

- (PHASESource)initWithEngine:(PHASEEngine *)engine shapes:(NSArray *)shapes
{
  v6 = engine;
  v7 = shapes;
  v8 = v7;
  if (v7 && [(NSArray *)v7 count])
  {
    v15.receiver = self;
    v15.super_class = PHASESource;
    v9 = [(PHASEObject *)&v15 initWithEngine:v6 entityType:3 shapes:v8];
    v10 = v9;
    if (v9)
    {
      v9->_gain = 1.0;
      v9->_dopplerFactor = 1.0;
      *v9->_velocity = 0u;
      v11 = [MEMORY[0x277CBEA60] arrayWithArray:v8];
      v12 = v10->_shapes;
      v10->_shapes = v11;
    }

    self = v10;
    v13 = self;
  }

  else
  {
    [MEMORY[0x277CBEAD8] raise:@"API Misuse" format:@"Cannot create a volumetric PHASESource with nil or empty shape array"];
    v13 = 0;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(NSArray *)self->_shapes count])
  {
    v5 = [objc_opt_class() allocWithZone:a3];
    v6 = [(PHASEObject *)self engine];
    v7 = [(PHASESource *)self shapes];
    v8 = [v5 initWithEngine:v6 shapes:v7];
  }

  else
  {
    v9 = [objc_opt_class() allocWithZone:a3];
    v6 = [(PHASEObject *)self engine];
    v8 = [v9 initWithEngine:v6];
  }

  [v8 setGain:self->_gain];
  [v8 setDopplerFactor:self->_dopplerFactor];
  [v8 setVelocity:*self->_velocity];
  [(PHASEObject *)self transform];
  [v8 setTransform:?];
  return v8;
}

- (void)setGain:(double)gain
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = [(PHASEObject *)self engine];
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = NSStringFromSelector(a2);
    v10 = PHASEGetPropertyBounded<double>(v8, v9, gain, 0.0, 1.0);

    if (self->_gain != v10)
    {
      v11 = *([v6 implementation] + 368);
      v12.mData = [(PHASEObject *)self geoEntityHandle];
      v13 = v10;
      (*(*v11 + 144))(v11, v12, v13);
      self->_gain = v10;
    }
  }

  else
  {
    v14 = *MEMORY[0x277CCA450];
    v27 = *MEMORY[0x277CCA450];
    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid PHASEEngine"];
    v28[0] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];

    v18 = **(Phase::Logger::GetInstance(v17) + 448);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [v16 objectForKeyedSubscript:v14];
      v20 = v19;
      v21 = 136315650;
      v22 = "PHASESource.mm";
      v23 = 1024;
      v24 = 113;
      v25 = 2080;
      v26 = [v19 UTF8String];
      _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v21, 0x1Cu);
    }
  }
}

- (void)setDopplerFactor:(double)a3
{
  v6 = objc_opt_class();
  v8 = NSStringFromClass(v6);
  v7 = NSStringFromSelector(a2);
  self->_dopplerFactor = PHASEGetPropertyBounded<double>(v8, v7, a3, 0.0, 1.79769313e308);
}

@end