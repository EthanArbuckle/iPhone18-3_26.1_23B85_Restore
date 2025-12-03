@interface NWConcrete_nw_protocol_instance_registrar
- (NSString)description;
- (void)dealloc;
@end

@implementation NWConcrete_nw_protocol_instance_registrar

- (NSString)description
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<nw_protocol_instance_registrar %p %s>", self, self + 24);

  return v2;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  if (gLogDatapath == 1)
  {
    v3 = __nwlog_obj();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136446466;
      v6 = "[NWConcrete_nw_protocol_instance_registrar dealloc]";
      v7 = 2048;
      selfCopy = self;
      _os_log_impl(&dword_181A37000, v3, OS_LOG_TYPE_DEBUG, "%{public}s <nw_protocol_instance_registrar %p> dealloc", buf, 0x16u);
    }
  }

  v4.receiver = self;
  v4.super_class = NWConcrete_nw_protocol_instance_registrar;
  [(NWConcrete_nw_protocol_instance_registrar *)&v4 dealloc];
}

@end