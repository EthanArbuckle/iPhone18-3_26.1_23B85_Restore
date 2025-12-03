@interface _MLCANEModel
- (_MLCANEModel)initWithModel:(id)model options:(id)options qos:(unsigned int)qos plist:(id)plist;
- (void)dealloc;
@end

@implementation _MLCANEModel

- (_MLCANEModel)initWithModel:(id)model options:(id)options qos:(unsigned int)qos plist:(id)plist
{
  modelCopy = model;
  optionsCopy = options;
  plistCopy = plist;
  v17.receiver = self;
  v17.super_class = _MLCANEModel;
  v14 = [(_MLCANEModel *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_anefModel, model);
    objc_storeStrong(&v15->_options, options);
    v15->_qos = qos;
    objc_storeStrong(&v15->_plist, plist);
  }

  return v15;
}

- (void)dealloc
{
  v20 = *MEMORY[0x277D85DE8];
  anefModel = self->_anefModel;
  qos = self->_qos;
  v13 = 0;
  v6 = [(_ANEInMemoryModel *)anefModel unloadWithQoS:qos error:&v13];
  v7 = v13;
  if ((v6 & 1) == 0)
  {
    v8 = +[MLCLog framework];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromSelector(a2);
      v11 = self->_anefModel;
      *buf = 138412802;
      v15 = v10;
      v16 = 2112;
      v17 = v11;
      v18 = 2112;
      v19 = v7;
      _os_log_error_impl(&dword_238C1D000, v8, OS_LOG_TYPE_ERROR, "%@: failed to unload model=%@ : error=%@", buf, 0x20u);
    }
  }

  v12.receiver = self;
  v12.super_class = _MLCANEModel;
  [(_MLCANEModel *)&v12 dealloc];
  v9 = *MEMORY[0x277D85DE8];
}

@end