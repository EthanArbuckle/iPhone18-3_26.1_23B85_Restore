@interface IOHIDServiceCreate
@end

@implementation IOHIDServiceCreate

uint64_t ___IOHIDServiceCreate_block_invoke()
{
  v6 = *MEMORY[0x1E69E9840];
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  *&__absoluteTime_to_nanoseconds_factor = 1.0 / (v0 / v1);
  memset(&v5, 0, sizeof(v5));
  if (hid_pthread_attr_init(&v5, 63, 2))
  {
    ___IOHIDServiceCreate_block_invoke_cold_1();
  }

  if (pthread_create(&__serviceRunLoop, &v5, __IOHIDServiceRunLoopCompatibilityThread, 0))
  {
    ___IOHIDServiceCreate_block_invoke_cold_2();
  }

  pthread_attr_destroy(&v5);
  pthread_mutex_lock(&stru_1EAF1D018);
  while (!qword_1EAF1D008)
  {
    pthread_cond_wait(&stru_1EAF1D058, &stru_1EAF1D018);
  }

  result = pthread_mutex_unlock(&stru_1EAF1D018);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

@end