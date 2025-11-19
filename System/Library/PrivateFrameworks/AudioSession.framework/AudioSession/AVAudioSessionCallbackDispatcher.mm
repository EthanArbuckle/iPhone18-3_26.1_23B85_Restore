@interface AVAudioSessionCallbackDispatcher
- (void)IOControllerEvent:(unint64_t)a3 sessions:(id)a4 isDecoupledInput:(BOOL)a5;
- (void)pingClient:(unsigned int)a3;
@end

@implementation AVAudioSessionCallbackDispatcher

- (void)pingClient:(unsigned int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = *avas::client::gSessionClientLog(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315650;
    v7 = "AVAudioSessionCallbackDispatcher.mm";
    v8 = 1024;
    v9 = 192;
    v10 = 1024;
    v11 = a3;
    _os_log_impl(&dword_1AC8A4000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d pingClient called for session %x", &v6, 0x18u);
  }

  AVAudioSessionHandlePing(a3);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)IOControllerEvent:(unint64_t)a3 sessions:(id)a4 isDecoupledInput:(BOOL)a5
{
  v5 = a5;
  v7 = a4;
  v8 = [v7 bytes];
  v9 = [v7 length];
  __p = 0;
  v11 = 0;
  v12 = 0;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int const*,unsigned int const*>(&__p, v8, v8 + (v9 & 0xFFFFFFFFFFFFFFFCLL), v9 >> 2);
  AVAudioSessionDispatchIOControllerEvent(a3, &__p, v5);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

@end