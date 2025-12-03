@interface DataConnectionAgentInterfaceObserver
- (BOOL)pathSatisfied;
- (DataConnectionAgentInterfaceObserver)initWithPathSatisfactionObserver:(DataConnectionAgentPathSatisfactionObserver *)observer domain:(id)domain agentType:(id)type agentClass:(Class)class logName:(const char *)name uuid:()basic_string<char queue:()std:(std::allocator<char>> *)std :char_traits<char> registry:connectionType:;
- (basic_string<char,)agentType;
- (id).cxx_construct;
- (void)dealloc;
- (void)doUpdateInterface:()basic_string<char;
- (void)dumpState;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)slicingSupport:(BOOL)support;
@end

@implementation DataConnectionAgentInterfaceObserver

- (BOOL)pathSatisfied
{
  if (!self->fPathEvaluator)
  {
    v5 = sub_100032AC8(self->fLogger.__ptr_);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    LOWORD(buf[0]) = 0;
    v6 = "#I pathSatisfied check: NO (fPathEvaluator)";
LABEL_33:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
    goto LABEL_34;
  }

  fAgentEvaluator = self->fAgentEvaluator;
  if (!fAgentEvaluator)
  {
    v5 = sub_100032AC8(self->fLogger.__ptr_);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    LOWORD(buf[0]) = 0;
    v6 = "#I pathSatisfied check: NO (fAgentEvaluator)";
    goto LABEL_33;
  }

  v4 = self->fPathAvailable && self->fAgentAvailable;
  path = [(NWPathEvaluator *)fAgentEvaluator path];
  if ([path usesNetworkAgentType:self->fAgentClass])
  {

    goto LABEL_12;
  }

  if (self->fConnectionType)
  {

    goto LABEL_31;
  }

  fSlicingSupported = self->fSlicingSupported;

  if (!fSlicingSupported)
  {
LABEL_31:
    v5 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v6 = "#I pathSatisfied check: NO (agentAvailable)";
      goto LABEL_33;
    }

    goto LABEL_34;
  }

LABEL_12:
  path2 = [(NWPathEvaluator *)self->fPathEvaluator path];
  status = [path2 status];

  if (status == 1)
  {
    *&self->fPathAvailable = 257;
    if (!v4)
    {
      v10 = sub_100032AC8(self->fLogger.__ptr_);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        p_fUuid = &self->fUuid;
        if (*(&self->fUuid.__rep_.__l + 23) < 0)
        {
          p_fUuid = p_fUuid->__rep_.__l.__data_;
        }

        p_fDomain = &self->fDomain;
        if (*(&self->fDomain.__rep_.__l + 23) < 0)
        {
          p_fDomain = p_fDomain->__rep_.__l.__data_;
        }

        p_fAgentType = &self->fAgentType;
        if (*(&self->fAgentType.__rep_.__l + 23) < 0)
        {
          p_fAgentType = p_fAgentType->__rep_.__l.__data_;
        }

        v14 = asStringBool(self->fSlicingSupported);
        fAgentAvailable = self->fAgentAvailable;
        fPathAvailable = self->fPathAvailable;
        p_fInterface = &self->fInterface;
        if (*(&self->fInterface.__rep_.__l + 23) < 0)
        {
          p_fInterface = p_fInterface->__rep_.__l.__data_;
        }

        buf[0] = 136316930;
        *&buf[1] = p_fUuid;
        v23 = 2080;
        v24 = p_fDomain;
        v25 = 2080;
        v26 = p_fAgentType;
        v27 = 2080;
        v28 = v14;
        v29 = 1024;
        v30 = fAgentAvailable;
        v31 = 1024;
        v32 = fPathAvailable;
        v33 = 1024;
        v34 = 1;
        v35 = 2082;
        v36 = p_fInterface;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I pathSatisfied check: NWAgent %s Observe: d = %s, t = %s, sl = %s: aa = %d, pa = %d, status = %d, i=%{public}s", buf, 0x46u);
      }
    }

    selfCopy = self;
    v19 = sub_100032AC8(&self->fQueue.fObj.fObj);
    operator new();
  }

  v5 = sub_100032AC8(self->fLogger.__ptr_);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    v6 = "#I pathSatisfied check: NO (pathAvailable)";
    goto LABEL_33;
  }

