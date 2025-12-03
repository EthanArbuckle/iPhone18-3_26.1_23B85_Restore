@interface SNProcessingContext
- (SNProcessingContext)initWithGraph:(id)graph sharedProcessingGraph:(id)processingGraph error:(id *)error;
- (id).cxx_construct;
- (shared_ptr<SoundAnalysis::ProcessingContext>)processingContext;
@end

@implementation SNProcessingContext

- (shared_ptr<SoundAnalysis::ProcessingContext>)processingContext
{
  cntrl = self->_processingContext.__cntrl_;
  *v2 = self->_processingContext.__ptr_;
  v2[1] = cntrl;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  result.__cntrl_ = a2;
  result.__ptr_ = self;
  return result;
}

- (SNProcessingContext)initWithGraph:(id)graph sharedProcessingGraph:(id)processingGraph error:(id *)error
{
  graphCopy = graph;
  processingGraphCopy = processingGraph;
  v27.receiver = self;
  v27.super_class = SNProcessingContext;
  v10 = [(SNProcessingContext *)&v27 init];
  if (v10)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x4012000000;
    v22 = sub_1C9A4E3CC;
    v23 = sub_1C9A4E3DC;
    v24 = "";
    v25 = 0;
    v26 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = sub_1C9A4E3EC;
    v15[3] = &unk_1E8346C40;
    v18 = &v19;
    v16 = graphCopy;
    v17 = processingGraphCopy;
    if (sub_1C9A74388(SNDSPGraphUtilities, v15, error))
    {
      v12 = v20[6];
      v11 = v20[7];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      cntrl = v10->_processingContext.__cntrl_;
      v10->_processingContext.__ptr_ = v12;
      v10->_processingContext.__cntrl_ = v11;
      if (cntrl)
      {
        sub_1C9A4E570(cntrl);
      }
    }

    else
    {

      v10 = 0;
    }

    _Block_object_dispose(&v19, 8);
    if (v26)
    {
      sub_1C9A4E570(v26);
    }
  }

  return v10;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

@end