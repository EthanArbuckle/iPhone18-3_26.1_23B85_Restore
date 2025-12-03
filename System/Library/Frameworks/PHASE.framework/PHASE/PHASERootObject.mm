@interface PHASERootObject
- (PHASERootObject)init;
- (PHASERootObject)initWithEngine:(id)engine;
- (PHASERootObject)initWithEngine:(id)engine entityType:(unsigned int)type shapes:(id)shapes;
- (id)copyWithZone:(_NSZone *)zone;
- (void)dealloc;
- (void)setParent:(id)parent;
- (void)setTransform:(Phase::Logger *)transform;
@end

@implementation PHASERootObject

- (PHASERootObject)init
{
  [(PHASERootObject *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASERootObject)initWithEngine:(id)engine entityType:(unsigned int)type shapes:(id)shapes
{
  [(PHASERootObject *)self doesNotRecognizeSelector:a2, *&type, shapes];

  return 0;
}

- (PHASERootObject)initWithEngine:(id)engine
{
  engineCopy = engine;
  v10.receiver = self;
  v10.super_class = PHASERootObject;
  v5 = [(PHASEObject *)&v10 initWithEngine:engineCopy entityType:0 shapes:0];
  v6 = v5;
  if (v5)
  {
    engine = [(PHASEObject *)v5 engine];
    implementation = [engine implementation];
    [(PHASEObject *)v6 setGeoEntityHandle:(*(**(implementation + 368) + 72))(*(implementation + 368))];
  }

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PHASERootObject;
  [(PHASEObject *)&v2 dealloc];
}

- (void)setParent:(id)parent
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = **(Phase::Logger::GetInstance(parent) + 448);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "PHASERootObject.mm";
    v7 = 1024;
    v8 = 66;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error: Do not set the parent of a Root Object.", &v5, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Error: Do not set the parent of a Root Object.");
}

- (void)setTransform:(Phase::Logger *)transform
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = **(Phase::Logger::GetInstance(transform) + 448);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "PHASERootObject.mm";
    v5 = 1024;
    v6 = 71;
    _os_log_impl(&dword_23A302000, v1, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error: Do not set the transform of a Root Object.", &v3, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Error: Do not set the transform of a Root Object.");
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = **(Phase::Logger::GetInstance(self) + 448);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "PHASERootObject.mm";
    v7 = 1024;
    v8 = 76;
    _os_log_impl(&dword_23A302000, v3, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::runtime_error): Error: Do not clone a PHASERootObject.", &v5, 0x12u);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Error: Do not clone a PHASERootObject.");
}

@end