LABEL_34:

  return 0;
}

- (basic_string<char,)agentType
{
  if (result[3].__rep_.__s.__data_[7] < 0)
  {
    return sub_100005F2C(retstr, result[2].__rep_.__l.__size_, *(&result[2].__rep_.__l + 2));
  }

  *retstr = *(result + 56);
  return result;
}

- (DataConnectionAgentInterfaceObserver)initWithPathSatisfactionObserver:(DataConnectionAgentPathSatisfactionObserver *)observer domain:(id)domain agentType:(id)type agentClass:(Class)class logName:(const char *)name uuid:()basic_string<char queue:()std:(std::allocator<char>> *)std :char_traits<char> registry:connectionType:
{
  domainCopy = domain;
  typeCopy = type;
  v27.receiver = self;
  v27.super_class = DataConnectionAgentInterfaceObserver;
  v15 = [(DataConnectionAgentInterfaceObserver *)&v27 init];
  v16 = v15;
  v17 = v15;
  if (v15)
  {
    fPathEvaluator = v15->fPathEvaluator;
    v15->fPathEvaluator = 0;

    fAgentEvaluator = v17->fAgentEvaluator;
    v17->fAgentEvaluator = 0;

    v17->fPathSatisfactionObserver = observer;
    v28 = 0;
    v29 = 0uLL;
    ctu::cf::assign();
    v20 = v28;
    v30[0] = v29;
    *(v30 + 7) = *(&v29 + 7);
    v21 = HIBYTE(v29);
    if (*(&v17->fDomain.__rep_.__l + 23) < 0)
    {
      operator delete(v17->fDomain.__rep_.__l.__data_);
    }

    v22 = v30[0];
    v17->fDomain.__rep_.__l.__data_ = v20;
    v17->fDomain.__rep_.__l.__size_ = v22;
    *(&v17->fDomain.__rep_.__l.__size_ + 7) = *(v30 + 7);
    *(&v17->fDomain.__rep_.__l + 23) = v21;
    v28 = 0;
    v29 = 0uLL;
    ctu::cf::assign();
    v23 = v28;
    v30[0] = v29;
    *(v30 + 7) = *(&v29 + 7);
    v24 = HIBYTE(v29);
    if (*(&v17->fAgentType.__rep_.__l + 23) < 0)
    {
      operator delete(v17->fAgentType.__rep_.__l.__data_);
    }

    v25 = v30[0];
    v17->fAgentType.__rep_.__l.__data_ = v23;
    v17->fAgentType.__rep_.__l.__size_ = v25;
    *(&v17->fAgentType.__rep_.__l.__size_ + 7) = *(v30 + 7);
    *(&v17->fAgentType.__rep_.__l + 23) = v24;
    v17->fAgentClass = class;
    *&v17->fPathAvailable = 0;
    std::string::operator=(v16 + 4, std);
    objc_storeStrong(&v16[5].__r_.__value_.__l.__data_, *v31);
    operator new();
  }

  return 0;
}

- (void)slicingSupport:(BOOL)support
{
  if (self->fSlicingSupported != support)
  {
    self->fSlicingSupported = support;
    ptr = self->fLogger.__ptr_;
    if (ptr)
    {
      v5 = sub_100032AC8(ptr);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315394;
        v7 = "[DataConnectionAgentInterfaceObserver slicingSupport:]";
        v8 = 2080;
        v9 = asStringBool(support);
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent: slicing support update: %s", &v6, 0x16u);
      }
    }
  }
}

