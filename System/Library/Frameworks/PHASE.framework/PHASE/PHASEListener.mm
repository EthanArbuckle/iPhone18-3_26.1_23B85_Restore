@interface PHASEListener
- (PHASEListener)init;
- (PHASEListener)initWithEngine:(PHASEEngine *)engine;
- (PHASEListener)initWithEngine:(id)a3 entityType:(unsigned int)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (void)setAutomaticHeadTrackingFlags:(unint64_t)a3;
- (void)setDopplerFactor:(double)a3;
- (void)setGain:(double)gain;
@end

@implementation PHASEListener

- (PHASEListener)init
{
  [(PHASEListener *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEListener)initWithEngine:(id)a3 entityType:(unsigned int)a4
{
  v4 = *&a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v11.receiver = self;
  v11.super_class = PHASEListener;
  v7 = [(PHASEObject *)&v11 initWithEngine:v6 entityType:v4 shapes:0];
  v8 = v7;
  if (v7)
  {
    v7->_gain = 1.0;
    v7->_dopplerFactor = 1.0;
    *v7->_velocity = 0u;
    v9 = **(Phase::Logger::GetInstance(v7) + 448);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v13 = "PHASEListener.mm";
      v14 = 1024;
      v15 = 59;
      v16 = 2112;
      v17 = v8;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created %@", buf, 0x1Cu);
    }
  }

  return v8;
}

- (PHASEListener)initWithEngine:(PHASEEngine *)engine
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = engine;
  if ([(PHASEEngine *)v4 engineMode]== 2 || [(PHASEEngine *)v4 engineMode]== 1)
  {
    v5 = [[PHASESharedListener alloc] initInternalWithEngine:v4];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PHASEListener;
    v7 = [(PHASEObject *)&v9 initWithEngine:v4 entityType:2 shapes:0];
    v5 = v7;
    if (v7)
    {
      v7->_gain = 1.0;
      v7->_dopplerFactor = 1.0;
      *v7->_velocity = 0u;
      v8 = **(Phase::Logger::GetInstance(v7) + 448);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v11 = "PHASEListener.mm";
        v12 = 1024;
        v13 = 79;
        v14 = 2112;
        v15 = v5;
        _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Created %@", buf, 0x1Cu);
      }
    }
  }

  return v5;
}

- (void)setAutomaticHeadTrackingFlags:(unint64_t)a3
{
  v7 = [(PHASEObject *)self engine];
  if (v7)
  {
    v5 = [v7 implementation];
    if (v5)
    {
      v6 = *(v5 + 368);
      if (v6)
      {
        (*(*v6 + 272))(v6, [(PHASEObject *)self geoEntityHandle], a3 & 1);
      }
    }

    [(PHASEListener *)self internalSetAutomaticHeadTrackingFlags:a3];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(PHASEObject *)self engine];
  v6 = [v4 initWithEngine:v5];

  [v6 setGain:self->_gain];
  [v6 setDopplerFactor:self->_dopplerFactor];
  [v6 setVelocity:*self->_velocity];
  [(PHASEObject *)self transform];
  [v6 setTransform:?];
  return v6;
}

- (void)setGain:(double)gain
{
  v29[1] = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v8 = NSStringFromSelector(a2);
  v9 = PHASEGetPropertyBounded<double>(v7, v8, gain, 0.0, 1.0);

  v10 = [(PHASEObject *)self engine];
  v11 = v10;
  if (v10)
  {
    if (self->_gain != v9)
    {
      v12 = *([v10 implementation] + 368);
      v13.mData = [(PHASEObject *)self geoEntityHandle];
      v14 = v9;
      (*(*v12 + 152))(v12, v13, v14);
      self->_gain = v9;
    }
  }

  else
  {
    v15 = *MEMORY[0x277CCA450];
    v28 = *MEMORY[0x277CCA450];
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid PHASEEngine"];
    v29[0] = v16;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];

    v19 = **(Phase::Logger::GetInstance(v18) + 448);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [v17 objectForKeyedSubscript:v15];
      v21 = v20;
      v22 = 136315650;
      v23 = "PHASEListener.mm";
      v24 = 1024;
      v25 = 133;
      v26 = 2080;
      v27 = [v20 UTF8String];
      _os_log_impl(&dword_23A302000, v19, OS_LOG_TYPE_ERROR, "%25s:%-5d %s", &v22, 0x1Cu);
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