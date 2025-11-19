@interface BLSDesiredFidelityRequest
- (BLSDesiredFidelityRequest)initWithCompletion:(id)a3;
- (void)completeWithDesiredFidelity:(int64_t)a3;
@end

@implementation BLSDesiredFidelityRequest

- (BLSDesiredFidelityRequest)initWithCompletion:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = BLSDesiredFidelityRequest;
  v5 = [(BLSDesiredFidelityRequest *)&v10 init];
  v6 = v5;
  if (v5)
  {
    v5->_lock._os_unfair_lock_opaque = 0;
    v7 = MEMORY[0x223D716E0](v4);
    completion = v6->_completion;
    v6->_completion = v7;
  }

  return v6;
}

- (void)completeWithDesiredFidelity:(int64_t)a3
{
  os_unfair_lock_lock(&self->_lock);
  lock_completed = self->_lock_completed;
  self->_lock_completed = 1;
  v6 = MEMORY[0x223D716E0](self->_completion);
  completion = self->_completion;
  self->_completion = 0;

  os_unfair_lock_unlock(&self->_lock);
  if (lock_completed)
  {
    v8 = bls_scenes_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(BLSDesiredFidelityRequest *)self completeWithDesiredFidelity:v8];
    }
  }

  else if (v6)
  {
    v6[2](v6, a3);
  }
}

- (void)completeWithDesiredFidelity:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 134217984;
  v4 = a1;
  _os_log_error_impl(&dword_21FE25000, a2, OS_LOG_TYPE_ERROR, "%p completeWithDesiredFidelity should only be called once", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end