- (void)doUpdateInterface:()basic_string<char
{
  *&self->fPathAvailable = 0;
  fPathEvaluator = self->fPathEvaluator;
  if (fPathEvaluator)
  {
    if (self->fLogger.__ptr_)
    {
      v6 = sub_100032AC8(self->fLogger.__ptr_);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        p_fUuid = &self->fUuid;
        if (*(&self->fUuid.__rep_.__l + 23) < 0)
        {
          p_fUuid = p_fUuid->__rep_.__l.__data_;
        }

        v8 = [(NWPathEvaluator *)self->fPathEvaluator description];
        parameters = [(NWPathEvaluator *)self->fPathEvaluator parameters];
        requiredInterface = [parameters requiredInterface];
        interfaceName = [requiredInterface interfaceName];
        *buf = 136315906;
        v68 = "[DataConnectionAgentInterfaceObserver doUpdateInterface:]";
        v69 = 2082;
        v70 = p_fUuid;
        v71 = 2114;
        v72 = v8;
        v73 = 2114;
        v74 = interfaceName;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s remove pathEvaluator %{public}@ from %{public}@", buf, 0x2Au);
      }

      fPathEvaluator = self->fPathEvaluator;
    }

    [(NWPathEvaluator *)fPathEvaluator removeObserver:self forKeyPath:@"path"];
    v12 = self->fPathEvaluator;
    self->fPathEvaluator = 0;
  }

  fAgentEvaluator = self->fAgentEvaluator;
  if (fAgentEvaluator)
  {
    if (self->fLogger.__ptr_)
    {
      v14 = sub_100032AC8(self->fLogger.__ptr_);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        data = &self->fUuid;
        if (*(&self->fUuid.__rep_.__l + 23) < 0)
        {
          data = data->__rep_.__l.__data_;
        }

        v16 = [(NWPathEvaluator *)self->fAgentEvaluator description];
        parameters2 = [(NWPathEvaluator *)self->fAgentEvaluator parameters];
        requiredInterface2 = [parameters2 requiredInterface];
        interfaceName2 = [requiredInterface2 interfaceName];
        *buf = 136315906;
        v68 = "[DataConnectionAgentInterfaceObserver doUpdateInterface:]";
        v69 = 2082;
        v70 = data;
        v71 = 2114;
        v72 = v16;
        v73 = 2114;
        v74 = interfaceName2;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s remove agentEvaluator %{public}@ from %{public}@", buf, 0x2Au);
      }

      fAgentEvaluator = self->fAgentEvaluator;
    }

    [(NWPathEvaluator *)fAgentEvaluator removeObserver:self forKeyPath:@"path"];
    v20 = self->fAgentEvaluator;
    self->fAgentEvaluator = 0;
  }

  interface = nw_interface_create_with_name();
  v21 = nw_parameters_create();
  nw_parameters_require_interface(v21, interface);
  nw_parameters_set_allow_ultra_constrained();
  std::string::operator=(&self->fInterface, a3);
  ptr = self->fLogger.__ptr_;
  if (ptr)
  {
    v23 = sub_100032AC8(ptr);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = &self->fUuid;
      if (*(&self->fUuid.__rep_.__l + 23) < 0)
      {
        v24 = v24->__rep_.__l.__data_;
      }

      p_fDomain = &self->fDomain;
      if (*(&self->fDomain.__rep_.__l + 23) < 0)
      {
        p_fDomain = p_fDomain->__rep_.__l.__data_;
      }

      p_fAgentType = &self->fAgentType;
      if (*(&self->fAgentType.__rep_.__l + 23) < 0)
      {
        p_fAgentType = p_fAgentType->__rep_.__l.__data_;
      }

      v27 = a3;
      if (*(&a3->__rep_.__l + 23) < 0)
      {
        v27 = a3->__rep_.__l.__data_;
      }

      *buf = 136316162;
      v68 = "[DataConnectionAgentInterfaceObserver doUpdateInterface:]";
      v69 = 2082;
      v70 = v24;
      v71 = 2082;
      v72 = p_fDomain;
      v73 = 2082;
      v74 = p_fAgentType;
      v75 = 2082;
      v76 = v27;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s DataConnectionAgentInterfaceObserver path domain = %{public}s, type = %{public}s: updating interface to %{public}s", buf, 0x34u);
    }

    ptr = self->fLogger.__ptr_;
  }

  v28 = sub_100032AC8(ptr);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = &self->fUuid;
    if (*(&self->fUuid.__rep_.__l + 23) < 0)
    {
      v29 = v29->__rep_.__l.__data_;
    }

    v30 = [v21 description];
    *buf = 136446466;
    v68 = v29;
    v69 = 2114;
    v70 = v30;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s path evaluator parameters: %{public}@", buf, 0x16u);
  }

  v31 = [NWPathEvaluator alloc];
  v32 = [NWParameters parametersWithCParameters:v21];
  v33 = [v31 initWithEndpoint:0 parameters:v32];
  v34 = self->fPathEvaluator;
  self->fPathEvaluator = v33;

  v35 = a3;
  if (*(&a3->__rep_.__l + 23) < 0)
  {
    v35 = a3->__rep_.__l.__data_;
  }

  v36 = self->fPathEvaluator;
  v37 = [NSString stringWithUTF8String:v35];
  [(NWPathEvaluator *)v36 addObserver:self forKeyPath:@"path" options:5 context:v37];

  v38 = self->fLogger.__ptr_;
  if (v38)
  {
    v39 = sub_100032AC8(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = &self->fUuid;
      if (*(&self->fUuid.__rep_.__l + 23) < 0)
      {
        v40 = v40->__rep_.__l.__data_;
      }

      v41 = [(NWPathEvaluator *)self->fPathEvaluator description];
      v42 = v41;
      v43 = a3;
      if (*(&a3->__rep_.__l + 23) < 0)
      {
        v43 = a3->__rep_.__l.__data_;
      }

      *buf = 136315906;
      v68 = "[DataConnectionAgentInterfaceObserver doUpdateInterface:]";
      v69 = 2082;
      v70 = v40;
      v71 = 2114;
      v72 = v41;
      v73 = 2082;
      v74 = v43;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s added observer: new pathEvaluator %{public}@ on %{public}s", buf, 0x2Au);
    }
  }

  v44 = xpc_array_create(0, 0);
  xpc_array_set_string(v44, 0xFFFFFFFFFFFFFFFFLL, "Cellular");
  v45 = xpc_array_create(0, 0);
  v46 = v45;
  v47 = &self->fAgentType;
  v48 = &self->fAgentType;
  if (*(&self->fAgentType.__rep_.__l + 23) < 0)
  {
    v48 = v47->__rep_.__l.__data_;
  }

  xpc_array_set_string(v45, 0xFFFFFFFFFFFFFFFFLL, v48->__rep_.__s.__data_);
  nw_parameters_set_required_netagent_classes();
  v49 = self->fLogger.__ptr_;
  if (v49)
  {
    v50 = sub_100032AC8(v49);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = &self->fUuid;
      if (*(&self->fUuid.__rep_.__l + 23) < 0)
      {
        v51 = v51->__rep_.__l.__data_;
      }

      v52 = &self->fDomain;
      if (*(&self->fDomain.__rep_.__l + 23) < 0)
      {
        v52 = v52->__rep_.__l.__data_;
      }

      if (*(&self->fAgentType.__rep_.__l + 23) < 0)
      {
        v47 = v47->__rep_.__l.__data_;
      }

      v53 = a3;
      if (*(&a3->__rep_.__l + 23) < 0)
      {
        v53 = a3->__rep_.__l.__data_;
      }

      *buf = 136316162;
      v68 = "[DataConnectionAgentInterfaceObserver doUpdateInterface:]";
      v69 = 2082;
      v70 = v51;
      v71 = 2082;
      v72 = v52;
      v73 = 2082;
      v74 = v47;
      v75 = 2082;
      v76 = v53;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s DataConnectionAgentInterfaceObserver agent domain = %{public}s, type = %{public}s: updating interface to %{public}s", buf, 0x34u);
    }

    v49 = self->fLogger.__ptr_;
  }

  v54 = sub_100032AC8(v49);
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = &self->fUuid;
    if (*(&self->fUuid.__rep_.__l + 23) < 0)
    {
      v55 = v55->__rep_.__l.__data_;
    }

    v56 = [v21 description];
    *buf = 136446466;
    v68 = v55;
    v69 = 2114;
    v70 = v56;
    _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I NWAgent %{public}s agent evaluator parameters: %{public}@", buf, 0x16u);
  }

  v57 = [NWPathEvaluator alloc];
  v58 = [NWParameters parametersWithCParameters:v21];
  v59 = [v57 initWithEndpoint:0 parameters:v58];
  v60 = self->fAgentEvaluator;
  self->fAgentEvaluator = v59;

  [(NWPathEvaluator *)self->fAgentEvaluator addObserver:self forKeyPath:@"path" options:5 context:0];
  v61 = self->fLogger.__ptr_;
  if (v61)
  {
    v62 = sub_100032AC8(v61);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
    {
      v63 = &self->fUuid;
      if (*(&self->fUuid.__rep_.__l + 23) < 0)
      {
        v63 = v63->__rep_.__l.__data_;
      }

      v64 = [(NWPathEvaluator *)self->fAgentEvaluator description];
      v65 = v64;
      if (*(&a3->__rep_.__l + 23) < 0)
      {
        a3 = a3->__rep_.__l.__data_;
      }

      *buf = 136315906;
      v68 = "[DataConnectionAgentInterfaceObserver doUpdateInterface:]";
      v69 = 2082;
      v70 = v63;
      v71 = 2114;
      v72 = v64;
      v73 = 2082;
      v74 = a3;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I %s: NWAgent %{public}s added observer: new agentEvaluator %{public}@ on %{public}s", buf, 0x2Au);
    }
  }
}

