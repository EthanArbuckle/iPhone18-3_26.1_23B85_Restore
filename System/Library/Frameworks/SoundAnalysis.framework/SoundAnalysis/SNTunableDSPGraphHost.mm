@interface SNTunableDSPGraphHost
- (SNTunableDSPGraphHost)initWithGraph:(id)graph error:(id *)error;
@end

@implementation SNTunableDSPGraphHost

- (SNTunableDSPGraphHost)initWithGraph:(id)graph error:(id *)error
{
  graphCopy = graph;
  v22.receiver = self;
  v22.super_class = SNTunableDSPGraphHost;
  v7 = [(SNTunableDSPGraphHost *)&v22 init];
  if (v7)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3812000000;
    v18 = sub_1C9A4F190;
    v19 = sub_1C9A4F1A0;
    v20 = "";
    v21 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = sub_1C9A4F1D8;
    v12[3] = &unk_1E8346C68;
    v14 = &v15;
    v13 = graphCopy;
    if (sub_1C9A74388(SNDSPGraphUtilities, v12, error))
    {
      v8 = v16[6];
      v16[6] = 0;
      ptr = v7->_tuningHost.__ptr_;
      v7->_tuningHost.__ptr_ = v8;
      if (ptr)
      {
        (*(*ptr + 8))(ptr);
      }
    }

    else
    {

      v7 = 0;
    }

    _Block_object_dispose(&v15, 8);
    v10 = v21;
    v21 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  return v7;
}

@end