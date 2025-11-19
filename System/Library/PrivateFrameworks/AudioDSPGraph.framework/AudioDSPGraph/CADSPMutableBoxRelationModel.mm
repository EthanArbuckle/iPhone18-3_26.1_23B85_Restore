@interface CADSPMutableBoxRelationModel
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setBoxName:(id)a3 ofEndpoint:(unsigned int)a4;
@end

@implementation CADSPMutableBoxRelationModel

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4.receiver = self;
  v4.super_class = CADSPMutableBoxRelationModel;
  return [(CADSPBoxRelationModel *)&v4 mutableCopyWithZone:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CADSPBoxRelationModel allocWithZone:a3];
  std::string::operator=(&v4->_this, &self->super._this);
  std::string::operator=(&v4->_this.source.var0, &self->super._this.source.var0);
  *v4[1]._this.source.name.__rep_.__s.__data_ = *self[1].super._this.source.name.__rep_.__s.__data_;
  return v4;
}

- (void)setBoxName:(id)a3 ofEndpoint:(unsigned int)a4
{
  v11 = *MEMORY[0x1E69E9840];
  v10 = a3;
  if (!v10)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = v10;
  v7 = [v10 UTF8String];
  v8 = 24;
  if (!a4)
  {
    v8 = 0;
  }

  std::string::__assign_external(&self->super._this.source.name.__rep_.__s.__data_[v8], v7);
  v9 = *MEMORY[0x1E69E9840];
}

@end