- (void)dealloc
{
  fPathEvaluator = self->fPathEvaluator;
  if (fPathEvaluator)
  {
    [(NWPathEvaluator *)fPathEvaluator removeObserver:self forKeyPath:@"path"];
    v4 = self->fPathEvaluator;
    self->fPathEvaluator = 0;
  }

  fAgentEvaluator = self->fAgentEvaluator;
  if (fAgentEvaluator)
  {
    [(NWPathEvaluator *)fAgentEvaluator removeObserver:self forKeyPath:@"path"];
    v6 = self->fAgentEvaluator;
    self->fAgentEvaluator = 0;
  }

  v7.receiver = self;
  v7.super_class = DataConnectionAgentInterfaceObserver;
  [(DataConnectionAgentInterfaceObserver *)&v7 dealloc];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  selfCopy = self;
  v13 = sub_100032AC8(&self->fQueue.fObj.fObj);
  operator new();
}

- (void)dumpState
{
  if (self->fAgentEvaluator)
  {
    v3 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      p_fUuid = &self->fUuid;
      if (*(&self->fUuid.__rep_.__l + 23) < 0)
      {
        p_fUuid = p_fUuid->__rep_.__l.__data_;
      }

      p_fDomain = &self->fDomain;
      if (*(&self->fDomain.__rep_.__l + 23) < 0)
      {
        p_fDomain = p_fDomain->__rep_.__l.__data_;
      }

      p_fAgentType = &self->fAgentType;
      if (*(&self->fAgentType.__rep_.__l + 23) < 0)
      {
        p_fAgentType = p_fAgentType->__rep_.__l.__data_;
      }

      v7 = asStringBool(self->fSlicingSupported);
      fAgentAvailable = self->fAgentAvailable;
      fPathAvailable = self->fPathAvailable;
      p_fInterface = &self->fInterface;
      if (*(&self->fInterface.__rep_.__l + 23) < 0)
      {
        p_fInterface = p_fInterface->__rep_.__l.__data_;
      }

      v38 = 136316674;
      v39 = p_fUuid;
      v40 = 2080;
      v41 = p_fDomain;
      v42 = 2080;
      v43 = p_fAgentType;
      v44 = 2080;
      v45 = v7;
      v46 = 1024;
      v47 = fAgentAvailable;
      v48 = 1024;
      v49 = fPathAvailable;
      v50 = 2082;
      v51[0] = p_fInterface;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DATA:: dump fAgentEvaluator: NWAgent %s Observe: DataConnectionAgentInterfaceObserver agent domain = %s, type = %s, fSlicingSupported = %s: fAvailability = %d, check satisfied path = %d, interface=%{public}s", &v38, 0x40u);
    }

    v11 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      data = &self->fUuid;
      if (*(&self->fUuid.__rep_.__l + 23) < 0)
      {
        data = data->__rep_.__l.__data_;
      }

      parameters = [(NWPathEvaluator *)self->fAgentEvaluator parameters];
      v14 = [parameters description];
      v38 = 136315394;
      v39 = data;
      v40 = 2114;
      v41 = v14;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I DATA:: dump fAgentEvaluator: NWAgent %s Observe: agentEvalParams=%{public}@", &v38, 0x16u);
    }

    v15 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = &self->fUuid;
      if (*(&self->fUuid.__rep_.__l + 23) < 0)
      {
        v16 = v16->__rep_.__l.__data_;
      }

      path = [(NWPathEvaluator *)self->fAgentEvaluator path];
      v18 = [path description];
      v38 = 136315394;
      v39 = v16;
      v40 = 2114;
      v41 = v18;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I DATA:: dump fAgentEvaluator: NWAgent %s Observe: agent.path=%{public}@", &v38, 0x16u);
    }
  }

  fPathEvaluator = self->fPathEvaluator;
  if (fPathEvaluator)
  {
    path2 = [(NWPathEvaluator *)fPathEvaluator path];
    status = [path2 status];

    v22 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = &self->fUuid;
      if (*(&self->fUuid.__rep_.__l + 23) < 0)
      {
        v23 = v23->__rep_.__l.__data_;
      }

      v24 = &self->fDomain;
      if (*(&self->fDomain.__rep_.__l + 23) < 0)
      {
        v24 = v24->__rep_.__l.__data_;
      }

      v25 = &self->fAgentType;
      if (*(&self->fAgentType.__rep_.__l + 23) < 0)
      {
        v25 = v25->__rep_.__l.__data_;
      }

      v26 = asStringBool(self->fSlicingSupported);
      v27 = self->fAgentAvailable;
      v28 = self->fPathAvailable;
      v29 = &self->fInterface;
      if (*(&self->fInterface.__rep_.__l + 23) < 0)
      {
        v29 = v29->__rep_.__l.__data_;
      }

      v38 = 136316930;
      v39 = v23;
      v40 = 2080;
      v41 = v24;
      v42 = 2080;
      v43 = v25;
      v44 = 2080;
      v45 = v26;
      v46 = 1024;
      v47 = v27;
      v48 = 1024;
      v49 = v28;
      v50 = 1024;
      LODWORD(v51[0]) = status;
      WORD2(v51[0]) = 2082;
      *(v51 + 6) = v29;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I DATA:: dump fPathEvaluator: NWAgent %s Observe: DataConnectionAgentInterfaceObserver agent domain = %s, type = %s, fSlicingSupported = %s: fAvailability = %d, check satisfied path = %d, status = %d, interface=%{public}s", &v38, 0x46u);
    }

    v30 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = &self->fUuid;
      if (*(&self->fUuid.__rep_.__l + 23) < 0)
      {
        v31 = v31->__rep_.__l.__data_;
      }

      parameters2 = [(NWPathEvaluator *)self->fPathEvaluator parameters];
      v33 = [parameters2 description];
      v38 = 136315394;
      v39 = v31;
      v40 = 2114;
      v41 = v33;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I DATA:: dump fPathEvaluator: NWAgent %s Observe: pathEvalParams=%{public}@", &v38, 0x16u);
    }

    v34 = sub_100032AC8(self->fLogger.__ptr_);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = &self->fUuid;
      if (*(&self->fUuid.__rep_.__l + 23) < 0)
      {
        v35 = v35->__rep_.__l.__data_;
      }

      path3 = [(NWPathEvaluator *)self->fPathEvaluator path];
      v37 = [path3 description];
      v38 = 136315394;
      v39 = v35;
      v40 = 2114;
      v41 = v37;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I DATA:: dump fPathEvaluator: NWAgent %s Observe: path.path=%{public}@", &v38, 0x16u);
    }
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0u;
  *(self + 4) = 0u;
  *(self + 2) = 0u;
  *(self + 6) = 0u;
  *(self + 7) = 0u;
  *(self + 16) = 0;
  *(self + 9) = 0u;
  *(self + 10) = 0u;
  *(self + 22) = 0;
  return self;
}

@end