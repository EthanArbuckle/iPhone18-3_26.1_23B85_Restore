@interface CADSPSubset
- (BOOL)loadStrip:(id)a3 type:(unsigned int)a4 withResourcePath:(id)a5 error:(id *)a6;
- (CADSPSubset)initWithSubset:(shared_ptr<AudioDSPGraph:(id)a4 :(id)a5 Subset>)a3 model:boxes:;
- (id).cxx_construct;
- (id)saveStrip:(unsigned int)a3 error:(id *)a4;
@end

@implementation CADSPSubset

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  return self;
}

- (id)saveStrip:(unsigned int)a3 error:(id *)a4
{
  if (a3 == 1)
  {
    if (a4)
    {
      v11 = 0;
      *a4 = [CADSPError errorWithCode:1853060464 descriptionFormat:@"subset cannot save property strip(s)"];
      return v11;
    }

    return 0;
  }

  if (a3)
  {
    return 0;
  }

  Subset = AudioDSPGraph::Graph::getSubset(*(*self->_this.__ptr_ + 1016), *(*self->_this.__ptr_ + 1024), self->_this.__ptr_ + 1);
  if (Subset)
  {
    v5 = Subset;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    std::vector<AudioDSPGraph::Box *>::reserve(&v14, *(Subset + 56));
    for (i = *(v5 + 48); i; i = *i)
    {
      v17 = i[2];
      std::vector<AudioDSPGraph::Box *>::push_back[abi:ne200100](&v14, &v17);
    }

    v7 = v14;
    v8 = 126 - 2 * __clz(v15 - v14);
    if (v15 == v14)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::vector<AudioDSPGraph::Box *> AudioDSPGraph::GetBoxesSortedByName<AudioDSPGraph::Box *>(std::unordered_set<AudioDSPGraph::Box *> const&)::{lambda(AudioDSPGraph::Box *,AudioDSPGraph::Box *)#1} &,AudioDSPGraph::Box **,false>(v14, v15, v9, 1);
    AudioDSPGraph::stripDictFromBoxes(&v17, &v14);
    if (v7)
    {
      operator delete(v7);
    }

    v10 = v17;
  }

  else
  {
    v10 = 0;
  }

  v12 = v10;
  v11 = v12;
  if (v12)
  {
    CFRelease(v12);
  }

  return v11;
}

- (BOOL)loadStrip:(id)a3 type:(unsigned int)a4 withResourcePath:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  if (a4 == 1)
  {
    if (a6)
    {
      v13 = [CADSPError errorWithCode:1853060464 descriptionFormat:@"subset cannot load property strip(s)"];
      v14 = v13;
      v6 = 0;
      *a6 = v13;
    }

    else
    {
      v6 = 0;
    }
  }

  else if (!a4)
  {
    AudioDSPGraph::Graph::setAUStrip(*self->_this.__ptr_, v11);
    v6 = 1;
  }

  return v6 & 1;
}

- (CADSPSubset)initWithSubset:(shared_ptr<AudioDSPGraph:(id)a4 :(id)a5 Subset>)a3 model:boxes:
{
  ptr = a3.__ptr_;
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3.__cntrl_;
  v9 = a4;
  if (!*ptr)
  {
    v22 = 0;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v23 = 134217984;
    v24 = 0;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v21.receiver = self;
  v21.super_class = CADSPSubset;
  v10 = [(CADSPSubset *)&v21 init];
  v11 = v10;
  if (v10)
  {
    v13 = *ptr;
    v12 = *(ptr + 1);
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = v10->_this.__cntrl_;
    v11->_this.__ptr_ = v13;
    v11->_this.__cntrl_ = v12;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }

    v15 = [(__shared_weak_count *)v8 copy];
    model = v11->_model;
    v11->_model = v15;

    v17 = [v9 copy];
    boxes = v11->_boxes;
    v11->_boxes = v17;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

@end