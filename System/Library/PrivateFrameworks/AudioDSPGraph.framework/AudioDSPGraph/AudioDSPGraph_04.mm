const void **CA::DSP::ReferenceCounted<__CADSPJackModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addWire(uint64_t a1, const UInt8 *a2, uint64_t a3, const UInt8 *a4, uint64_t a5, uint64_t a6, int a7)
{
  CA::DSP::MutableWireModel::Create(&v28, *MEMORY[0x1E695E480]);
  v14 = v28;
  v27 = v28;
  if (v28)
  {
    CFRetain(v28);
  }

  CA::DSP::CreateUTF8StringNoCopy(v19, a2);
  [v14 setBoxName:*&v19[0] ofEndpoint:0];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v19);
  CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v27);
  v26 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  [v14 setPortIndex:a3 ofEndpoint:0];
  CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v26);
  v25 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  CA::DSP::CreateUTF8StringNoCopy(v19, a4);
  [v14 setBoxName:*&v19[0] ofEndpoint:1];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(v19);
  CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v25);
  v24 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  [v14 setPortIndex:a5 ofEndpoint:1];
  CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v24);
  v23 = v14;
  if (v14)
  {
    CFRetain(v14);
  }

  v15 = *(a6 + 16);
  v19[0] = *a6;
  v19[1] = v15;
  v20 = *(a6 + 32);
  v21 = a7;
  v22 = 1;
  [v14 setAudioStreamConfiguration:v19];
  CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v23);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v18, *(a1 + 8));
  v28 = 0;
  [v18 addWire:{v14, v14}];
  CA::DSP::ReferenceCounted<__CADSPWireModel const*>::~ReferenceCounted(&v17);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v18);
  return CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v28);
}

const void **CA::DSP::MutableWireModel::Create(CA::DSP::MutableWireModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = [[CADSPMutableWireModel allocWithZone:?]];
  return CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v3);
}

const void **CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::ReferenceCounted<__CADSPWireModel const*>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addWire(uint64_t a1, const UInt8 *a2, uint64_t a3, const UInt8 *a4, uint64_t a5, const UInt8 *a6)
{
  CA::DSP::MutableWireModel::Create(&cf, *MEMORY[0x1E695E480]);
  v12 = cf;
  v21 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v20, a2);
  [v12 setBoxName:v20 ofEndpoint:0];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v20);
  CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v21);
  v19 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  [v12 setPortIndex:a3 ofEndpoint:0];
  CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v19);
  v18 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v20, a4);
  [v12 setBoxName:v20 ofEndpoint:1];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v20);
  CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v18);
  v17 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  [v12 setPortIndex:a5 ofEndpoint:1];
  CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v17);
  v16 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v20, a6);
  [v12 setAudioStreamConfigurationName:v20];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v20);
  CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&v16);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v15, *(a1 + 8));
  cf = 0;
  v14 = v12;
  [v15 addWire:v12];
  CA::DSP::ReferenceCounted<__CADSPWireModel const*>::~ReferenceCounted(&v14);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v15);
  return CA::DSP::ReferenceCounted<__CADSPWireModel *>::~ReferenceCounted(&cf);
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addBox(uint64_t a1, const UInt8 *a2, __int128 *a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  CA::DSP::MutableBoxModel::Create(&v24, *MEMORY[0x1E695E480]);
  v12 = v24;
  v23 = v24;
  if (v24)
  {
    CFRetain(v24);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v19, a2);
  [v12 setName:v19];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v19);
  CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v23);
  v22 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  v19 = *a3;
  v20 = *(a3 + 4);
  v21 = 1;
  [v12 setAudioComponentDescription:&v19];
  CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v22);
  v18 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  [v12 setNumberOfInputs:a4];
  CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v18);
  v17 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  [v12 setNumberOfOutputs:a5];
  CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v17);
  if (*(a6 + 24) == 1)
  {
    v16 = v12;
    if (v12)
    {
      CFRetain(v12);
    }

    CA::DSP::CreateUTF8StringNoCopy(&v19, a6);
    [v12 setSubsetName:v19];
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v19);
    CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v16);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v15, *(a1 + 8));
  v24 = 0;
  v14 = v12;
  [v15 addBox:v12];
  CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v14);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v15);
  return CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v24);
}

const void **CA::DSP::MutableBoxModel::Create(CA::DSP::MutableBoxModel *this, const __CFAllocator *a2)
{
  v3 = 0;
  *this = [[CADSPMutableBoxModel allocWithZone:?]];
  return CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v3);
}

const void **CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }

  return a1;
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::addBox(uint64_t a1, const UInt8 *a2, const UInt8 *a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  CA::DSP::MutableBoxModel::Create(&cf, *MEMORY[0x1E695E480]);
  v12 = cf;
  v25 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v24, a2);
  [v12 setName:v24];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v24);
  CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v25);
  v23 = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  CA::DSP::CreateUTF8StringNoCopy(&v24, a3);
  [v12 setClassName:v24];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v24);
  CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v23);
  v13 = cf;
  v22 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  [v13 setNumberOfInputs:a4];
  CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v22);
  v14 = cf;
  v21 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  [v14 setNumberOfOutputs:a5];
  CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v21);
  if (*(a6 + 24) == 1)
  {
    v15 = cf;
    v20 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    CA::DSP::CreateUTF8StringNoCopy(&v24, a6);
    [v15 setSubsetName:v24];
    CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v24);
    CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&v20);
  }

  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v19, *(a1 + 8));
  v16 = cf;
  cf = 0;
  v18 = v16;
  [v19 addBox:?];
  CA::DSP::ReferenceCounted<__CADSPBoxModel const*>::~ReferenceCounted(&v18);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v19);
  return CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(&cf);
}

void sub_1C91F470C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  v12 = va_arg(va2, void);
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(va1);
  CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(va);
  CA::DSP::ReferenceCounted<__CADSPBoxModel *>::~ReferenceCounted(va2);
  _Unwind_Resume(a1);
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::setVariableSliceDuration(CFTypeRef *this, unsigned int a2, uint64_t a3)
{
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v8, this[1]);
  [v8 setSliceDuration:a2 | (a3 << 32)];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v8);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v7, this[1]);
  [v7 setSliceDurationCanVary:1];
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v7);
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::setFixedSliceDuration(CFTypeRef *this, unsigned int a2, uint64_t a3)
{
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v8, this[1]);
  [v8 setSliceDuration:a2 | (a3 << 32)];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v8);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v7, this[1]);
  [v7 setSliceDurationCanVary:0];
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v7);
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::setPerformADryRun(CFTypeRef *this, int a2)
{
  CA::DSP::Reference<CA::DSP::GraphModel>::Reference<CA::DSP::MutableGraphModel>(&cf, this[1]);
  v4 = cf;
  v8 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v5 = [v4 options];
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&v8);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v7, this[1]);
  [v7 setOptions:v5 & 0xFFFFFFFE | a2];
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v7);
  return CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(&cf);
}

void sub_1C91F48D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  v5 = va_arg(va1, void);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(va);
  CA::DSP::ReferenceCounted<__CADSPGraphModel const*>::~ReferenceCounted(va1);
  _Unwind_Resume(a1);
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::setFormat(uint64_t a1, const UInt8 *a2, __int128 *a3, int a4)
{
  v6 = a3[1];
  v15 = *a3;
  v16 = v6;
  v17 = *(a3 + 4);
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v14, *(a1 + 8));
  CA::DSP::CreateUTF8StringNoCopy(&v13, a2);
  v8[0] = v15;
  v8[1] = v16;
  v9 = v17;
  v10 = a4;
  v11 = 0;
  v12 = 1;
  [v14 setAudioStreamConfiguration:v8 forName:v13];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v13);
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v14);
}

const void **CA::DSP::LanguageV1InterpreterCommandHandler::setName(uint64_t a1, const UInt8 *a2)
{
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::ReferenceCounted(&v5, *(a1 + 8));
  CA::DSP::CreateUTF8StringNoCopy(&v4, a2);
  [v5 setName:v4];
  CA::DSP::ReferenceCounted<__CFString const*>::~ReferenceCounted(&v4);
  return CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(&v5);
}

void CA::DSP::LanguageV1InterpreterCommandHandler::~LanguageV1InterpreterCommandHandler(const void **this)
{
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(this + 1);

  JUMPOUT(0x1CCA84AE0);
}

{
  CA::DSP::ReferenceCounted<__CADSPGraphModel *>::~ReferenceCounted(this + 1);
}

uint64_t CADSPLanguageV1InterpreterCreate(uint64_t a1)
{
  v1 = [CADSPLanguageV1Interpreter allocWithZone:a1];

  return [(CADSPLanguageV1Interpreter *)v1 init];
}

uint64_t CADSPLanguageV1InterpreterInterpretUTF8String(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = 0;
  v6 = [a1 interpretUTF8String:a2 length:a3 updating:a4 error:&v11];
  v7 = v11;
  v8 = v7;
  if (v6)
  {
    v9 = 1;
  }

  else
  {
    v9 = 0;
    if (a5)
    {
      *a5 = v7;
    }
  }

  return v9;
}

uint64_t CADSPLanguageV1InterpreterInterpretString(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v5 = [a1 interpretString:a2 updating:a3 error:&v10];
  v6 = v10;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      *a4 = v6;
    }
  }

  return v8;
}

uint64_t CADSPLanguageV1InterpreterInterpretContentsOfFile(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v10 = 0;
  v5 = [a1 interpretContentsOfFile:a2 updating:a3 error:&v10];
  v6 = v10;
  v7 = v6;
  if (v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      *a4 = v6;
    }
  }

  return v8;
}

uint64_t CADSPParameterModelCreate(uint64_t a1)
{
  v1 = [CADSPParameterModel allocWithZone:a1];

  return [(CADSPParameterModel *)v1 init];
}

uint64_t CADSPParameterModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableParameterModel allocWithZone:a1];

  return [(CADSPMutableParameterModel *)v1 init];
}

uint64_t CADSPParameterConnectionModelCreate(uint64_t a1)
{
  v1 = [CADSPParameterConnectionModel allocWithZone:a1];

  return [(CADSPParameterConnectionModel *)v1 init];
}

uint64_t CADSPParameterConnectionModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableParameterConnectionModel allocWithZone:a1];

  return [(CADSPMutableParameterConnectionModel *)v1 init];
}

uint64_t CADSPParameterWireModelCreate(uint64_t a1)
{
  v1 = [CADSPParameterWireModel allocWithZone:a1];

  return [(CADSPParameterWireModel *)v1 init];
}

uint64_t CADSPParameterWireModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableParameterWireModel allocWithZone:a1];

  return [(CADSPMutableParameterWireModel *)v1 init];
}

uint64_t CADSPPortModelCreate(uint64_t a1)
{
  v1 = [CADSPPortModel allocWithZone:a1];

  return [(CADSPPortModel *)v1 init];
}

uint64_t CADSPPortModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutablePortModel allocWithZone:a1];

  return [(CADSPMutablePortModel *)v1 init];
}

void sub_1C91F5D80(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 24) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADSPPropertyModelCreate(uint64_t a1)
{
  v1 = [CADSPPropertyModel allocWithZone:a1];

  return [(CADSPPropertyModel *)v1 init];
}

uint64_t CADSPPropertyModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutablePropertyModel allocWithZone:a1];

  return [(CADSPMutablePropertyModel *)v1 init];
}

uint64_t CADSPPropertyModelGetDefaultValueBytePointer(uint64_t a1)
{
  if (*(a1 + 40) == 1)
  {
    return *(a1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t CADSPPropertyConnectionModelCreate(uint64_t a1)
{
  v1 = [CADSPPropertyConnectionModel allocWithZone:a1];

  return [(CADSPPropertyConnectionModel *)v1 init];
}

uint64_t CADSPPropertyConnectionModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutablePropertyConnectionModel allocWithZone:a1];

  return [(CADSPMutablePropertyConnectionModel *)v1 init];
}

uint64_t CADSPPropertyWireModelCreate(uint64_t a1)
{
  v1 = [CADSPPropertyWireModel allocWithZone:a1];

  return [(CADSPPropertyWireModel *)v1 init];
}

uint64_t CADSPPropertyWireModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutablePropertyWireModel allocWithZone:a1];

  return [(CADSPMutablePropertyWireModel *)v1 init];
}

void *CADSPSubsetGetModel(void *a1)
{
  v1 = [a1 model];

  return v1;
}

uint64_t CADSPSubsetLoadStripWithResourcePath(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = 0;
  v6 = [a1 loadStrip:a2 type:a3 withResourcePath:a4 error:&v10];
  v7 = v10;
  v8 = CA::DSP::ErrorHandle(v6, v7, a5);

  return v8;
}

uint64_t CADSPSubsetSaveStrip(void *a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v4 = [a1 saveStrip:a2 error:&v7];
  v5 = v7;
  CA::DSP::ErrorHandle(v4 != 0, v5, a3);

  return v4;
}

uint64_t CADSPSubsetModelCreate(uint64_t a1)
{
  v1 = [CADSPSubsetModel allocWithZone:a1];

  return [(CADSPSubsetModel *)v1 init];
}

uint64_t CADSPSubsetModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableSubsetModel allocWithZone:a1];

  return [(CADSPMutableSubsetModel *)v1 init];
}

std::string *std::__fs::filesystem::path::assign[abi:ne200100]<char const*>(uint64_t a1, std::string **a2)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  v2 = *a2;
  v3 = (v2 - 1);
  do
  {
    v4 = v3->__r_.__value_.__s.__data_[1];
    v3 = (v3 + 1);
  }

  while (v4);
  return std::string::append[abi:ne200100]<char const*,0>(a1, v2, v3);
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v6 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v10 = this->__r_.__value_.__r.__words[2];
    v7 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v9 = this->__r_.__value_.__r.__words[0];
    v8 = HIBYTE(v10);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v7 = 22;
    LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    v9 = this;
  }

  if (v9 > __src || (&v9->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v7 - size < v6)
    {
      std::string::__grow_by(this, v7, size - v7 + v6, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v8) = *(&this->__r_.__value_.__s + 23);
    }

    v11 = this;
    if ((v8 & 0x80) != 0)
    {
      v11 = this->__r_.__value_.__r.__words[0];
    }

    v12 = v11 + size;
    memmove(v11 + size, __src, v6);
    v12[v6] = 0;
    v13 = v6 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v13;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v13 & 0x7F;
    }
  }

  else
  {
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v6 > 0x16)
    {
      operator new();
    }

    v18 = v6;
    memcpy(__dst, __src, v6);
    *(__dst + v6) = 0;
    if ((v18 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v18 & 0x80u) == 0)
    {
      v15 = v18;
    }

    else
    {
      v15 = __dst[1];
    }

    std::string::append(this, v14, v15);
    if (v18 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  return this;
}

void sub_1C91F75B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADSPInjectorTapPointModelCreate(uint64_t a1)
{
  v1 = [CADSPInjectorTapPointModel allocWithZone:a1];

  return [(CADSPInjectorTapPointModel *)v1 init];
}

uint64_t CADSPInjectorTapPointModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableInjectorTapPointModel allocWithZone:a1];

  return [(CADSPMutableInjectorTapPointModel *)v1 init];
}

uint64_t CADSPRecorderTapPointModelCreate(uint64_t a1)
{
  v1 = [CADSPRecorderTapPointModel allocWithZone:a1];

  return [(CADSPRecorderTapPointModel *)v1 init];
}

uint64_t CADSPRecorderTapPointModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableRecorderTapPointModel allocWithZone:a1];

  return [(CADSPMutableRecorderTapPointModel *)v1 init];
}

void sub_1C91F7E9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, const void *a26)
{
  std::__split_buffer<applesauce::CF::TypeRefPair>::~__split_buffer(v26 - 104);
  applesauce::CF::DictionaryRef::~DictionaryRef(&a26);
  a12 = (v26 - 128);
  std::vector<applesauce::CF::TypeRefPair>::__destroy_vector::operator()[abi:ne200100](&a12);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1C91F7E48);
}

void sub_1C91F85D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  v23 = a14[4];
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  v24 = a14[2];
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

uint64_t CADSPThreadCounterProfilerCreate(uint64_t a1, uint64_t a2, double a3)
{
  v5 = [CADSPThreadCounterProfiler allocWithZone:a1];

  return [(CADSPThreadCounterProfiler *)v5 initWithGraph:a2 secondsPerWindow:a3];
}

void sub_1C91F8B90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__variant_detail::__assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>>(uint64_t result, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (*(result + 48) != -1 || v4 != -1)
  {
    if (v4 == -1)
    {

      return std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](result);
    }

    else
    {
      v6[1] = v2;
      v6[2] = v3;
      v6[0] = result;
      return (off_1F48CBC50[v4])(v6);
    }
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2ELm2EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN13AudioDSPGraph2IR17WireConfigurationENSA_22WireConfigurationAliasEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS8_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t *a1, uint64_t a2, __n128 *a3)
{
  v4 = *a1;
  if (*(*a1 + 48) == 2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    result = *a3;
    *(a2 + 16) = a3[1].n128_u64[0];
    *a2 = result;
    a3[1].n128_u8[7] = 0;
    a3->n128_u8[0] = 0;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    v4[1].n128_u64[0] = a3[1].n128_u64[0];
    *v4 = result;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    a3[1].n128_u64[0] = 0;
    v4[3].n128_u32[0] = 2;
  }

  return result;
}

__n128 _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1ELm1EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN13AudioDSPGraph2IR17WireConfigurationENSA_22WireConfigurationAliasEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS8_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (*(*a1 + 48) == 1)
  {
    result = *a3;
    v6 = *(a3 + 16);
    *(a2 + 28) = *(a3 + 28);
    *a2 = result;
    *(a2 + 16) = v6;
  }

  else
  {
    std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*a1);
    result = *a3;
    v7 = *(a3 + 32);
    *(v4 + 16) = *(a3 + 16);
    *(v4 + 32) = v7;
    *v4 = result;
    *(v4 + 48) = 1;
  }

  return result;
}

uint64_t *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0ELm0EEE10__dispatchB8ne200100IOZNS0_12__assignmentINS0_8__traitsIJNS_9monostateEN13AudioDSPGraph2IR17WireConfigurationENSA_22WireConfigurationAliasEEEEE16__generic_assignB8ne200100INS0_17__move_assignmentISD_LNS0_6_TraitE1EEEEEvOT_EUlRSJ_OT0_E_JRNS0_6__baseILSH_1EJS8_SB_SC_EEEOSR_EEEDcSJ_DpT0_(uint64_t *result)
{
  v1 = *result;
  if (*(*result + 48))
  {
    result = std::__variant_detail::__dtor<std::__variant_detail::__traits<std::monostate,AudioDSPGraph::IR::WireConfiguration,AudioDSPGraph::IR::WireConfigurationAlias>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](*result);
    *(v1 + 48) = 0;
  }

  return result;
}

void sub_1C91F8E84(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CADSPWireModelCreate(uint64_t a1)
{
  v1 = [CADSPWireModel allocWithZone:a1];

  return [(CADSPWireModel *)v1 init];
}

uint64_t CADSPWireModelCreateMutable(uint64_t a1)
{
  v1 = [CADSPMutableWireModel allocWithZone:a1];

  return [(CADSPMutableWireModel *)v1 init];
}

uint64_t ausdk::AUBase::ProcessForScheduledParams(ausdk::AUBase *a1, unint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = 126 - 2 * __clz((v10 - v9) >> 5);
  v31 = ausdk::ParameterEventListSortPredicate;
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  v13.n128_f64[0] = std::__introsort<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,false>(v9, v10, &v31, v12, 1, a5);
  if (a3)
  {
    v14 = 0;
    v15 = a3;
    while (1)
    {
      v16 = *a2;
      v17 = a2[1];
      v18 = a3;
      v19 = *a2;
      if (*a2 != v17)
      {
        break;
      }

      v24 = (a3 - v14);
      v18 = a3;
LABEL_34:
      result = (*(*a1 + 568))(a1, a4, v14, v24, a3, v13);
      if (result)
      {
        return result;
      }

      v14 = v18;
      v30 = v15 > v24;
      if (v15 >= v24)
      {
        v15 -= v24;
      }

      else
      {
        v15 = 0;
      }

      if (!v30)
      {
        return 0;
      }
    }

    while (1)
    {
      v20 = v19[4];
      if (v20 > v14 && v20 < v18)
      {
        break;
      }

      if (v19[3] == 2)
      {
        v22 = v19[5] + v20;
        if (v22 >= v18)
        {
          v23 = v18;
        }

        else
        {
          v23 = v22;
        }

        if (v22 <= v14)
        {
          v18 = v18;
        }

        else
        {
          v18 = v23;
        }
      }

      v19 += 8;
      if (v19 == v17)
      {
        goto LABEL_22;
      }
    }

    v18 = v19[4];
LABEL_22:
    v24 = (v18 - v14);
    while (1)
    {
      v25 = v16[4];
      if (v16[3] == 2)
      {
        if (v25 < v18 && (v16[5] + v25) > v14)
        {
LABEL_31:
          ElementOrError = ausdk::AUBase::GetElementOrError(a1, *v16, v16[1]);
          if (v28)
          {
            (*(*ElementOrError + 32))(ElementOrError, v16[2], v16, v14, (v18 - v14), 0);
          }
        }
      }

      else if (v25 <= v14)
      {
        goto LABEL_31;
      }

      v16 += 8;
      if (v16 == v17)
      {
        goto LABEL_34;
      }
    }
  }

  return 0;
}

double std::__introsort<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,false>(unint64_t a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *), uint64_t a4, char a5, __n128 a6)
{
  while (2)
  {
    v10 = a2 - 2;
    v218 = a2 - 6;
    v219 = a2 - 4;
    n128_u64 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = n128_u64;
          v12 = (a2 - n128_u64) >> 5;
          v13 = v12 - 2;
          if (v12 <= 2)
          {
            if (v12 < 2)
            {
              return a6.n128_f64[0];
            }

            if (v12 == 2)
            {
              if (!(*a3)(a2 - 2, n128_u64))
              {
                return a6.n128_f64[0];
              }

LABEL_107:
              v127 = *(n128_u64 + 16);
              v224 = *n128_u64;
              v225 = v127;
              v128 = a2[-1];
              *n128_u64 = *v10;
              *(n128_u64 + 16) = v128;
              a6 = v224;
              v129 = v225;
              goto LABEL_108;
            }

            goto LABEL_9;
          }

          switch(v12)
          {
            case 3uLL:
              v125 = (*a3)((n128_u64 + 32), n128_u64);
              v126 = (*a3)(a2 - 2, (n128_u64 + 32));
              if (v125)
              {
                if (v126)
                {
                  goto LABEL_107;
                }

                v198 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v198;
                v199 = *(n128_u64 + 48);
                *n128_u64 = *(n128_u64 + 32);
                *(n128_u64 + 16) = v199;
                v200 = v225;
                *(n128_u64 + 32) = v224;
                *(n128_u64 + 48) = v200;
                if (!(*a3)(a2 - 2, (n128_u64 + 32)))
                {
                  return a6.n128_f64[0];
                }

                a6 = *(n128_u64 + 32);
                v129 = *(n128_u64 + 48);
                v224 = a6;
                v225 = v129;
                v201 = a2[-1];
                *(n128_u64 + 32) = *v10;
                *(n128_u64 + 48) = v201;
LABEL_108:
                *v10 = a6;
                a2[-1] = v129;
                return a6.n128_f64[0];
              }

              if (!v126)
              {
                return a6.n128_f64[0];
              }

              v183 = *(n128_u64 + 48);
              v224 = *(n128_u64 + 32);
              v182 = v224;
              v225 = v183;
              v184 = a2[-1];
              *(n128_u64 + 32) = *v10;
              *(n128_u64 + 48) = v184;
              *v10 = v182;
              a2[-1] = v183;
              goto LABEL_181;
            case 4uLL:
              v130 = (*a3)((n128_u64 + 32), n128_u64);
              v131 = (*a3)((n128_u64 + 64), (n128_u64 + 32));
              if (v130)
              {
                if (v131)
                {
                  v132 = *(n128_u64 + 16);
                  v224 = *n128_u64;
                  v225 = v132;
                  v133 = *(n128_u64 + 80);
                  *n128_u64 = *(n128_u64 + 64);
                  *(n128_u64 + 16) = v133;
                  v134 = v225;
                  *(n128_u64 + 64) = v224;
                  *(n128_u64 + 80) = v134;
                }

                else
                {
                  v202 = *(n128_u64 + 16);
                  v224 = *n128_u64;
                  v225 = v202;
                  v203 = *(n128_u64 + 48);
                  *n128_u64 = *(n128_u64 + 32);
                  *(n128_u64 + 16) = v203;
                  v204 = v225;
                  *(n128_u64 + 32) = v224;
                  *(n128_u64 + 48) = v204;
                  if ((*a3)((n128_u64 + 64), (n128_u64 + 32)))
                  {
                    v206 = *(n128_u64 + 32);
                    v205 = *(n128_u64 + 48);
                    v207 = *(n128_u64 + 80);
                    *(n128_u64 + 32) = *(n128_u64 + 64);
                    *(n128_u64 + 48) = v207;
                    *(n128_u64 + 64) = v206;
                    *(n128_u64 + 80) = v205;
                  }
                }
              }

              else if (v131)
              {
                v186 = *(n128_u64 + 32);
                v185 = *(n128_u64 + 48);
                v187 = *(n128_u64 + 80);
                *(n128_u64 + 32) = *(n128_u64 + 64);
                *(n128_u64 + 48) = v187;
                *(n128_u64 + 64) = v186;
                *(n128_u64 + 80) = v185;
                if ((*a3)((n128_u64 + 32), n128_u64))
                {
                  v188 = *(n128_u64 + 16);
                  v224 = *n128_u64;
                  v225 = v188;
                  v189 = *(n128_u64 + 48);
                  *n128_u64 = *(n128_u64 + 32);
                  *(n128_u64 + 16) = v189;
                  v190 = v225;
                  *(n128_u64 + 32) = v224;
                  *(n128_u64 + 48) = v190;
                }
              }

              if (!(*a3)(a2 - 2, (n128_u64 + 64)))
              {
                return a6.n128_f64[0];
              }

              v209 = *(n128_u64 + 80);
              v224 = *(n128_u64 + 64);
              v208 = v224;
              v225 = v209;
              v210 = a2[-1];
              *(n128_u64 + 64) = *v10;
              *(n128_u64 + 80) = v210;
              *v10 = v208;
              a2[-1] = v209;
              if (!(*a3)((n128_u64 + 64), (n128_u64 + 32)))
              {
                return a6.n128_f64[0];
              }

              v212 = *(n128_u64 + 32);
              v211 = *(n128_u64 + 48);
              v213 = *(n128_u64 + 80);
              *(n128_u64 + 32) = *(n128_u64 + 64);
              *(n128_u64 + 48) = v213;
              *(n128_u64 + 64) = v212;
              *(n128_u64 + 80) = v211;
LABEL_181:
              if ((*a3)((n128_u64 + 32), n128_u64))
              {
                v214 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v214;
                v215 = *(n128_u64 + 48);
                *n128_u64 = *(n128_u64 + 32);
                *(n128_u64 + 16) = v215;
                a6.n128_u64[0] = v224.n128_u64[0];
                v216 = v225;
                *(n128_u64 + 32) = v224;
                *(n128_u64 + 48) = v216;
              }

              return a6.n128_f64[0];
            case 5uLL:

              a6.n128_u64[0] = std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,0>(n128_u64, (n128_u64 + 32), (n128_u64 + 64), (n128_u64 + 96), a2 - 2, a3).n128_u64[0];
              return a6.n128_f64[0];
          }

LABEL_9:
          if (v12 <= 23)
          {
            v135 = (n128_u64 + 32);
            v137 = n128_u64 == a2 || v135 == a2;
            if (a5)
            {
              if (!v137)
              {
                v138 = 0;
                v139 = n128_u64;
                do
                {
                  v140 = v139;
                  v139 = v135;
                  if ((*a3)(v135, v140))
                  {
                    v141 = v139[1];
                    v224 = *v139;
                    v225 = v141;
                    v142 = v138;
                    while (1)
                    {
                      v143 = n128_u64 + v142;
                      v144 = *(n128_u64 + v142 + 16);
                      *(v143 + 32) = *(n128_u64 + v142);
                      *(v143 + 48) = v144;
                      if (!v142)
                      {
                        break;
                      }

                      v142 -= 32;
                      if (((*a3)(&v224, (v142 + n128_u64)) & 1) == 0)
                      {
                        v145 = (n128_u64 + v142 + 32);
                        goto LABEL_127;
                      }
                    }

                    v145 = n128_u64;
LABEL_127:
                    a6.n128_u64[0] = v224.n128_u64[0];
                    v146 = v225;
                    *v145 = v224;
                    v145[1] = v146;
                  }

                  v135 = v139 + 2;
                  v138 += 32;
                }

                while (&v139[2] != a2);
              }
            }

            else if (!v137)
            {
              do
              {
                v191 = a1;
                a1 = v135;
                if ((*a3)(v135, v191))
                {
                  v192 = *(a1 + 16);
                  v224 = *a1;
                  v225 = v192;
                  v193 = a1;
                  do
                  {
                    v194 = v193 - 2;
                    v195 = v193[-1];
                    *v193 = v193[-2];
                    v193[1] = v195;
                    v196 = (*a3)(&v224, v193 - 4);
                    v193 = v194;
                  }

                  while ((v196 & 1) != 0);
                  a6.n128_u64[0] = v224.n128_u64[0];
                  v197 = v225;
                  *v194 = v224;
                  v194[1] = v197;
                }

                v135 = (a1 + 32);
              }

              while ((a1 + 32) != a2);
            }

            return a6.n128_f64[0];
          }

          if (!a4)
          {
            if (n128_u64 != a2)
            {
              v221 = a2;
              v147 = v13 >> 1;
              v148 = v13 >> 1;
              do
              {
                v149 = v148;
                if (v147 >= v148)
                {
                  v150 = (2 * v148) | 1;
                  v151 = (a1 + 32 * v150);
                  if (2 * v148 + 2 < v12 && (*a3)((a1 + 32 * v150), v151 + 2))
                  {
                    v151 += 2;
                    v150 = 2 * v149 + 2;
                  }

                  v152 = (a1 + 32 * v149);
                  if (((*a3)(v151, v152) & 1) == 0)
                  {
                    v153 = v152[1];
                    v224 = *v152;
                    v225 = v153;
                    do
                    {
                      v154 = v151;
                      v155 = v151[1];
                      *v152 = *v151;
                      v152[1] = v155;
                      if (v147 < v150)
                      {
                        break;
                      }

                      v156 = (2 * v150) | 1;
                      v151 = (a1 + 32 * v156);
                      v157 = 2 * v150 + 2;
                      if (v157 < v12 && (*a3)((a1 + 32 * v156), v151 + 2))
                      {
                        v151 += 2;
                        v156 = v157;
                      }

                      v152 = v154;
                      v150 = v156;
                    }

                    while (!(*a3)(v151, &v224));
                    v158 = v225;
                    *v154 = v224;
                    v154[1] = v158;
                  }
                }

                v148 = v149 - 1;
              }

              while (v149);
              v159 = v221;
              do
              {
                v160 = v159;
                v161 = 0;
                v162 = *(a1 + 16);
                v222 = *a1;
                v223 = v162;
                v163 = a1;
                do
                {
                  v164 = &v163[2 * v161];
                  v165 = v164 + 2;
                  v166 = (2 * v161) | 1;
                  v167 = 2 * v161 + 2;
                  if (v167 < v12)
                  {
                    v168 = v164 + 4;
                    if ((*a3)(v164 + 2, v164 + 4))
                    {
                      v165 = v168;
                      v166 = v167;
                    }
                  }

                  v169 = v165[1];
                  *v163 = *v165;
                  v163[1] = v169;
                  v163 = v165;
                  v161 = v166;
                }

                while (v166 <= ((v12 - 2) >> 1));
                v159 = v160 - 2;
                if (v165 == &v160[-2])
                {
                  a6.n128_u64[0] = v222.n128_u64[0];
                  v181 = v223;
                  *v165 = v222;
                  v165[1] = v181;
                }

                else
                {
                  v170 = v160[-1];
                  *v165 = *v159;
                  v165[1] = v170;
                  a6.n128_u64[0] = v222.n128_u64[0];
                  v171 = v223;
                  *v159 = v222;
                  v160[-1] = v171;
                  v172 = (&v165[2] - a1) >> 5;
                  v173 = v172 < 2;
                  v174 = v172 - 2;
                  if (!v173)
                  {
                    v175 = v174 >> 1;
                    v176 = (a1 + 32 * (v174 >> 1));
                    if ((*a3)(v176, v165))
                    {
                      v177 = v165[1];
                      v224 = *v165;
                      v225 = v177;
                      do
                      {
                        v178 = v176;
                        v179 = v176[1];
                        *v165 = *v176;
                        v165[1] = v179;
                        if (!v175)
                        {
                          break;
                        }

                        v175 = (v175 - 1) >> 1;
                        v176 = (a1 + 32 * v175);
                        v165 = v178;
                      }

                      while (((*a3)(v176, &v224) & 1) != 0);
                      a6.n128_u64[0] = v224.n128_u64[0];
                      v180 = v225;
                      *v178 = v224;
                      v178[1] = v180;
                    }
                  }
                }

                v173 = v12-- <= 2;
              }

              while (!v173);
            }

            return a6.n128_f64[0];
          }

          v14 = (n128_u64 + 32 * (v12 >> 1));
          v15 = *a3;
          if (v12 >= 0x81)
          {
            v16 = v15((n128_u64 + 32 * (v12 >> 1)), n128_u64);
            v17 = (*a3)(a2 - 2, (n128_u64 + 32 * (v12 >> 1)));
            if (v16)
            {
              if (v17)
              {
                v18 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v18;
                v19 = a2[-1];
                *n128_u64 = *v10;
                *(n128_u64 + 16) = v19;
                goto LABEL_26;
              }

              v36 = *(n128_u64 + 16);
              v224 = *n128_u64;
              v225 = v36;
              v37 = v14[1];
              *n128_u64 = *v14;
              *(n128_u64 + 16) = v37;
              v38 = v225;
              *v14 = v224;
              v14[1] = v38;
              if ((*a3)(a2 - 2, (n128_u64 + 32 * (v12 >> 1))))
              {
                v39 = v14[1];
                v224 = *v14;
                v225 = v39;
                v40 = a2[-1];
                *v14 = *v10;
                v14[1] = v40;
LABEL_26:
                v41 = v225;
                *v10 = v224;
                a2[-1] = v41;
              }
            }

            else if (v17)
            {
              v24 = v14[1];
              v224 = *v14;
              v225 = v24;
              v25 = a2[-1];
              *v14 = *v10;
              v14[1] = v25;
              v26 = v225;
              *v10 = v224;
              a2[-1] = v26;
              if ((*a3)((n128_u64 + 32 * (v12 >> 1)), n128_u64))
              {
                v27 = *(n128_u64 + 16);
                v224 = *n128_u64;
                v225 = v27;
                v28 = v14[1];
                *n128_u64 = *v14;
                *(n128_u64 + 16) = v28;
                v29 = v225;
                *v14 = v224;
                v14[1] = v29;
              }
            }

            v42 = v14 - 2;
            v43 = (*a3)(v14 - 2, (a1 + 32));
            v44 = (*a3)(v219, v14 - 2);
            if (v43)
            {
              if (v44)
              {
                v45 = *(a1 + 32);
                v46 = *(a1 + 48);
                v224 = v45;
                v225 = v46;
                v47 = a2 - 4;
                v48 = a2[-3];
                *(a1 + 32) = *v219;
                *(a1 + 48) = v48;
                goto LABEL_38;
              }

              v62 = *(a1 + 48);
              v224 = *(a1 + 32);
              v61 = v224;
              v225 = v62;
              v63 = v14[-1];
              *(a1 + 32) = *v42;
              *(a1 + 48) = v63;
              *v42 = v61;
              v14[-1] = v62;
              if ((*a3)(v219, v14 - 2))
              {
                v64 = v14[-1];
                v224 = *v42;
                v225 = v64;
                v47 = a2 - 4;
                v65 = a2[-3];
                *v42 = *v219;
                v14[-1] = v65;
                v45 = v224;
                v46 = v225;
LABEL_38:
                *v47 = v45;
                v47[1] = v46;
              }
            }

            else if (v44)
            {
              v49 = v14[-1];
              v224 = *v42;
              v225 = v49;
              v50 = a2[-3];
              *v42 = *v219;
              v14[-1] = v50;
              v51 = v225;
              *v219 = v224;
              a2[-3] = v51;
              if ((*a3)(v14 - 2, (a1 + 32)))
              {
                v53 = *(a1 + 48);
                v224 = *(a1 + 32);
                v52 = v224;
                v225 = v53;
                v54 = v14[-1];
                *(a1 + 32) = *v42;
                *(a1 + 48) = v54;
                *v42 = v52;
                v14[-1] = v53;
              }
            }

            v66 = (*a3)(v14 + 2, (a1 + 64));
            v67 = (*a3)(v218, v14 + 2);
            if (v66)
            {
              if (v67)
              {
                v68 = *(a1 + 64);
                v69 = *(a1 + 80);
                v224 = v68;
                v225 = v69;
                v70 = a2 - 6;
                v71 = a2[-5];
                *(a1 + 64) = *v218;
                *(a1 + 80) = v71;
                goto LABEL_47;
              }

              v79 = *(a1 + 80);
              v224 = *(a1 + 64);
              v78 = v224;
              v225 = v79;
              v80 = v14[3];
              *(a1 + 64) = v14[2];
              *(a1 + 80) = v80;
              v14[2] = v78;
              v14[3] = v79;
              if ((*a3)(v218, v14 + 2))
              {
                v81 = v14[3];
                v224 = v14[2];
                v225 = v81;
                v70 = a2 - 6;
                v82 = a2[-5];
                v14[2] = *v218;
                v14[3] = v82;
                v68 = v224;
                v69 = v225;
LABEL_47:
                *v70 = v68;
                v70[1] = v69;
              }
            }

            else if (v67)
            {
              v72 = v14[3];
              v224 = v14[2];
              v225 = v72;
              v73 = a2[-5];
              v14[2] = *v218;
              v14[3] = v73;
              v74 = v225;
              *v218 = v224;
              a2[-5] = v74;
              if ((*a3)(v14 + 2, (a1 + 64)))
              {
                v76 = *(a1 + 80);
                v224 = *(a1 + 64);
                v75 = v224;
                v225 = v76;
                v77 = v14[3];
                *(a1 + 64) = v14[2];
                *(a1 + 80) = v77;
                v14[2] = v75;
                v14[3] = v76;
              }
            }

            v83 = (*a3)((a1 + 32 * (v12 >> 1)), v14 - 2);
            v84 = (*a3)(v14 + 2, (a1 + 32 * (v12 >> 1)));
            if (v83)
            {
              if (v84)
              {
                v85 = v14[-1];
                v224 = *v42;
                v225 = v85;
                v86 = v14[3];
                *v42 = v14[2];
                v14[-1] = v86;
                goto LABEL_56;
              }

              v93 = v14[-1];
              v224 = *v42;
              v225 = v93;
              v94 = v14[1];
              *v42 = *v14;
              v14[-1] = v94;
              v95 = v225;
              *v14 = v224;
              v14[1] = v95;
              if ((*a3)(v14 + 2, (a1 + 32 * (v12 >> 1))))
              {
                v96 = v14[1];
                v224 = *v14;
                v225 = v96;
                v97 = v14[3];
                *v14 = v14[2];
                v14[1] = v97;
LABEL_56:
                v98 = v225;
                v14[2] = v224;
                v14[3] = v98;
              }
            }

            else if (v84)
            {
              v87 = v14[1];
              v224 = *v14;
              v225 = v87;
              v88 = v14[3];
              *v14 = v14[2];
              v14[1] = v88;
              v89 = v225;
              v14[2] = v224;
              v14[3] = v89;
              if ((*a3)((a1 + 32 * (v12 >> 1)), v14 - 2))
              {
                v90 = v14[-1];
                v224 = *v42;
                v225 = v90;
                v91 = v14[1];
                *v42 = *v14;
                v14[-1] = v91;
                v92 = v225;
                *v14 = v224;
                v14[1] = v92;
              }
            }

            v99 = *(a1 + 16);
            v224 = *a1;
            v225 = v99;
            v100 = v14[1];
            *a1 = *v14;
            *(a1 + 16) = v100;
            v101 = v225;
            *v14 = v224;
            v14[1] = v101;
            goto LABEL_58;
          }

          v20 = v15(n128_u64, (n128_u64 + 32 * (v12 >> 1)));
          v21 = (*a3)(a2 - 2, n128_u64);
          if (v20)
          {
            if (v21)
            {
              v22 = v14[1];
              v224 = *v14;
              v225 = v22;
              v23 = a2[-1];
              *v14 = *v10;
              v14[1] = v23;
LABEL_35:
              v60 = v225;
              *v10 = v224;
              a2[-1] = v60;
              goto LABEL_58;
            }

            v55 = v14[1];
            v224 = *v14;
            v225 = v55;
            v56 = *(n128_u64 + 16);
            *v14 = *n128_u64;
            v14[1] = v56;
            v57 = v225;
            *n128_u64 = v224;
            *(n128_u64 + 16) = v57;
            if ((*a3)(a2 - 2, n128_u64))
            {
              v58 = *(n128_u64 + 16);
              v224 = *n128_u64;
              v225 = v58;
              v59 = a2[-1];
              *n128_u64 = *v10;
              *(n128_u64 + 16) = v59;
              goto LABEL_35;
            }
          }

          else if (v21)
          {
            v30 = *(n128_u64 + 16);
            v224 = *n128_u64;
            v225 = v30;
            v31 = a2[-1];
            *n128_u64 = *v10;
            *(n128_u64 + 16) = v31;
            v32 = v225;
            *v10 = v224;
            a2[-1] = v32;
            if ((*a3)(n128_u64, (n128_u64 + 32 * (v12 >> 1))))
            {
              v33 = v14[1];
              v224 = *v14;
              v225 = v33;
              v34 = *(n128_u64 + 16);
              *v14 = *n128_u64;
              v14[1] = v34;
              v35 = v225;
              *n128_u64 = v224;
              *(n128_u64 + 16) = v35;
            }
          }

LABEL_58:
          --a4;
          if (a5 & 1) != 0 || ((*a3)((a1 - 32), a1))
          {
            break;
          }

          v114 = *(a1 + 16);
          v222 = *a1;
          v223 = v114;
          if ((*a3)(&v222, a2 - 2))
          {
            n128_u64 = a1;
            do
            {
              n128_u64 += 32;
            }

            while (((*a3)(&v222, n128_u64) & 1) == 0);
          }

          else
          {
            v115 = (a1 + 32);
            do
            {
              n128_u64 = v115;
              if (v115 >= a2)
              {
                break;
              }

              v116 = (*a3)(&v222, v115);
              v115 = (n128_u64 + 32);
            }

            while (!v116);
          }

          v117 = a2;
          if (n128_u64 < a2)
          {
            v117 = a2;
            do
            {
              v117 -= 2;
            }

            while (((*a3)(&v222, v117) & 1) != 0);
          }

          while (n128_u64 < v117)
          {
            v118 = *(n128_u64 + 16);
            v224 = *n128_u64;
            v225 = v118;
            v119 = v117[1];
            *n128_u64 = *v117;
            *(n128_u64 + 16) = v119;
            v120 = v225;
            *v117 = v224;
            v117[1] = v120;
            do
            {
              n128_u64 += 32;
            }

            while (!(*a3)(&v222, n128_u64));
            do
            {
              v117 -= 2;
            }

            while (((*a3)(&v222, v117) & 1) != 0);
          }

          v121 = (n128_u64 - 32);
          if (n128_u64 - 32 != a1)
          {
            v122 = *(n128_u64 - 16);
            *a1 = *v121;
            *(a1 + 16) = v122;
          }

          a5 = 0;
          a6.n128_u64[0] = v222.n128_u64[0];
          v123 = v223;
          *v121 = v222;
          *(n128_u64 - 16) = v123;
        }

        v102 = *(a1 + 16);
        v222 = *a1;
        v223 = v102;
        v103 = a1;
        do
        {
          v104 = v103;
          v103 += 2;
        }

        while (((*a3)(v103, &v222) & 1) != 0);
        v105 = a2;
        if (v104 == a1)
        {
          v105 = a2;
          do
          {
            if (v103 >= v105)
            {
              break;
            }

            v105 -= 2;
          }

          while (((*a3)(v105, &v222) & 1) == 0);
        }

        else
        {
          do
          {
            v105 -= 2;
          }

          while (!(*a3)(v105, &v222));
        }

        if (v103 < v105)
        {
          v106 = v103;
          v107 = v105;
          do
          {
            v109 = v106[1];
            v224 = *v106;
            v108 = v224;
            v225 = v109;
            v110 = v107[1];
            *v106 = *v107;
            v106[1] = v110;
            *v107 = v108;
            v107[1] = v109;
            do
            {
              v104 = v106;
              v106 += 2;
            }

            while (((*a3)(v106, &v222) & 1) != 0);
            do
            {
              v107 -= 2;
            }

            while (!(*a3)(v107, &v222));
          }

          while (v106 < v107);
        }

        if (v104 != a1)
        {
          v111 = v104[1];
          *a1 = *v104;
          *(a1 + 16) = v111;
        }

        v112 = v223;
        *v104 = v222;
        v104[1] = v112;
        if (v103 >= v105)
        {
          break;
        }

LABEL_79:
        std::__introsort<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,false>(a1, v104, a3, a4, a5 & 1);
        a5 = 0;
        n128_u64 = v104[2].n128_u64;
      }

      v113 = std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*>(a1, v104, a3);
      n128_u64 = v104[2].n128_u64;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*>(v104 + 2, a2, a3))
      {
        break;
      }

      if (!v113)
      {
        goto LABEL_79;
      }
    }

    a2 = v104;
    if (!v113)
    {
      continue;
    }

    return a6.n128_f64[0];
  }
}

unint64_t ausdk::AUBase::GetElementOrError(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  if (a2 <= 3)
  {
    v5 = this + 48 * a2 + 32;
LABEL_7:
    v4 = ausdk::AUScope::GetElementOrError<ausdk::AUInputElement>(v5, a3);
    v5 = v4 & 0xFFFFFFFF00000000;
    return v5 | v4;
  }

  v4 = (*(*this + 408))(this);
  v5 = v4;
  if (!v4)
  {
    LODWORD(v4) = -10866;
  }

  if (v5)
  {
    goto LABEL_7;
  }

  return v5 | v4;
}

__n128 std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, uint64_t (**a6)(__n128 *, __n128 *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    if (v13)
    {
      v15 = *a1;
      v14 = a1[1];
      v16 = a3[1];
      *a1 = *a3;
      a1[1] = v16;
LABEL_9:
      *a3 = v15;
      a3[1] = v14;
      goto LABEL_10;
    }

    v24 = *a1;
    v23 = a1[1];
    v25 = a2[1];
    *a1 = *a2;
    a1[1] = v25;
    *a2 = v24;
    a2[1] = v23;
    if ((*a6)(a3, a2))
    {
      v15 = *a2;
      v14 = a2[1];
      v26 = a3[1];
      *a2 = *a3;
      a2[1] = v26;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v18 = *a2;
    v17 = a2[1];
    v19 = a3[1];
    *a2 = *a3;
    a2[1] = v19;
    *a3 = v18;
    a3[1] = v17;
    if ((*a6)(a2, a1))
    {
      v21 = *a1;
      v20 = a1[1];
      v22 = a2[1];
      *a1 = *a2;
      a1[1] = v22;
      *a2 = v21;
      a2[1] = v20;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v28 = *a3;
    v27 = a3[1];
    v29 = a4[1];
    *a3 = *a4;
    a3[1] = v29;
    *a4 = v28;
    a4[1] = v27;
    if ((*a6)(a3, a2))
    {
      v31 = *a2;
      v30 = a2[1];
      v32 = a3[1];
      *a2 = *a3;
      a2[1] = v32;
      *a3 = v31;
      a3[1] = v30;
      if ((*a6)(a2, a1))
      {
        v34 = *a1;
        v33 = a1[1];
        v35 = a2[1];
        *a1 = *a2;
        a1[1] = v35;
        *a2 = v34;
        a2[1] = v33;
      }
    }
  }

  if ((*a6)(a5, a4))
  {
    v38 = *a4;
    v37 = a4[1];
    v39 = a5[1];
    *a4 = *a5;
    a4[1] = v39;
    *a5 = v38;
    a5[1] = v37;
    if ((*a6)(a4, a3))
    {
      v41 = *a3;
      v40 = a3[1];
      v42 = a4[1];
      *a3 = *a4;
      a3[1] = v42;
      *a4 = v41;
      a4[1] = v40;
      if ((*a6)(a3, a2))
      {
        v44 = *a2;
        v43 = a2[1];
        v45 = a3[1];
        *a2 = *a3;
        a2[1] = v45;
        *a3 = v44;
        a3[1] = v43;
        if ((*a6)(a2, a1))
        {
          v46 = *a1;
          result = a1[1];
          v47 = a2[1];
          *a1 = *a2;
          a1[1] = v47;
          *a2 = v46;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*>(__n128 *a1, __n128 *a2, uint64_t (**a3)(__n128 *, __n128 *))
{
  v6 = (a2 - a1) >> 5;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = a2 - 2;
      v8 = (*a3)(a1 + 2, a1);
      v9 = (*a3)(v7, a1 + 2);
      if (v8)
      {
        if (!v9)
        {
          v41 = *a1;
          v40 = a1[1];
          v42 = a1[3];
          *a1 = a1[2];
          a1[1] = v42;
          a1[2] = v41;
          a1[3] = v40;
          if (!(*a3)(v7, a1 + 2))
          {
            return 1;
          }

          v11 = a1[2];
          v10 = a1[3];
          v43 = v7[1];
          a1[2] = *v7;
          a1[3] = v43;
          goto LABEL_13;
        }

LABEL_12:
        v11 = *a1;
        v10 = a1[1];
        v12 = v7[1];
        *a1 = *v7;
        a1[1] = v12;
LABEL_13:
        *v7 = v11;
        v7[1] = v10;
        return 1;
      }

      if (!v9)
      {
        return 1;
      }

      v26 = a1[2];
      v25 = a1[3];
      v27 = v7[1];
      a1[2] = *v7;
      a1[3] = v27;
      *v7 = v26;
      v7[1] = v25;
LABEL_50:
      if ((*a3)(a1 + 2, a1))
      {
        v68 = *a1;
        v67 = a1[1];
        v69 = a1[3];
        *a1 = a1[2];
        a1[1] = v69;
        a1[2] = v68;
        a1[3] = v67;
      }

      return 1;
    }

    if (v6 != 4)
    {
      if (v6 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:ne200100]<std::_RangeAlgPolicy,ausdk::RTSafeFP<BOOL ()(AudioUnitParameterEvent const&,AudioUnitParameterEvent const&)> &,AudioUnitParameterEvent*,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2, a3);
      return 1;
    }

    v19 = a2 - 2;
    v20 = (*a3)(a1 + 2, a1);
    v21 = (*a3)(a1 + 4, a1 + 2);
    if ((v20 & 1) == 0)
    {
      if (v21)
      {
        v35 = a1[2];
        v34 = a1[3];
        v36 = a1[5];
        a1[2] = a1[4];
        a1[3] = v36;
        a1[4] = v35;
        a1[5] = v34;
        if ((*a3)(a1 + 2, a1))
        {
          v38 = *a1;
          v37 = a1[1];
          v39 = a1[3];
          *a1 = a1[2];
          a1[1] = v39;
          a1[2] = v38;
          a1[3] = v37;
        }
      }

      goto LABEL_47;
    }

    if (v21)
    {
      v23 = *a1;
      v22 = a1[1];
      v24 = a1[5];
      *a1 = a1[4];
      a1[1] = v24;
    }

    else
    {
      v58 = *a1;
      v57 = a1[1];
      v59 = a1[3];
      *a1 = a1[2];
      a1[1] = v59;
      a1[2] = v58;
      a1[3] = v57;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_47;
      }

      v23 = a1[2];
      v22 = a1[3];
      v60 = a1[5];
      a1[2] = a1[4];
      a1[3] = v60;
    }

    a1[4] = v23;
    a1[5] = v22;
LABEL_47:
    if (!(*a3)(v19, a1 + 4))
    {
      return 1;
    }

    v62 = a1[4];
    v61 = a1[5];
    v63 = v19[1];
    a1[4] = *v19;
    a1[5] = v63;
    *v19 = v62;
    v19[1] = v61;
    if (!(*a3)(a1 + 4, a1 + 2))
    {
      return 1;
    }

    v65 = a1[2];
    v64 = a1[3];
    v66 = a1[5];
    a1[2] = a1[4];
    a1[3] = v66;
    a1[4] = v65;
    a1[5] = v64;
    goto LABEL_50;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 2;
    if (!(*a3)(a2 - 2, a1))
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v13 = a1 + 4;
  v14 = (*a3)(a1 + 2, a1);
  v15 = (*a3)(a1 + 4, a1 + 2);
  if (v14)
  {
    if (v15)
    {
      v17 = *a1;
      v16 = a1[1];
      v18 = a1[5];
      *a1 = *v13;
      a1[1] = v18;
    }

    else
    {
      v45 = *a1;
      v44 = a1[1];
      v46 = a1[3];
      *a1 = a1[2];
      a1[1] = v46;
      a1[2] = v45;
      a1[3] = v44;
      if (!(*a3)(a1 + 4, a1 + 2))
      {
        goto LABEL_33;
      }

      v17 = a1[2];
      v16 = a1[3];
      v47 = a1[5];
      a1[2] = *v13;
      a1[3] = v47;
    }

    *v13 = v17;
    a1[5] = v16;
  }

  else if (v15)
  {
    v29 = a1[2];
    v28 = a1[3];
    v30 = a1[5];
    a1[2] = *v13;
    a1[3] = v30;
    *v13 = v29;
    a1[5] = v28;
    if ((*a3)(a1 + 2, a1))
    {
      v32 = *a1;
      v31 = a1[1];
      v33 = a1[3];
      *a1 = a1[2];
      a1[1] = v33;
      a1[2] = v32;
      a1[3] = v31;
    }
  }

LABEL_33:
  v48 = a1 + 6;
  if (&a1[6] == a2)
  {
    return 1;
  }

  v49 = 0;
  v50 = 0;
  while (1)
  {
    if ((*a3)(v48, v13))
    {
      v51 = v48[1];
      v71 = *v48;
      v72 = v51;
      v52 = v49;
      while (1)
      {
        v53 = a1 + v52;
        v54 = *(&a1[5] + v52);
        *(v53 + 96) = *(a1 + v52 + 64);
        *(v53 + 112) = v54;
        if (v52 == -64)
        {
          break;
        }

        v52 -= 32;
        if (((*a3)(&v71, (v53 + 32)) & 1) == 0)
        {
          v55 = (a1 + v52 + 96);
          goto LABEL_41;
        }
      }

      v55 = a1;
LABEL_41:
      v56 = v72;
      *v55 = v71;
      v55[1] = v56;
      if (++v50 == 8)
      {
        return &v48[2] == a2;
      }
    }

    v13 = v48;
    v49 += 32;
    v48 += 2;
    if (v48 == a2)
    {
      return 1;
    }
  }
}

uint64_t ausdk::AUBase::GetChannelLayoutTags(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  v5 = *(*ausdk::AUScope::GetIOElement(Scope, a3) + 80);

  return v5();
}

uint64_t ausdk::AUScope::GetIOElement(ausdk::AUScope *this, unsigned int a2)
{
  Element = ausdk::AUScope::GetElement(this, a2);
  if (!Element || (result = (*(*Element + 48))(Element)) == 0)
  {
    ausdk::Throw(0xFFFFD583);
  }

  return result;
}

uint64_t ausdk::AUBase::RemoveAudioChannelLayout(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  IOElement = ausdk::AUScope::GetIOElement(Scope, a3);
  v7 = 0;
  result = (*(*IOElement + 96))(IOElement, 0, &v7);
  if (result)
  {
    return (*(*IOElement + 104))(IOElement);
  }

  return result;
}

uint64_t ausdk::AUBase::SetAudioChannelLayout(ausdk::AUBase *this, uint64_t a2, uint64_t a3, const AudioChannelLayout *a4)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  IOElement = ausdk::AUScope::GetIOElement(Scope, a3);
  if (a4->mChannelLayoutTag == 0x10000)
  {
    v11 = vcnt_s8(a4->mChannelBitmap);
    v11.i16[0] = vaddlv_u8(v11);
    mChannelLayoutTag = v11.i32[0];
  }

  else if (a4->mChannelLayoutTag)
  {
    mChannelLayoutTag = a4->mChannelLayoutTag;
  }

  else
  {
    mChannelLayoutTag = a4->mNumberChannelDescriptions;
  }

  if (IOElement[27] != mChannelLayoutTag)
  {
    return 4294956445;
  }

  (*(*this + 552))(&v17, this, a2, a3);
  v12 = v17;
  if (v17 == v18)
  {
    v15 = 4294956417;
  }

  else
  {
    v13 = v17;
    while (*v13 && *v13 != a4->mChannelLayoutTag)
    {
      if (++v13 == v18)
      {
        goto LABEL_19;
      }
    }

    if (v13 != v18)
    {
      v15 = (*(*IOElement + 88))(IOElement, a4);
      v12 = v17;
      goto LABEL_20;
    }

LABEL_19:
    v15 = 4294956445;
  }

LABEL_20:
  if (v12)
  {
    v18 = v12;
    operator delete(v12);
  }

  return v15;
}

void sub_1C91FA774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUBase::GetAudioChannelLayout(ausdk::AUBase *this, unsigned int a2, unsigned int a3, AudioChannelLayout *a4, BOOL *a5)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  v7 = *(*ausdk::AUScope::GetIOElement(Scope, a3) + 96);

  return v7();
}

uint64_t ausdk::AUBase::CanSetMaxFrames(ausdk::AUBase *this)
{
  if (*(this + 17))
  {
    return 4294956447;
  }

  else
  {
    return 0;
  }
}

uint64_t ausdk::AUBase::SetMaxFramesPerSlice(uint64_t this, int a2)
{
  if (*(this + 336) != a2)
  {
    v3 = this;
    *(this + 336) = a2;
    if (*(this + 432))
    {
      (*(*this + 496))(this);
    }

    v4 = *(*v3 + 432);

    return v4(v3, 14, 0, 0);
  }

  return this;
}

uint64_t ausdk::AUBase::DeallocateIOBuffers(uint64_t this)
{
  if (*(this + 432) == 1)
  {
    v1 = this;
    v2 = *(this + 168);
    if (v2)
    {
      LODWORD(v3) = (*(*v2 + 24))(v2);
    }

    else
    {
      v3 = (*(v1 + 152) - *(v1 + 144)) >> 3;
    }

    if (v3)
    {
      v4 = 0;
      while (1)
      {
        Element = ausdk::AUScope::GetElement((v1 + 128), v4);
        if (!Element)
        {
          break;
        }

        v6 = Element;
        if (*(Element + 152))
        {
          (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
          *(v6 + 152) = 0;
        }

        *(v6 + 160) = 0;
        *(v6 + 144) = 0;
        if (v3 == ++v4)
        {
          goto LABEL_11;
        }
      }

LABEL_22:
      ausdk::Throw(0xFFFFD583);
    }

LABEL_11:
    this = *(v1 + 120);
    if (this)
    {
      this = (*(*this + 24))(this);
      LODWORD(v7) = this;
      if (!this)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = (*(v1 + 104) - *(v1 + 96)) >> 3;
      if (!v7)
      {
LABEL_20:
        *(v1 + 432) = 0;
        return this;
      }
    }

    v8 = 0;
    while (1)
    {
      this = ausdk::AUScope::GetElement((v1 + 80), v8);
      if (!this)
      {
        goto LABEL_22;
      }

      v9 = this;
      if (*(this + 152))
      {
        this = (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
        *(v9 + 152) = 0;
      }

      *(v9 + 160) = 0;
      *(v9 + 144) = 0;
      if (v7 == ++v8)
      {
        goto LABEL_20;
      }
    }
  }

  return this;
}

uint64_t ausdk::AUBase::ReallocateBuffers(ausdk::AUBase *this)
{
  ausdk::AUBase::CreateElements(this);
  v2 = *(this + 21);
  if (!v2)
  {
    v3 = (*(this + 19) - *(this + 18)) >> 3;
    if (!v3)
    {
      goto LABEL_8;
    }

LABEL_5:
    v4 = 0;
    while (1)
    {
      Element = ausdk::AUScope::GetElement((this + 128), v4);
      if (!Element)
      {
        break;
      }

      (*(*Element + 64))(Element, 0);
      if (v3 == ++v4)
      {
        goto LABEL_8;
      }
    }

LABEL_16:
    ausdk::Throw(0xFFFFD583);
  }

  LODWORD(v3) = (*(*v2 + 24))(v2);
  if (v3)
  {
    goto LABEL_5;
  }

LABEL_8:
  result = *(this + 15);
  if (result)
  {
    result = (*(*result + 24))(result);
    LODWORD(v7) = result;
    if (!result)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v7 = (*(this + 13) - *(this + 12)) >> 3;
  if (v7)
  {
LABEL_12:
    v8 = 0;
    do
    {
      v9 = ausdk::AUScope::GetElement((this + 80), v8);
      if (!v9)
      {
        goto LABEL_16;
      }

      result = (*(*v9 + 64))(v9, 0);
    }

    while (v7 != ++v8);
  }

LABEL_15:
  *(this + 432) = 1;
  return result;
}

uint64_t ausdk::AUBase::CreateElements(uint64_t this)
{
  if ((*(this + 16) & 1) == 0)
  {
    v1 = this;
    ausdk::AUScope::Initialize((this + 80), this, 1, *(this + 20));
    ausdk::AUScope::Initialize((v1 + 128), v1, 2, *(v1 + 24));
    ausdk::AUScope::Initialize((v1 + 176), v1, 3, *(v1 + 28));
    this = (*(*v1 + 48))(v1);
    *(v1 + 16) = 1;
  }

  return this;
}

uint64_t ausdk::AUScope::Initialize(ausdk::AUScope *this, ausdk::AUBase *a2, int a3, uint64_t a4)
{
  *this = a2;
  *(this + 2) = a3;
  v5 = *(this + 5);
  if (!v5)
  {
    return ausdk::AUScope::SetNumberOfElements(this, a4);
  }

  *(v5 + 8) = a2;
  *(v5 + 16) = a3;
  return (*(*v5 + 16))(v5, a4);
}

uint64_t ausdk::AUBase::PropertyChanged(uint64_t this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(this + 408);
  v5 = *(this + 416);
  if (v4 != v5)
  {
    v9 = this;
    do
    {
      if (*v4 == a2)
      {
        this = (*(v4 + 8))(*(v4 + 16), *(v9 + 8), a2, a3, a4);
      }

      v4 += 24;
    }

    while (v4 != v5);
  }

  return this;
}

void ausdk::AUBase::CreateElement(ausdk::AUBase *this, int a2)
{
  if (a2 > 2)
  {
    if ((a2 - 3) >= 2)
    {
      goto LABEL_9;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      operator new();
    }

    if (a2 == 2)
    {
      operator new();
    }

LABEL_9:
    ausdk::Throw(0xFFFFD58ELL);
  }

  operator new();
}

void sub_1C91FAE88(_Unwind_Exception *a1)
{
  ausdk::AUIOElement::~AUIOElement(v1);
  MEMORY[0x1CCA84AE0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t ausdk::AUBase::ChangeStreamFormat(ausdk::AUBase *this, uint64_t a2, uint64_t a3, const AudioStreamBasicDescription *__s2, const AudioStreamBasicDescription *__s1)
{
  if (memcmp(__s1, __s2, 0x28uLL))
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = 80;
      }

      else
      {
        if (a2 != 2)
        {
          ausdk::Throw(0xFFFFD58ELL);
        }

        v9 = 128;
      }

      v10 = a3;
    }

    else
    {
      v10 = 0;
      v9 = 128;
    }

    IOElement = ausdk::AUScope::GetIOElement((this + v9), v10);
    (*(*IOElement + 56))(IOElement, __s1);
    (*(*this + 432))(this, 8, a2, a3);
  }

  return 0;
}

__n128 ausdk::AUBase::GetStreamFormat@<Q0>(ausdk::AUBase *this@<X0>, int a2@<W1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  if (!a2)
  {
    a3 = 0;
LABEL_7:
    v5 = 128;
    goto LABEL_8;
  }

  if (a2 != 1)
  {
    if (a2 != 2)
    {
      ausdk::Throw(0xFFFFD58ELL);
    }

    goto LABEL_7;
  }

  v5 = 80;
LABEL_8:
  IOElement = ausdk::AUScope::GetIOElement((this + v5), a3);
  result = *(IOElement + 80);
  v8 = *(IOElement + 96);
  *a4 = result;
  *(a4 + 16) = v8;
  *(a4 + 32) = *(IOElement + 112);
  return result;
}

uint64_t ausdk::AUBase::ValidFormat(ausdk::AUBase *this, unsigned int a2, unsigned int a3, const AudioStreamBasicDescription *a4)
{
  if (a4->mFormatID != 1819304813 || a4->mFramesPerPacket != 1)
  {
    return 0;
  }

  mBytesPerPacket = a4->mBytesPerPacket;
  if (mBytesPerPacket != a4->mBytesPerFrame)
  {
    return 0;
  }

  mFormatFlags = a4->mFormatFlags;
  if ((mFormatFlags & 1) == 0)
  {
    return 0;
  }

  mChannelsPerFrame = a4->mChannelsPerFrame;
  if ((mFormatFlags & 0x20) == 0 && mChannelsPerFrame != 1)
  {
    return 0;
  }

  result = 0;
  if ((mFormatFlags & 2) == 0 && a4->mBitsPerChannel == 32)
  {
    if ((mFormatFlags & 0x20) != 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = a4->mChannelsPerFrame;
    }

    v10 = (mFormatFlags >> 5) & 1;
    if (mChannelsPerFrame == 1)
    {
      v10 = 1;
    }

    if (mBytesPerPacket == 4 * v9)
    {
      return v10;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ausdk::AUBase::NewCustomPresetSet(CFTypeRef *this, const AUPreset *a2)
{
  v4 = (this + 45);
  CFRelease(this[46]);
  *v4 = *a2;
  CFRetain(this[46]);
  return 0;
}

uint64_t ausdk::AUBase::RestoreState(OpaqueAudioComponentInstance **this, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 != CFDictionaryGetTypeID())
  {
    return 4294956445;
  }

  v42 = 0;
  v43 = 0;
  v44 = 0;
  ausdk::ComponentBase::GetComponentDescription(&v42, this[1]);
  if (CFDictionaryContainsKey(cf, @"part"))
  {
    return 4294956445;
  }

  Value = CFDictionaryGetValue(cf, @"version");
  if (!Value)
  {
    return 4294956445;
  }

  v7 = Value;
  v8 = CFGetTypeID(Value);
  if (v8 != CFNumberGetTypeID())
  {
    return 4294956445;
  }

  valuePtr = 0;
  CFNumberGetValue(v7, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr)
  {
    return 4294956445;
  }

  v9 = CFDictionaryGetValue(cf, @"subtype");
  if (!v9)
  {
    return 4294956445;
  }

  v10 = v9;
  v11 = CFGetTypeID(v9);
  if (v11 != CFNumberGetTypeID())
  {
    return 4294956445;
  }

  CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr != HIDWORD(v42))
  {
    return 4294956445;
  }

  v12 = CFDictionaryGetValue(cf, @"manufacturer");
  if (!v12)
  {
    return 4294956445;
  }

  v13 = v12;
  v14 = CFGetTypeID(v12);
  if (v14 != CFNumberGetTypeID())
  {
    return 4294956445;
  }

  CFNumberGetValue(v13, kCFNumberSInt32Type, &valuePtr);
  if (valuePtr != v43)
  {
    return 4294956445;
  }

  v15 = CFDictionaryGetValue(cf, @"data");
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFDataGetTypeID())
    {
      BytePtr = CFDataGetBytePtr(v16);
      Length = CFDataGetLength(v16);
      if (Length >= 1)
      {
        v20 = &BytePtr[Length];
        do
        {
          Scope = ausdk::AUBase::GetScope(this, bswap32(*BytePtr));
          BytePtr = ausdk::AUScope::RestoreState(Scope, BytePtr + 4);
        }

        while (BytePtr < v20);
      }
    }
  }

  v22 = CFDictionaryGetValue(cf, @"name");
  v23 = this[46];
  if (v23)
  {
    CFRelease(v23);
  }

  if (!v22 || (v24 = CFGetTypeID(v22), v24 != CFStringGetTypeID()))
  {
    v22 = @"Untitled";
  }

  this[46] = v22;
  *(this + 90) = -1;
  CFRetain(v22);
  (*(*this + 54))(this, 36, 0, 0);
  v25 = CFDictionaryGetValue(cf, @"render-quality");
  if (v25)
  {
    v26 = v25;
    v27 = CFGetTypeID(v25);
    if (v27 == CFNumberGetTypeID())
    {
      CFNumberGetValue(v26, kCFNumberSInt32Type, &valuePtr);
      ausdk::AUBase::DispatchSetProperty(this, 26, 0, 0, &valuePtr, 4);
    }
  }

  result = CFDictionaryGetValue(cf, @"element-name");
  if (result)
  {
    v28 = result;
    v29 = CFGetTypeID(result);
    if (v29 == CFDictionaryGetTypeID())
    {
      v30 = 0;
      do
      {
        v31 = CFStringCreateWithFormat(0, 0, @"%u", v30);
        v32 = CFDictionaryGetValue(v28, v31);
        if (v32)
        {
          v33 = v32;
          v34 = CFGetTypeID(v32);
          if (v34 == CFDictionaryGetTypeID())
          {
            v35 = ausdk::AUBase::GetScope(this, v30);
            ausdk::AUScope::RestoreElementNames(&v39, v35, v33);
            v36 = v39;
            v37 = v40;
            for (i = v39; i != v37; ++i)
            {
              (*(*this + 54))(this, 30, v30, *i);
            }

            if (v36)
            {
              operator delete(v36);
            }
          }
        }

        CFRelease(v31);
        result = 0;
        v30 = (v30 + 1);
      }

      while (v30 != 4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_1C91FB504(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUBase::DispatchSetProperty(const void **this, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *__s2, uint64_t a6)
{
  v6 = a6;
  if (a2 <= 22)
  {
    if (a2 > 7)
    {
      if (a2 > 13)
      {
        if (a2 == 14)
        {
          if (a6 == 4)
          {
            v12 = (*(*this + 65))(this);
            if (!v12)
            {
              (*(*this + 64))(this, __s2->n128_u32[0]);
            }

            return v12;
          }

          return 4294956445;
        }

        if (a2 == 19)
        {
          if (a6 >= 0xC)
          {
            v17 = a6;
            if (20 * __s2->n128_u32[2] + 12 <= a6)
            {
              if ((a6 & 0x1F) != 0)
              {
                v18 = (a6 >> 5) + 1;
              }

              else
              {
                v18 = a6 >> 5;
              }

              std::vector<AudioChannelLayout>::vector[abi:ne200100](&__s1, v18);
              memcpy(__s1.n128_u64[0], __s2, v17);
              v12 = (*(*this + 67))(this, a3, a4, __s1.n128_u64[0]);
              if (!v12)
              {
                (*(*this + 54))(this, 19, a3, a4);
              }

              if (__s1.n128_u64[0])
              {
                __s1.n128_u64[1] = __s1.n128_u64[0];
                operator delete(__s1.n128_u64[0]);
              }

              return v12;
            }
          }

          return 4294956445;
        }

        goto LABEL_95;
      }

      if (a2 != 8)
      {
        if (a2 == 11)
        {
          if (a6 == 4)
          {
            if ((*(*this + 27))(this, a3))
            {
              v12 = (*(*this + 28))(this, a3, __s2->n128_u32[0]);
              if (!v12)
              {
                (*(*this + 54))(this, 11, a3, a4);
              }

              return v12;
            }

            return 4294956431;
          }

          return 4294956445;
        }

LABEL_95:
        v12 = (*(*this + 12))(this, a2, a3, a4, __s2, a6);
        if (!v12)
        {
          (*(*this + 54))(this, a2, a3, a4);
        }

        return v12;
      }

      if (a6 < 0x24)
      {
        return 4294956445;
      }

      Scope = ausdk::AUBase::GetScope(this, a3);
      if (ausdk::AUScope::GetElement(Scope, a4))
      {
        v21 = *__s2;
        v20 = __s2[1];
        __s1 = *__s2;
        v37 = v20;
        v38 = __s2[2].n128_u32[0];
        v21.n128_u64[0] = __s1.n128_u64[0];
        if (__s1.n128_f64[0] >= 0.0 && __s1.n128_f64[0] < 3000000.0 && v37.n128_u32[0] < 0xF4240 && v37.n128_u32[1] < 0xF4240 && v37.n128_u32[2] < 0xF4240 && v37.n128_u32[3] - 1 <= 0x3FF && v38 <= 0x400 && __s1.n128_u32[2] && (__s1.n128_u32[2] != 1819304813 || v37.n128_u64[0] == (v37.n128_u32[2] | 0x100000000)) && (*(*this + 48))(this, a3, a4, &__s1, v21))
        {
          v35 = 0;
          v33 = 0u;
          v34 = 0u;
          (*(*this + 49))(&v33, this, a3, a4);
          if (memcmp(&v33, &__s1, 0x28uLL))
          {
            if (ausdk::AUBase::IsStreamFormatWritable(this, a3, a4))
            {
              return (*(*this + 50))(this, a3, a4, &v33, &__s1);
            }

            return 4294956431;
          }

          return 0;
        }

        return 4294956428;
      }

      return 4294956419;
    }

    if (a2)
    {
      if (a2 == 1)
      {
        if (a6 < 0x10)
        {
          return 4294956445;
        }

        __s1 = *__s2;
        return (*(*this + 29))(this, &__s1);
      }

      if (a2 != 2)
      {
        goto LABEL_95;
      }

      if (a6 != 8)
      {
        return 4294956445;
      }

      v15 = ausdk::AUBase::GetScope(this, a3);
      if (!ausdk::AUScope::GetElement(v15, a4))
      {
        return 4294956419;
      }

      v38 = 0;
      __s1 = 0u;
      v37 = 0u;
      (*(*this + 49))(&__s1, this, a3, a4);
      v35 = v38;
      v33 = __s1;
      v34 = v37;
      v33.n128_u64[0] = __s2->n128_u64[0];
      if (!(*(*this + 48))(this, a3, a4, &v33))
      {
        return 4294956428;
      }

      if (!memcmp(&__s1, &v33, 0x28uLL))
      {
        return 0;
      }

      if (!ausdk::AUBase::IsStreamFormatWritable(this, a3, a4))
      {
        return 4294956431;
      }

      return (*(*this + 50))(this, a3, a4, &__s1, &v33);
    }

    if (a6 != 8)
    {
      return 4294956445;
    }

    if (!a3)
    {
      v26 = __s2->n128_u64[0];
      v27 = *(*this + 36);

      return v27();
    }

    return 4294956430;
  }

  if (a2 > 29)
  {
    if (a2 > 50)
    {
      if (a2 == 51)
      {
        if ((a3 - 1) <= 1)
        {
          v25 = ausdk::AUBase::GetScope(this, a3);
          if (ausdk::AUScope::GetElement(v25, a4))
          {
            if (v6 == 4)
            {
              if (*(this + 17))
              {
                return 4294956447;
              }

              v32 = ausdk::AUBase::GetScope(this, a3);
              v12 = 0;
              *(ausdk::AUScope::GetIOElement(v32, a4) + 168) = __s2->n128_u32[0] != 0;
              return v12;
            }

            return 4294956445;
          }

          return 4294956419;
        }
      }

      else
      {
        if (a2 != 54)
        {
          goto LABEL_95;
        }

        if (!a3)
        {
          if (a6 != 8)
          {
            return 4294956445;
          }

          ausdk::Owned<__CFString const*>::operator=(this + 58, __s2->n128_u64[0]);
          (*(*this + 54))(this, 54, 0, a4);
          return 0;
        }
      }
    }

    else
    {
      if (a2 == 30)
      {
        v22 = ausdk::AUBase::GetScope(this, a3);
        if (ausdk::AUScope::GetElement(v22, a4))
        {
          if (v6 != 8)
          {
            return 4294956445;
          }

          v23 = ausdk::AUBase::GetScope(this, a3);
          Element = ausdk::AUScope::GetElement(v23, a4);
          ausdk::Owned<__CFString const*>::operator=((Element + 72), __s2->n128_u64[0]);
          (*(*this + 54))(this, 30, a3, a4);
          return 0;
        }

        return 4294956419;
      }

      if (a2 != 36)
      {
        goto LABEL_95;
      }

      if (a6 != 16)
      {
        return 4294956445;
      }

      if (!a3)
      {
        v13 = __s2->n128_u64[1];
        __s1.n128_u64[0] = __s2->n128_u64[0];
        __s1.n128_u64[1] = v13;
        if ((__s1.n128_u32[0] & 0x80000000) != 0)
        {
          if (!v13)
          {
            return 4294956445;
          }

          v14 = (*(*this + 41))(this, &__s1);
          if (v14)
          {
            return v14;
          }
        }

        else
        {
          v14 = (*(*this + 40))(this, &__s1);
          if (v14)
          {
            return v14;
          }
        }

        (*(*this + 54))(this, 36, 0, a4);
        return 0;
      }
    }

    return 4294956430;
  }

  if (a2 != 23)
  {
    if (a2 == 25)
    {
      if (a6 != 8)
      {
        return 4294956445;
      }

      if (!a3)
      {
        ausdk::Owned<__CFString const*>::operator=(this + 65, __s2->n128_u64[0]);
        (*(*this + 54))(this, 25, 0, a4);
        return 0;
      }
    }

    else
    {
      if (a2 != 27)
      {
        goto LABEL_95;
      }

      if (!a3)
      {
        if (a6 >= 0x28)
        {
          v16 = 40;
        }

        else
        {
          v16 = a6;
        }

        v12 = memcmp(this + 60, __s2, v16);
        *(this + 30) = 0u;
        *(this + 31) = 0u;
        this[64] = 0;
        memcpy(this + 60, __s2, v16);
        if (!v12)
        {
          return v12;
        }

        (*(*this + 54))(this, 27, 0, a4);
        return 0;
      }
    }

    return 4294956430;
  }

  if (a6 < 0x10)
  {
    return 4294956445;
  }

  v29 = __s2->n128_u64[0];
  v30 = __s2->n128_u64[1];
  v31 = *(*this + 30);

  return v31();
}

void sub_1C91FBF3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUBase::IsStreamFormatWritable(ausdk::AUBase *this, uint64_t a2, uint64_t a3)
{
  v3 = this;
  if (a2)
  {
    if (a2 != 2)
    {
      if (a2 != 1)
      {
        return 0;
      }

      Element = ausdk::AUScope::GetElement((this + 80), a3);
      if (!Element)
      {
        ausdk::Throw(0xFFFFD583);
      }

      if (*(Element + 172) == 1)
      {
        return 0;
      }
    }

    v8 = *(*v3 + 368);
    this = v3;
    v9 = a2;
    v10 = a3;
  }

  else
  {
    v8 = *(*this + 368);
    v9 = 2;
    v10 = 0;
  }

  return v8(this, v9, v10);
}

void *std::vector<AudioChannelLayout>::vector[abi:ne200100](void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    operator new();
  }

  return result;
}

void sub_1C91FC0C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

const void **ausdk::Owned<__CFString const*>::operator=(const void **a1, const void *a2)
{
  v3 = *a1;
  if (v3 != a2)
  {
    ausdk::Owned<__CFString const*>::releaseRef(v3);
    *a1 = a2;
    ausdk::Owned<__CFString const*>::retainRef(a2);
  }

  return a1;
}

void ausdk::Owned<__CFString const*>::releaseRef(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

CFTypeRef ausdk::Owned<__CFString const*>::retainRef(CFTypeRef result)
{
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

uint64_t ausdk::AUBase::SaveState(ausdk::AUBase *this, ausdk **a2)
{
  v58 = *MEMORY[0x1E69E9840];
  *&v43[1] = 0;
  v44 = 0;
  v45 = 0;
  ausdk::ComponentBase::GetComponentDescription(&v43[1], *(this + 1));
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  ausdk::AddNumToDictionary(Mutable, @"version", 0);
  ausdk::AddNumToDictionary(Mutable, @"type", v43[1]);
  ausdk::AddNumToDictionary(Mutable, @"subtype", v43[2]);
  v43[0] = v44;
  ausdk::AddNumToDictionary(Mutable, @"manufacturer", v44);
  v3 = CFDataCreateMutable(0, 0);
  v4 = 0;
  do
  {
    Scope = ausdk::AUBase::GetScope(this, v4);
    v6 = *(Scope + 40);
    v41 = v4;
    if (v6)
    {
      LODWORD(v7) = (*(*v6 + 24))(v6);
      if (!v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v7 = (*(Scope + 24) - *(Scope + 16)) >> 3;
      if (!v7)
      {
        goto LABEL_19;
      }
    }

    v8 = 0;
    do
    {
      v9 = ausdk::AUScope::GetElementOrError<ausdk::AUInputElement>(Scope, v8);
      if (v10)
      {
        v11 = v9;
        if ((*(*v9 + 16))(v9))
        {
          *bytes = bswap32(*(Scope + 8));
          CFDataAppendBytes(v3, bytes, 4);
          *bytes = bswap32(v8);
          CFDataAppendBytes(v3, bytes, 4);
          v50 = *(Scope + 8);
          theData = v3;
          v57 = 0;
          v55 = 0u;
          v56 = 0u;
          v54 = 0u;
          v52 = 0u;
          v53 = 0u;
          *bytes = 0u;
          Length = CFDataGetLength(v3);
          v48 = 0;
          v47[0] = v11;
          v47[1] = &v50;
          v47[2] = bytes;
          v47[3] = &theData;
          v47[4] = &v48;
          *v46 = 0;
          CFDataAppendBytes(v3, v46, 4);
          v13 = Mutable;
          if (*(v11 + 40) == 1)
          {
            v14 = *(v11 + 56) - *(v11 + 48);
            if ((v14 & 0x3FFFFFFFCLL) != 0)
            {
              v15 = 0;
              v16 = (v14 >> 2);
              do
              {
                v17 = COERCE_FLOAT(atomic_load((*(v11 + 48) + 4 * v15)));
                ausdk::AUElement::SaveState(unsigned int,__CFData *)::$_0::operator()(v47, v15++, v17);
              }

              while (v16 != v15);
            }
          }

          else
          {
            v18 = *(v11 + 16);
            v19 = *(v11 + 24);
            while (v18 != v19)
            {
              v20 = *v18;
              v21 = COERCE_FLOAT(atomic_load(v18 + 1));
              ausdk::AUElement::SaveState(unsigned int,__CFData *)::$_0::operator()(v47, v20, v21);
              v18 += 2;
            }
          }

          Mutable = v13;
          *&CFDataGetMutableBytePtr(theData)[Length] = bswap32(v48);
        }
      }

      ++v8;
    }

    while (v8 != v7);
LABEL_19:
    v4 = v41 + 1;
  }

  while (v41 != 2);
  (*(*this + 280))(this, v3);
  CFDictionarySetValue(Mutable, @"data", v3);
  if (v3)
  {
    ausdk::Owned<__CFData *>::releaseRef(v3);
  }

  CFDictionarySetValue(Mutable, @"name", *(this + 46));
  if (!(*(*this + 88))(this, 26, 0, 0, v43))
  {
    ausdk::AddNumToDictionary(Mutable, @"render-quality", v43[0]);
  }

  v22 = 0;
  while (1)
  {
    v23 = ausdk::AUBase::GetScope(this, v22);
    if (ausdk::AUScope::HasElementWithName(v23))
    {
      break;
    }

    if (++v22 == 4)
    {
      goto LABEL_42;
    }
  }

  v24 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v25 = 0;
  v26 = MEMORY[0x1E695E9E8];
  do
  {
    v27 = ausdk::AUBase::GetScope(this, v25);
    if (ausdk::AUScope::HasElementWithName(v27))
    {
      v28 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], v26);
      for (i = 0; ; i = (i + 1))
      {
        v30 = *(v27 + 40);
        if (v30)
        {
          LODWORD(v31) = (*(*v30 + 24))(v30);
        }

        else
        {
          v31 = (*(v27 + 24) - *(v27 + 16)) >> 3;
        }

        if (i >= v31)
        {
          break;
        }

        v32 = ausdk::AUScope::GetElementOrError<ausdk::AUInputElement>(v27, i);
        if (v33)
        {
          v34 = v32;
          if (*(v32 + 72))
          {
            v35 = CFStringCreateWithFormat(0, 0, @"%u", i);
            v36 = *(v34 + 72);
            ausdk::Owned<__CFString const*>::retainRef(v36);
            CFDictionarySetValue(v28, v35, v36);
            ausdk::Owned<__CFString const*>::releaseRef(v36);
            ausdk::Owned<__CFString const*>::releaseRef(v35);
          }
        }
      }

      v37 = CFStringCreateWithFormat(0, 0, @"%u", *(v27 + 8));
      CFDictionarySetValue(v24, v37, v28);
      ausdk::Owned<__CFString const*>::releaseRef(v37);
      ausdk::Owned<__CFDictionary *>::releaseRef(v28);
    }

    ++v25;
  }

  while (v25 != 4);
  CFDictionarySetValue(Mutable, @"element-name", v24);
  ausdk::Owned<__CFDictionary *>::releaseRef(v24);
LABEL_42:
  *a2 = Mutable;
  ausdk::Owned<__CFData *>::releaseRef(0);
  ausdk::Owned<__CFDictionary *>::releaseRef(0);
  v38 = *MEMORY[0x1E69E9840];
  return 0;
}

void sub_1C91FC6E4(_Unwind_Exception *a1)
{
  ausdk::Owned<__CFDictionary *>::releaseRef(v2);
  ausdk::Owned<__CFData *>::releaseRef(0);
  ausdk::Owned<__CFDictionary *>::releaseRef(v1);
  _Unwind_Resume(a1);
}

void ausdk::AddNumToDictionary(ausdk *this, __CFDictionary *a2, const __CFString *a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFDictionarySetValue(this, a2, v5);
  CFRelease(v5);
}

void ausdk::Owned<__CFDictionary *>::releaseRef(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void ausdk::Owned<__CFData *>::releaseRef(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t ausdk::AUBase::GetParameterList(ausdk::AUBase *this, unsigned int a2, unsigned int *a3, unsigned int *a4)
{
  Scope = ausdk::AUBase::GetScope(this, a2);
  v7 = *(Scope + 5);
  if (v7)
  {
    LODWORD(v8) = (*(*v7 + 24))(v7);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v8 = (*(Scope + 3) - *(Scope + 2)) >> 3;
  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_3:
  v9 = 0;
  v10 = 0;
  v11 = 0;
  do
  {
    Element = ausdk::AUScope::GetElement(Scope, v11);
    v13 = (*(*Element + 16))(Element);
    if (v13 > v10)
    {
      v10 = v13;
      v9 = Element;
    }

    ++v11;
  }

  while (v8 != v11);
  if (a3 && v9)
  {
    (*(*v9 + 24))(v9, a3);
  }

LABEL_12:
  *a4 = v10;
  return 0;
}

uint64_t ausdk::AUBase::SetInputCallback(ausdk::AUBase *this, uint64_t a2, uint64_t a3, int (*a4)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a5)
{
  Element = ausdk::AUScope::GetElement((this + 80), a3);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v11 = Element;
  if (a4)
  {
    *(Element + 172) = 2;
    *(Element + 176) = a4;
    *(Element + 184) = a5;
    (*(*Element + 64))(Element, 0);
  }

  else
  {
    *(Element + 172) = 0;
    if (*(Element + 152))
    {
      (*(ausdk::BufferAllocator::instance(void)::global + 3))();
      *(v11 + 152) = 0;
    }

    *(v11 + 160) = 0;
    *(v11 + 144) = 0;
  }

  (*(*this + 432))(this, a2, 1, a3);
  return 0;
}

uint64_t ausdk::AUBase::SetConnection(const void **this, const AudioUnitConnection *a2)
{
  Element = ausdk::AUScope::GetElement((this + 10), a2->destInputNumber);
  if (!Element)
  {
    ausdk::Throw(0xFFFFD583);
  }

  v5 = Element;
  sourceAudioUnit = a2->sourceAudioUnit;
  if (!a2->sourceAudioUnit)
  {
    goto LABEL_7;
  }

  ioDataSize = 40;
  result = AudioUnitGetProperty(sourceAudioUnit, 8u, 2u, a2->sourceOutputNumber, outData, &ioDataSize);
  if (!result)
  {
    result = ausdk::AUBase::DispatchSetProperty(this, 8, 1, a2->destInputNumber, outData, 40);
    if (!result)
    {
      if (a2->sourceAudioUnit)
      {
        *(v5 + 172) = 1;
        *(v5 + 192) = *a2;
        (*(*v5 + 64))(v5, 0);
LABEL_10:
        (*(*this + 54))(this, 1, 1, a2->destInputNumber);
        return 0;
      }

LABEL_7:
      *(v5 + 172) = 0;
      if (*(v5 + 152))
      {
        (*(ausdk::BufferAllocator::instance(void)::global + 3))();
        *(v5 + 152) = 0;
      }

      *(v5 + 160) = 0;
      *(v5 + 144) = 0;
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t ausdk::AUBase::SetBusCount(ausdk::AUBase *this, unsigned int a2, unsigned int a3)
{
  if (*(this + 17))
  {
    return 4294956447;
  }

  Scope = ausdk::AUBase::GetScope(this, a2);
  ausdk::AUScope::SetNumberOfElements(Scope, a3);
  return 0;
}

uint64_t ausdk::AUBase::ScheduleParameter(ausdk::AUBase *this, const AudioUnitParameterEvent *a2, unsigned int a3)
{
  v6 = (*(*this + 160))(this);
  if (a3)
  {
    v7 = v6;
    v8 = a3;
    do
    {
      if (a2->eventType == kParameterEvent_Immediate)
      {
        (*(*this + 152))(this, a2->parameter, a2->scope, a2->element, a2->eventValues.immediate.bufferOffset, a2->eventValues.immediate.value);
      }

      if (v7)
      {
        v9 = *(this + 49);
        v10 = *(this + 50);
        if (v9 >= v10)
        {
          v13 = *(this + 48);
          v14 = (v9 - v13) >> 5;
          v15 = v14 + 1;
          if ((v14 + 1) >> 59)
          {
            std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
          }

          v16 = v10 - v13;
          if (v16 >> 4 > v15)
          {
            v15 = v16 >> 4;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFE0)
          {
            v17 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](v17);
          }

          v18 = (32 * v14);
          eventValues = a2->eventValues;
          *v18 = *&a2->scope;
          v18[1] = eventValues;
          v12 = 32 * v14 + 32;
          v20 = *(this + 48);
          v21 = *(this + 49) - v20;
          v22 = 32 * v14 - v21;
          memcpy(v18 - v21, v20, v21);
          v23 = *(this + 48);
          *(this + 48) = v22;
          *(this + 49) = v12;
          *(this + 50) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          v11 = a2->eventValues;
          *v9 = *&a2->scope;
          v9[1] = v11;
          v12 = (v9 + 2);
        }

        *(this + 49) = v12;
      }

      ++a2;
      --v8;
    }

    while (v8);
  }

  return 0;
}

void std::allocator<AudioUnitParameterEvent>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t ausdk::AUBase::SetParameter(ausdk::AUBase *this, unsigned int a2, unsigned int a3, unsigned int a4, float a5)
{
  ElementOrError = ausdk::AUBase::GetElementOrError(this, a3, a4);
  if (v8)
  {
    ausdk::AUElement::SetParameterOrError(&v10, ElementOrError, a5, a2, 0);
    ElementOrError = 0;
    if ((v11 & 1) == 0)
    {
      return v10;
    }
  }

  return ElementOrError;
}

unint64_t ausdk::AUBase::GetParameter(ausdk::AUBase *this, unsigned int a2, unsigned int a3, unsigned int a4, float *a5)
{
  result = ausdk::AUBase::GetElementOrError(this, a3, a4);
  if (v8)
  {
    if (*(result + 40) == 1)
    {
      v9 = *(result + 48);
      if (a2 < ((*(result + 56) - v9) >> 2))
      {
        v10 = (v9 + 4 * a2);
LABEL_16:
        result = 0;
        *a5 = atomic_load_explicit(v10, memory_order_acquire);
        return result;
      }
    }

    else
    {
      v12 = *(result + 16);
      v11 = *(result + 24);
      if (v11 != v12)
      {
        v13 = (v11 - v12) >> 3;
        do
        {
          v14 = v13 >> 1;
          v15 = &v12[8 * (v13 >> 1)];
          v17 = *v15;
          v16 = v15 + 8;
          v13 += ~(v13 >> 1);
          if (v17 < a2)
          {
            v12 = v16;
          }

          else
          {
            v13 = v14;
          }
        }

        while (v13);
        if (v12 != v11)
        {
          if (*v12 != a2)
          {
            v12 = *(result + 24);
          }

          if (v11 != v12)
          {
            v10 = (v12 + 4);
            goto LABEL_16;
          }
        }
      }
    }

    return 4294956418;
  }

  return result;
}

uint64_t ausdk::AUBase::RemoveRenderNotification(ausdk::AUBase *this, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), unint64_t a3)
{
  v6 = ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::AllocNode(this + 224);
  *(v6 + 2) = 2;
  v6[2] = a2;
  v6[3] = a3;
  do
  {
    v7 = atomic_load(this + 29);
    *v6 = v7;
    v8 = v7;
    atomic_compare_exchange_strong(this + 29, &v8, v6);
  }

  while (v8 != v7);
  return 0;
}

unint64_t *ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::AllocNode(uint64_t a1)
{
  do
  {
    v1 = atomic_load((a1 + 16));
    if (!v1)
    {
      operator new();
    }

    v2 = v1;
    atomic_compare_exchange_strong((a1 + 16), &v2, 0);
  }

  while (v2 != v1);
  v3 = *v1;
  if (*v1)
  {
    v4 = *v1;
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
    do
    {
      v6 = atomic_load((a1 + 16));
      *v5 = v6;
      v7 = v6;
      atomic_compare_exchange_strong((a1 + 16), &v7, v3);
    }

    while (v7 != v6);
  }

  return v1;
}

uint64_t ausdk::AUBase::SetRenderNotification(ausdk::AUBase *this, int (*a2)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), unint64_t a3)
{
  if (!a2)
  {
    return 4294967246;
  }

  *(this + 248) = 1;
  v6 = ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::AllocNode(this + 224);
  *(v6 + 2) = 1;
  v6[2] = a2;
  v6[3] = a3;
  do
  {
    v7 = atomic_load(this + 29);
    *v6 = v7;
    v8 = v7;
    atomic_compare_exchange_strong(this + 29, &v8, v6);
  }

  while (v8 != v7);
  return 0;
}

uint64_t ausdk::AUBase::RemovePropertyListener(ausdk::AUBase *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4, int a5)
{
  v6 = *(this + 51);
  v5 = *(this + 52);
  if (v6 != v5)
  {
    while (*v6 != a2 || *(v6 + 8) != a3 || a5 && *(v6 + 16) != a4)
    {
      v6 += 24;
      if (v6 == v5)
      {
        return 0;
      }
    }

    if (v6 != v5)
    {
      v8 = (v6 + 24);
      if ((v6 + 24) != v5)
      {
        do
        {
          if (*v8 != a2 || *(v8 + 1) != a3 || a5 && *(v8 + 2) != a4)
          {
            v9 = *v8;
            *(v6 + 16) = *(v8 + 2);
            *v6 = v9;
            v6 += 24;
          }

          v8 = (v8 + 24);
        }

        while (v8 != v5);
        v5 = *(this + 52);
      }
    }

    if (v6 != v5)
    {
      *(this + 52) = v6;
    }
  }

  return 0;
}

uint64_t ausdk::AUBase::AddPropertyListener(ausdk::AUBase *this, int a2, void (*a3)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a4)
{
  v6 = *(this + 51);
  v7 = *(this + 52);
  if (v6 == v7 && 0xAAAAAAAAAAAAAAABLL * ((*(this + 53) - v6) >> 3) <= 0x1F)
  {
    operator new();
  }

  v8 = *(this + 53);
  if (v7 >= v8)
  {
    v10 = *(this + 51);
    v11 = v7 - v10;
    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
    v13 = v12 + 1;
    if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
    }

    v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v10) >> 3);
    if (2 * v14 > v13)
    {
      v13 = 2 * v14;
    }

    if (v14 >= 0x555555555555555)
    {
      v15 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      if (v15 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v16 = 24 * v12;
    *v16 = a2;
    *(v16 + 8) = a3;
    *(v16 + 16) = a4;
    v9 = 24 * v12 + 24;
    v17 = (24 * v12 - v11);
    memcpy(v17, v10, v11);
    *(this + 51) = v17;
    *(this + 52) = v9;
    *(this + 53) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    *v7 = a2;
    v9 = v7 + 24;
    *(v7 + 8) = a3;
    *(v7 + 16) = a4;
  }

  *(this + 52) = v9;
  return 0;
}

void ausdk::AUBase::PreDestructorInternal(ausdk::AUBase *this)
{
  v2 = *(this + 59);
  if (v2)
  {
    (*(*v2 + 16))(*(this + 59));
  }

  v3.n128_f64[0] = ausdk::AUBase::DoCleanup(this);
  if (v2)
  {
    v4 = *(*v2 + 24);

    v4(v2, v3);
  }
}

void sub_1C91FD438(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

double ausdk::AUBase::DoCleanup(ausdk::AUBase *this)
{
  if (*(this + 17))
  {
    (*(*this + 64))(this);
  }

  (*(*this + 504))(this);
  *(this + 41) = 0;
  result = 0.0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 280) = 0u;
  *(this + 34) = 0xFFEFFFFFFFFFFFFFLL;
  *(this + 17) = 0;
  return result;
}

uint64_t ausdk::AUBase::PostConstructorInternal(ausdk::AUBase *this)
{
  if (!*(this + 84))
  {
    (*(*this + 512))(this, 1156);
  }

  return ausdk::AUBase::CreateElements(this);
}

unint64_t *ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::~AUThreadSafeList(unint64_t *a1)
{
  for (i = atomic_load(a1); i; i = atomic_load(a1))
  {
    atomic_store(*i, a1);
    MEMORY[0x1CCA84AE0]();
  }

  for (j = atomic_load(a1 + 1); j; j = atomic_load(a1 + 1))
  {
    atomic_store(*j, a1 + 1);
    MEMORY[0x1CCA84AE0]();
  }

  for (k = atomic_load(a1 + 2); k; k = atomic_load(a1 + 2))
  {
    atomic_store(*k, a1 + 2);
    MEMORY[0x1CCA84AE0]();
  }

  return a1;
}

void std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          (*(*v6 + 8))(v6);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ausdk::AUBase::~AUBase(ausdk::AUBase *this)
{
  *this = off_1F48CBC78;
  v2 = *(this + 46);
  if (v2)
  {
    CFRelease(v2);
  }

  ausdk::Owned<__CFString const*>::releaseRef(*(this + 65));
  ausdk::Owned<__CFString const*>::releaseRef(*(this + 58));
  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
  }

  v3 = *(this + 51);
  if (v3)
  {
    *(this + 52) = v3;
    operator delete(v3);
  }

  v4 = *(this + 48);
  if (v4)
  {
    *(this + 49) = v4;
    operator delete(v4);
  }

  ausdk::AUThreadSafeList<ausdk::AUBase::RenderCallback>::~AUThreadSafeList(this + 28);
  v5 = 192;
  do
  {
    v6 = (this + v5);
    std::vector<std::unique_ptr<ausdk::AUElement>>::__destroy_vector::operator()[abi:ne200100](&v6);
    v5 -= 48;
  }

  while (v5);
}

uint64_t ausdk::AUBase::DispatchGetPropertyInfo(ausdk::AUBase *this, int a2, uint64_t a3, uint64_t a4, unsigned int *a5, BOOL *a6)
{
  switch(a2)
  {
    case 0:
    case 25:
    case 54:
      if (a3)
      {
        return 4294956430;
      }

      goto LABEL_3;
    case 1:
    case 23:
      if (a3 > 1)
      {
        return 4294956430;
      }

      goto LABEL_21;
    case 2:
      v18 = 8;
      goto LABEL_38;
    case 3:
      LODWORD(v23) = 0;
      v16 = (*(*this + 248))(this, a3, 0, &v23);
      if (v16)
      {
        return v16;
      }

      v19 = 4 * v23;
      goto LABEL_42;
    case 4:
      v16 = 0;
      v19 = 104;
      goto LABEL_42;
    case 8:
      v18 = 40;
LABEL_38:
      *a5 = v18;
      *a6 = ausdk::AUBase::IsStreamFormatWritable(this, a3, a4);
      goto LABEL_56;
    case 11:
      *a5 = 4;
      v16 = 0;
      *a6 = (*(*this + 216))(this, a3);
      return v16;
    case 12:
    case 61:
      if (!a3)
      {
        goto LABEL_5;
      }

      return 4294956430;
    case 13:
      if (a3)
      {
        return 4294956430;
      }

      v15 = (*(*this + 376))(this, 0);
      if (!v15)
      {
        return 4294956417;
      }

      v12 = 4 * v15;
      goto LABEL_24;
    case 14:
      if (a3)
      {
        return 4294956430;
      }

      v11 = 4;
      goto LABEL_55;
    case 16:
      v16 = (*(*this + 296))(this, a3, a4, 0);
      if (!v16)
      {
        goto LABEL_36;
      }

      return v16;
    case 19:
      *a6 = 0;
      v20 = (*(*this + 528))(this, a3, a4, 0, a6);
      *a5 = v20;
      if (v20)
      {
        return 0;
      }

      (*(*this + 552))(&v23, this, a3, a4);
      if (v23 == v24)
      {
        v16 = 4294956417;
      }

      else
      {
        v16 = 4294956445;
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      return v16;
    case 20:
      if (a3)
      {
        return 4294956430;
      }

      if ((*(*this + 360))(this))
      {
        goto LABEL_5;
      }

      return 4294956417;
    case 22:
      if (a3)
      {
        return 4294956430;
      }

      v12 = 4;
      goto LABEL_24;
    case 24:
      if (a3)
      {
        return 4294956430;
      }

      v17 = (*(*this + 312))(this, 0);
      if (v17)
      {
        return v17;
      }

LABEL_5:
      v12 = 8;
LABEL_24:
      *a5 = v12;
      *a6 = 0;
      goto LABEL_56;
    case 27:
      if (a3)
      {
        return 4294956430;
      }

      v11 = 40;
      goto LABEL_55;
    case 30:
LABEL_3:
      v11 = 8;
      goto LABEL_55;
    case 32:
      (*(*this + 552))(&v23, this, a3, a4);
      v13 = v23;
      v14 = v24;
      if (v23 != v24)
      {
        *a5 = v24 - v23;
        *a6 = 0;
      }

      if (v13)
      {
        v24 = v13;
        operator delete(v13);
      }

      if (v13 == v14)
      {
        return 4294956417;
      }

      return 0;
    case 35:
      v12 = 16;
      goto LABEL_24;
    case 36:
      if (a3)
      {
        return 4294956430;
      }

LABEL_21:
      v11 = 16;
LABEL_55:
      *a5 = v11;
      *a6 = 1;
      goto LABEL_56;
    case 51:
      if ((a3 - 1) > 1)
      {
        return 4294956430;
      }

      *a6 = 1;
      *a5 = 4;
LABEL_56:
      Scope = ausdk::AUBase::GetScope(this, a3);
      if (ausdk::AUScope::GetElement(Scope, a4))
      {
        return 0;
      }

      else
      {
        return 4294956419;
      }

    case 53:
      v16 = 0;
LABEL_36:
      v19 = 8;
LABEL_42:
      *a5 = v19;
      *a6 = 0;
      return v16;
    default:
      return (*(*this + 80))(this);
  }
}

void *std::vector<unsigned int>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_1C91FDC74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::allocator<unsigned int>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<unsigned int>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ausdk::AUBase::DoRender(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList &)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v6 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    v6 = *v6;
  }

  v7 = 136315394;
  v8 = v6;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", &v7, 0x12u);
  if (a2)
  {
LABEL_3:
    if (!*(a1 + 340))
    {
      *(a1 + 340) = a2;
      (*(*a1 + 432))(a1, 22, 0, 0);
    }
  }

LABEL_5:
  v4 = *MEMORY[0x1E69E9840];
  return a2;
}

uint64_t ausdk::AUBase::DoProcessMultiple(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_0::operator()(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    if (!a2)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v6 = (a1 + 440);
  if (*(a1 + 463) < 0)
  {
    v6 = *v6;
  }

  v7 = 136315394;
  v8 = v6;
  v9 = 1024;
  v10 = a2;
  _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", &v7, 0x12u);
  if (a2)
  {
LABEL_3:
    if (!*(a1 + 340))
    {
      *(a1 + 340) = a2;
      (*(*a1 + 432))(a1, 22, 0, 0);
    }
  }

LABEL_5:
  v4 = *MEMORY[0x1E69E9840];
  return a2;
}

void ausdk::BufferAllocator::Deallocate(int a1, void *a2)
{
  v3 = a2[4];
  if (v3)
  {
    free(v3);
  }

  free(a2);
}

_DWORD *ausdk::BufferAllocator::Allocate(ausdk::BufferAllocator *this, unsigned int a2, int a3)
{
  if (a2 > 0x1000)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::out_of_range::out_of_range[abi:ne200100](exception, "AudioBuffers::Allocate: Too many buffers");
  }

  v4 = 0;
  v5 = 0;
  v6 = (a3 + 15) & 0xFFFFFFF0;
  if (a2 && v6)
  {
    if (((v6 * a2) & 0xFFFFFFFF00000000) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "AUBuffer throwing bad_alloc", v13, 2u);
      }

      v11 = __cxa_allocate_exception(8uLL);
      v12 = std::bad_alloc::bad_alloc(v11);
    }

    v5 = v6 * a2;
    if (v6 * a2)
    {
      v4 = malloc_type_malloc(v6 * a2, 0x20421E56uLL);
      bzero(v4, v6 * a2);
    }

    else
    {
      v4 = 0;
    }
  }

  if (a2 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2;
  }

  v8 = 16 * v7 + 56;
  result = malloc_type_malloc(v8, 0x96973908uLL);
  *result = a2;
  result[1] = v6;
  *(result + 1) = 0;
  result[4] = v8;
  result[5] = v5;
  *(result + 3) = 0;
  *(result + 4) = v4;
  *(result + 5) = 0;
  *(result + 7) = 0;
  *(result + 8) = 0;
  result[12] = a2;
  return result;
}

unint64_t ausdk::AUBufferList::PrepareBufferOrError(ausdk::AUBufferList *this, const AudioStreamBasicDescription *a2, unsigned int a3)
{
  LODWORD(v3) = -10874;
  if (*(this + 5) >= a3)
  {
    mFormatFlags = a2->mFormatFlags;
    mChannelsPerFrame = a2->mChannelsPerFrame;
    if ((mFormatFlags & 0x20) != 0)
    {
      v7 = a2->mChannelsPerFrame;
    }

    else
    {
      v7 = 1;
    }

    if (v7 <= *(this + 4))
    {
      if ((mFormatFlags & 0x20) != 0)
      {
        v8 = 1;
      }

      else
      {
        v8 = a2->mChannelsPerFrame;
      }

      v9 = *(this + 1);
      v3 = v9 + 48;
      v10 = *(v9 + 48);
      if (*(v9 + 48) <= *v9 && (v11 = a2->mBytesPerFrame * a3, v12 = *(v9 + 4), v12 >= v11))
      {
        v14 = *(v9 + 32);
        v15 = v14 + *(v9 + 20);
        if (v10)
        {
          v16 = (v9 + 64);
          do
          {
            *v16 = v14;
            v14 += v12;
            *(v16 - 2) = v8;
            *(v16 - 1) = v11;
            v16 += 2;
            --v10;
          }

          while (v10);
        }

        if (v14 > v15)
        {
          v3 = 0xFFFFFFFFLL;
        }

        v4 = HIDWORD(v3);
        if (v14 <= v15)
        {
          *this = 1;
        }
      }

      else
      {
        LODWORD(v4) = 0;
        LODWORD(v3) = -1;
      }
    }

    else
    {
      LODWORD(v4) = 0;
      LODWORD(v3) = -10868;
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  return v3 | (v4 << 32);
}

uint64_t ausdk::AUInputElement::SetStreamFormat(ausdk::AUInputElement *this, const AudioStreamBasicDescription *a2)
{
  ausdk::AUIOElement::SetStreamFormat(this, a2);
  (*(*this + 64))(this, 0);
  return 0;
}

uint64_t ausdk::AUElement::GetNumberOfParameters(ausdk::AUElement *this)
{
  v1 = 16;
  if (*(this + 40))
  {
    v1 = 48;
  }

  v2 = 24;
  if (*(this + 40))
  {
    v2 = 56;
  }

  v3 = 2;
  v4 = *(this + v2);
  if (!*(this + 40))
  {
    v3 = 3;
  }

  return (v4 - *(this + v1)) >> v3;
}

void ausdk::AUInputElement::~AUInputElement(ausdk::AUInputElement *this)
{
  *this = &unk_1F48CC0B0;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  ausdk::AUElement::~AUElement(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CC0B0;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  ausdk::AUElement::~AUElement(this);
}

void ausdk::AUElement::~AUElement(const void **this)
{
  *this = &unk_1F48CC130;
  ausdk::Owned<__CFString const*>::releaseRef(this[9]);
  v2 = this[6];
  if (v2)
  {
    this[7] = v2;
    operator delete(v2);
  }

  v3 = this[2];
  if (v3)
  {
    this[3] = v3;
    operator delete(v3);
  }
}

{
  ausdk::AUElement::~AUElement(this);

  JUMPOUT(0x1CCA84AE0);
}

uint64_t ausdk::AUOutputElement::SetStreamFormat(ausdk::AUOutputElement *this, const AudioStreamBasicDescription *a2)
{
  ausdk::AUIOElement::SetStreamFormat(this, a2);
  (*(*this + 64))(this, 0);
  return 0;
}

void ausdk::AUOutputElement::~AUOutputElement(ausdk::AUOutputElement *this)
{
  *this = &unk_1F48CC0B0;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  ausdk::AUElement::~AUElement(this);

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CC0B0;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  ausdk::AUElement::~AUElement(this);
}

void ausdk::AUIOElement::~AUIOElement(ausdk::AUIOElement *this)
{
  *this = &unk_1F48CC0B0;
  if (*(this + 19))
  {
    (*(ausdk::BufferAllocator::instance(void)::global + 3))();
    *(this + 19) = 0;
  }

  *(this + 20) = 0;
  *(this + 36) = 0;
  v2 = *(this + 15);
  if (v2)
  {
    *(this + 16) = v2;
    operator delete(v2);
  }

  ausdk::AUElement::~AUElement(this);
}

uint64_t ausdk::AUMethodRemovePropertyListenerWithUserData(ausdk *this, void *a2, uint64_t a3, void (*a4)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a5)
{
  v9 = *(this + 67);
  if (v9)
  {
    (*(*v9 + 16))(*(this + 67), a2, a3, a4, a5);
  }

  v10 = (*(*(this + 8) + 120))(this + 64, a2, a3, a4, 1);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  return v10;
}

void sub_1C91FE7A4(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1C91FE78CLL);
}

uint64_t ausdk::AUMethodScheduleParameters(ausdk *this, char *a2, const AudioUnitParameterEvent *a3)
{
  if (!a2 || !a3)
  {
    return (*(*(this + 8) + 168))();
  }

  v3 = a3;
  for (i = (a2 + 28); ; i += 8)
  {
    v5 = *(i - 4);
    if (v5 == 2)
    {
      break;
    }

    if (v5 == 1)
    {
      v6 = *(i - 2);
      goto LABEL_9;
    }

LABEL_10:
    if (!--v3)
    {
      return (*(*(this + 8) + 168))();
    }
  }

  if ((*(i - 1) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    return 4294900553;
  }

  v6 = *i;
LABEL_9:
  if ((v6 & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    goto LABEL_10;
  }

  return 4294900553;
}

uint64_t ausdk::AUMethodRemoveRenderNotify(ausdk *this, void *a2, int (*a3)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a4)
{
  v7 = *(this + 67);
  if (v7)
  {
    (*(*v7 + 16))(*(this + 67), a2, a3, a4);
  }

  v8 = (*(*(this + 8) + 136))(this + 64, a2, a3, a4);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  return v8;
}

void sub_1C91FEA14(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1C91FEA00);
}

uint64_t ausdk::AUMethodAddRenderNotify(ausdk *this, void *a2, int (*a3)(void *, unsigned int *, const AudioTimeStamp *, unsigned int, unsigned int, AudioBufferList *), void *a4)
{
  v7 = *(this + 67);
  if (v7)
  {
    (*(*v7 + 16))(*(this + 67), a2, a3, a4);
  }

  v8 = (*(*(this + 8) + 128))(this + 64, a2, a3, a4);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  return v8;
}

void sub_1C91FEB78(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1C91FEB64);
}

uint64_t ausdk::AUMethodRender(ausdk *this, int *a2, unsigned int *a3, const AudioTimeStamp *a4, uint64_t a5, unsigned int *a6, AudioBufferList *a7)
{
  v96 = *MEMORY[0x1E69E9840];
  v88 = 0;
  v7 = 4294967246;
  if (!a3 || !a6)
  {
    goto LABEL_118;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = &v88;
  }

  v11 = this + 64;
  if (*(this + 81))
  {
    v13 = *(this + 100);
    if (v13 < a5)
    {
      v14 = mach_absolute_time();
      if (*(this + 51) < (v14 - *(this + 52)))
      {
        *(this + 52) = v14;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v63 = *(this + 100);
          *buf = 67109376;
          *v90 = a5;
          *&v90[4] = 1024;
          *&v90[6] = v63;
          _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "kAudioUnitErr_TooManyFramesToProcess : inFramesToProcess=%u, mMaxFramesPerSlice=%u", buf, 0xEu);
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v61 = (this + 504);
        if (*(this + 527) < 0)
        {
          v61 = *v61;
        }

        *buf = 136315394;
        *v90 = v61;
        *&v90[8] = 1024;
        *v91 = -10874;
        _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", buf, 0x12u);
      }

      v7 = 4294956422;
      if (!*(this + 101))
      {
        *(this + 101) = -10874;
        (*(*(this + 8) + 432))(v11, 22, 0, 0);
      }

      goto LABEL_118;
    }

    if (v13 != a5 && (*(this + 440) & 1) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v62 = (this + 504);
        if (*(this + 527) < 0)
        {
          v62 = *v62;
        }

        *buf = 136315394;
        *v90 = v62;
        *&v90[8] = 1024;
        *v91 = -50;
        _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", buf, 0x12u);
      }

      v7 = 4294967246;
      if (*(this + 101))
      {
        goto LABEL_118;
      }

LABEL_21:
      *(this + 101) = -50;
      (*(*(this + 8) + 432))(v11, 22, 0, 0);
      goto LABEL_118;
    }

    v17 = ausdk::AUScope::GetElementOrError<ausdk::AUInputElement>(this + 192, a4);
    if ((v18 & 1) == 0)
    {
      v7 = v17;
      goto LABEL_118;
    }

    if ((*(v17 + 92) & 0x20) != 0)
    {
      v19 = *(v17 + 108);
    }

    else
    {
      v19 = 1;
    }

    v20 = *a6;
    if (v19 == *a6)
    {
      v86 = v11;
      v87 = v17;
      if (v19)
      {
        v21 = 0;
        v22 = *(v17 + 104);
        v23 = v22 * a5;
        v24 = a6 + 3;
        do
        {
          if (*(v24 + 1))
          {
            v25 = *v24;
            if (*v24 < v23)
            {
              v60 = v22;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                *buf = 67110144;
                *v90 = a5;
                *&v90[4] = 1024;
                *&v90[6] = v60;
                *v91 = 1024;
                *&v91[2] = v23;
                v92 = 1024;
                v93 = v21;
                v94 = 1024;
                v95 = v25;
                _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; ioData.mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x20u);
              }

              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                v84 = (this + 504);
                if (*(this + 527) < 0)
                {
                  v84 = *v84;
                }

                *buf = 136315394;
                *v90 = v84;
                *&v90[8] = 1024;
                *v91 = -50;
                _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", buf, 0x12u);
              }

              v7 = 4294967246;
              if (!*(this + 101))
              {
                *(this + 101) = -50;
                (*(*(this + 8) + 432))(v86, 22, 0, 0);
              }

              goto LABEL_118;
            }

            *v24 = v23;
          }

          ++v21;
          v24 += 4;
        }

        while (v19 != v21);
      }

      v26 = v86;
      i = v17;
      if (*(this + 328) == 1)
      {
        *(this + 40) = pthread_self();
      }

      if (*(this + 312) == 1)
      {
        while (1)
        {
          v28 = atomic_load(this + 37);
          if (!v28)
          {
            break;
          }

          v29 = v28;
          atomic_compare_exchange_strong(this + 37, &v29, 0);
          if (v29 == v28)
          {
            v30 = 0;
            do
            {
              v31 = v30;
              v30 = v28;
              v28 = *v28;
              *v30 = v31;
            }

            while (v28);
            v32 = MEMORY[0x1E69E9C10];
            while (1)
            {
              v33 = v31;
              v34 = *(v30 + 8);
              switch(v34)
              {
                case 3:
                  v43 = atomic_load(this + 36);
                  if (v43)
                  {
                    do
                    {
                      v44 = *v43;
                      do
                      {
                        v45 = atomic_load(this + 38);
                        *v43 = v45;
                        v46 = v45;
                        atomic_compare_exchange_strong(this + 38, &v46, v43);
                      }

                      while (v46 != v45);
                      v43 = v44;
                    }

                    while (v44);
                  }

                  do
                  {
                    v47 = atomic_load(this + 38);
                    *v30 = v47;
                    v48 = v47;
                    atomic_compare_exchange_strong(this + 38, &v48, v30);
                  }

                  while (v48 != v47);
                  if (atomic_load(this + 36))
                  {
                    atomic_store(0, this + 36);
                  }

                  break;
                case 2:
                  v40 = atomic_load(this + 36);
                  if (v40)
                  {
                    v41 = 0;
                    while (1)
                    {
                      v42 = v40;
                      if (v40[2] == *(v30 + 16) && v40[3] == *(v30 + 24))
                      {
                        break;
                      }

                      v40 = *v40;
                      v41 = v42;
                      if (!*v42)
                      {
                        goto LABEL_71;
                      }
                    }

                    v51 = *v40;
                    if (v41)
                    {
                      *v41 = v51;
                    }

                    else
                    {
                      atomic_store(v51, this + 36);
                    }

                    do
                    {
                      v52 = atomic_load(this + 38);
                      *v42 = v52;
                      v53 = v52;
                      atomic_compare_exchange_strong(this + 38, &v53, v42);
                    }

                    while (v53 != v52);
                  }

                  do
                  {
LABEL_71:
                    v54 = atomic_load(this + 38);
                    *v30 = v54;
                    v55 = v54;
                    atomic_compare_exchange_strong(this + 38, &v55, v30);
                  }

                  while (v55 != v54);
                  break;
                case 1:
                  v35 = (this + 288);
                  v36 = atomic_load(this + 36);
                  if (v36)
                  {
                    while (1)
                    {
                      v37 = v36;
                      if (v36[2] == *(v30 + 16) && v36[3] == *(v30 + 24))
                      {
                        break;
                      }

                      v36 = *v36;
                      if (!*v37)
                      {
                        *v37 = v30;
                        *v30 = 0;
                        goto LABEL_72;
                      }
                    }

                    do
                    {
                      v38 = atomic_load(this + 38);
                      *v30 = v38;
                      v39 = v38;
                      atomic_compare_exchange_strong(this + 38, &v39, v30);
                    }

                    while (v39 != v38);
                  }

                  else
                  {
                    v50 = atomic_load(v35);
                    *v30 = v50;
                    atomic_store(v30, v35);
                  }

                  break;
                default:
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 0;
                    _os_log_error_impl(&dword_1C91AE000, v32, OS_LOG_TYPE_ERROR, "Unknown AUThreadSafeList event type", buf, 2u);
                  }

                  break;
              }

LABEL_72:
              if (!v33)
              {
                goto LABEL_82;
              }

              v31 = *v33;
              v30 = v33;
            }
          }
        }

LABEL_82:
        *buf = *v10 | 4;
        v57 = atomic_load(this + 36);
        for (i = v87; v57; v57 = *v57)
        {
          (*(v57 + 16))(*(v57 + 24), buf, a3, a4, a5, a6);
        }
      }

      if (*(a6 + 2) && (*(i + 168) != 1 || ((v58 = *(this + 29)) == 0 ? (v59 = (*(this + 27) - *(this + 26)) >> 3) : (LODWORD(v59) = (*(*v58 + 24))(v58)), v59 < 2)))
      {
        v66 = *a6;
        if (*(i + 160) < v66)
        {
LABEL_106:
          v7 = 0xFFFFFFFFLL;
          goto LABEL_110;
        }

        *(i + 144) = 2;
        memcpy((*(i + 152) + 48), a6, (16 * v66) | 8);
      }

      else
      {
        if (*(i + 168) != 1)
        {
          v7 = 4294956445;
          goto LABEL_110;
        }

        v64 = ausdk::AUBufferList::PrepareBufferOrError((i + 144), (i + 80), a5);
        if ((v65 & 1) == 0)
        {
          v7 = v64;
          if (!v64)
          {
            goto LABEL_134;
          }

LABEL_110:
          if (!*(this + 101))
          {
            *(this + 101) = v7;
            (*(*(this + 8) + 432))(v26, 22, 0, 0);
          }

          v67 = 264;
          goto LABEL_113;
        }
      }

      v7 = (*(*v86 + 200))(v86, v10, a3, a4, a5);
      if (v7)
      {
        goto LABEL_110;
      }

      v72 = *(i + 144);
      if (*(a6 + 2))
      {
        if (v72)
        {
          v73 = *a6;
          if (!*a6)
          {
LABEL_133:
            v7 = 0;
            *(v87 + 144) = 0;
LABEL_134:
            v67 = 8;
            goto LABEL_113;
          }

          v74 = 0;
          v85 = *(v87 + 152);
          v75 = v85 + 56;
          v76 = (a6 + 4);
          while (1)
          {
            v77 = -16;
            if (v74 < *(v85 + 48))
            {
              v77 = 0;
            }

            v78 = v75 + v77;
            v79 = *(v75 + v77 + 4);
            v80 = *(v75 + v77 + 8);
            v81 = *v76;
            if (v79)
            {
              if (!v80 || v81 == 0)
              {
                break;
              }
            }

            if (v81 != v80)
            {
              memmove(v81, v80, *(v75 + v77 + 4));
              v73 = *a6;
            }

            *(v76 - 1) = v79;
            ++v74;
            v75 = v78 + 16;
            v76 += 2;
            if (v74 >= v73)
            {
              goto LABEL_133;
            }
          }
        }

        v26 = v86;
        *(v87 + 144) = 0;
      }

      else if (v72)
      {
        v67 = 8;
        memcpy(a6, (*(i + 152) + 48), (16 * *a6) | 8);
        v7 = 0;
LABEL_113:
        if (*(this + 312) == 1)
        {
          *buf = *v10 | v67;
          for (j = atomic_load(this + 36); j; j = *j)
          {
            (*(j + 16))(*(j + 24), buf, a3, a4, a5, a6);
          }
        }

        v69 = *(this + 56);
        if (v69 != *(this + 57))
        {
          *(this + 57) = v69;
        }

        goto LABEL_118;
      }

      goto LABEL_106;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v90 = v20;
      *&v90[4] = 1024;
      *&v90[6] = v19;
      _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ioData.mNumberBuffers=%u, ASBD::NumberChannelStreams(output.GetStreamFormat())=%u; kAudio_ParamError", buf, 0xEu);
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v83 = (this + 504);
      if (*(this + 527) < 0)
      {
        v83 = *v83;
      }

      *buf = 136315394;
      *v90 = v83;
      *&v90[8] = 1024;
      *v91 = -50;
      _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", buf, 0x12u);
    }

    v7 = 4294967246;
    if (!*(this + 101))
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v56 = (this + 504);
      if (*(this + 527) < 0)
      {
        v56 = *v56;
      }

      *buf = 136315394;
      *v90 = v56;
      *&v90[8] = 1024;
      *v91 = -10867;
      _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, render err: %d", buf, 0x12u);
    }

    v7 = 4294956429;
    if (!*(this + 101))
    {
      *(this + 101) = -10867;
      (*(*(this + 8) + 432))(v11, 22, 0, 0);
    }
  }

LABEL_118:
  v70 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_1C91FF76C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  v11 = __cxa_begin_catch(a1);
  if (a2 == 2)
  {
    ausdk::AUBase::DoRender(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList &)::$_0::operator()(a10, *v11);
  }

  else
  {
    ausdk::AUBase::DoRender(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList &)::$_0::operator()(a10, 0xFFFFFFFFLL);
  }

  __cxa_end_catch();
  JUMPOUT(0x1C91FF4ECLL);
}

uint64_t ausdk::AUMethodRemovePropertyListener(ausdk *this, void *a2, uint64_t a3, void (*a4)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int))
{
  v7 = *(this + 67);
  if (v7)
  {
    (*(*v7 + 16))(*(this + 67), a2, a3, a4);
  }

  v8 = (*(*(this + 8) + 120))(this + 64, a2, a3, 0, 0);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  return v8;
}

void sub_1C91FF8C0(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1C91FF8ACLL);
}

uint64_t ausdk::AUMethodAddPropertyListener(ausdk *this, void *a2, uint64_t a3, void (*a4)(void *, OpaqueAudioComponentInstance *, unsigned int, unsigned int, unsigned int), void *a5)
{
  v9 = *(this + 67);
  if (v9)
  {
    (*(*v9 + 16))(*(this + 67), a2, a3, a4, a5);
  }

  v10 = (*(*(this + 8) + 112))(this + 64, a2, a3, a4, a5);
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  return v10;
}

void sub_1C91FFA34(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1C91FFA1CLL);
}

uint64_t ausdk::AUMethodReset(ausdk *this, void *a2, uint64_t a3)
{
  v6 = *(this + 67);
  if (v6)
  {
    (*(*v6 + 16))(*(this + 67));
  }

  v8 = *(this + 8);
  v7 = this + 64;
  *(v7 + 41) = 0;
  *(v7 + 296) = 0u;
  *(v7 + 312) = 0u;
  *(v7 + 280) = 0u;
  *(v7 + 34) = 0xFFEFFFFFFFFFFFFFLL;
  v9 = (*(v8 + 72))(v7, a2, a3);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  return v9;
}

void sub_1C91FFBB4(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1C91FFBA0);
}

uint64_t ausdk::AUMethodSetParameter(ausdk *this, void *a2, float a3)
{
  if ((LODWORD(a3) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
  {
    return (*(*(this + 8) + 152))();
  }

  else
  {
    return 4294900553;
  }
}

uint64_t ausdk::AUMethodGetParameter(ausdk *this, void *a2, unsigned int a3, unsigned int a4, uint64_t a5, float *a6)
{
  if (a5)
  {
    return (*(*(this + 8) + 144))();
  }

  else
  {
    return 4294967246;
  }
}

uint64_t ausdk::AUMethodSetProperty(ausdk *this, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *__s2, uint64_t a6)
{
  v12 = *(this + 67);
  if (v12)
  {
    (*(*v12 + 16))(*(this + 67));
  }

  if (__s2 && a6)
  {
    v13 = ausdk::AUBase::DispatchSetProperty(this + 8, a2, a3, a4, __s2, a6);
LABEL_6:
    v14 = v13;
    goto LABEL_32;
  }

  if (!__s2 && !a6)
  {
    v15 = this + 64;
    if (a2 <= 26)
    {
      if (a2 != 19)
      {
        if (a2 == 25)
        {
          ausdk::Owned<__CFString const*>::operator=(this + 73, 0);
LABEL_31:
          v14 = 0;
LABEL_32:
          v18 = 1;
          if (!v12)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }

LABEL_24:
        v13 = (*(*v15 + 104))(this + 64, a2, a3, a4);
        goto LABEL_6;
      }

      v14 = (*(*v15 + 544))(this + 64, a3, a4);
      if (v14)
      {
        goto LABEL_32;
      }

LABEL_26:
      (*(*v15 + 432))(v15, a2, a3, a4);
      goto LABEL_31;
    }

    if (a2 == 27)
    {
      if (!a3)
      {
        v22 = 0;
        memset(v21, 0, sizeof(v21));
        v19 = this + 544;
        if (memcmp(v19, v21, 0x28uLL))
        {
          *(v19 + 4) = 0;
          *v19 = 0u;
          *(v19 + 1) = 0u;
          (*(*v15 + 432))(v15, 27, 0, a4);
        }

        goto LABEL_31;
      }
    }

    else
    {
      if (a2 != 54)
      {
        goto LABEL_24;
      }

      if (!a3)
      {
        ausdk::Owned<__CFString const*>::operator=(this + 66, 0);
        goto LABEL_26;
      }
    }

    v14 = 4294956430;
    goto LABEL_32;
  }

  if (!__s2)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    LOWORD(v21[0]) = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "AudioUnitSetProperty: inData == NULL";
    goto LABEL_38;
  }

  if (a6)
  {
    goto LABEL_31;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21[0]) = 0;
    v16 = MEMORY[0x1E69E9C10];
    v17 = "AudioUnitSetProperty: inDataSize == 0";
LABEL_38:
    _os_log_error_impl(&dword_1C91AE000, v16, OS_LOG_TYPE_ERROR, v17, v21, 2u);
  }

LABEL_22:
  v18 = 0;
  v14 = 0;
  if (v12)
  {
LABEL_33:
    (*(*v12 + 24))(v12);
  }

LABEL_34:
  if ((v18 & 1) == 0)
  {
    return 4294967246;
  }

  return v14;
}

void sub_1C92000D8(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1C9200088);
}

uint64_t ausdk::AUMethodGetProperty(ausdk *this, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, unsigned int *a6, unsigned int *a7)
{
  v54 = *MEMORY[0x1E69E9840];
  v45 = 0;
  v13 = *(this + 67);
  if (v13)
  {
    (*(*v13 + 16))(*(this + 67), a2, a3, a4, a5, a6, a7);
  }

  if (!a6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
LABEL_12:
      v15 = 0;
      PropertyInfo = 0;
      v14 = 4294967246;
      goto LABEL_13;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "AudioUnitGetProperty: null size pointer";
LABEL_23:
    _os_log_error_impl(&dword_1C91AE000, v17, OS_LOG_TYPE_ERROR, v18, buf, 2u);
    goto LABEL_12;
  }

  if (!a5)
  {
    *buf = 0;
    PropertyInfo = ausdk::AUBase::DispatchGetPropertyInfo((this + 64), a2, a3, a4, buf, &v45);
    v15 = 0;
    *a6 = *buf;
    v14 = PropertyInfo;
    goto LABEL_13;
  }

  __n = *a6;
  if (!*a6)
  {
    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    *buf = 0;
    v17 = MEMORY[0x1E69E9C10];
    v18 = "AudioUnitGetProperty: *ioDataSize == 0 on entry";
    goto LABEL_23;
  }

  v44 = 0;
  v14 = ausdk::AUBase::DispatchGetPropertyInfo((this + 64), a2, a3, a4, &v44, &v45);
  v15 = v14 == 0;
  if (v14)
  {
    PropertyInfo = 0;
    goto LABEL_13;
  }

  v42 = (this + 64);
  if (__n < v44)
  {
    operator new();
  }

  switch(a2)
  {
    case 0:
      *buf = 0;
      v21 = (*(*v42 + 272))(v42, buf);
      goto LABEL_47;
    case 1:
    case 5:
    case 6:
    case 7:
    case 9:
    case 10:
    case 15:
    case 17:
    case 18:
    case 21:
    case 23:
    case 26:
    case 28:
    case 29:
    case 31:
    case 33:
    case 34:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 52:
      goto LABEL_26;
    case 2:
      (*(*v42 + 392))(buf);
      v22 = *buf;
      goto LABEL_51;
    case 3:
      v46 = 0;
      PropertyInfo = (*(*v42 + 248))(v42, a3, 0, &v46);
      if (!PropertyInfo)
      {
        std::vector<unsigned int>::vector[abi:ne200100](buf, v46);
        PropertyInfo = (*(*v42 + 248))(v42, a3, *buf, &v46);
        v38 = *buf;
        if (!PropertyInfo)
        {
          memcpy(a5, *buf, *&buf[8] - *buf);
        }

        if (v38)
        {
          *&buf[8] = v38;
          operator delete(v38);
        }
      }

      goto LABEL_48;
    case 4:
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      *buf = 0u;
      v48 = 0u;
      PropertyInfo = (*(*v42 + 256))(v42, a3, a4, buf);
      v32 = v52;
      a5[4] = v51;
      a5[5] = v32;
      *(a5 + 12) = v53;
      v33 = v48;
      *a5 = *buf;
      a5[1] = v33;
      v34 = v50;
      a5[2] = v49;
      a5[3] = v34;
      goto LABEL_48;
    case 8:
      (*(*v42 + 392))(buf);
      v36 = v48;
      *a5 = *buf;
      a5[1] = v36;
      *(a5 + 4) = v49;
      goto LABEL_76;
    case 11:
      Scope = ausdk::AUBase::GetScope(v42, a3);
      v29 = Scope[5];
      if (v29)
      {
        LODWORD(v30) = (*(*v29 + 24))(v29);
      }

      else
      {
        v30 = (Scope[3] - Scope[2]) >> 3;
      }

      *a5 = v30;
      goto LABEL_76;
    case 12:
      (*(*v42 + 344))(v42);
      goto LABEL_68;
    case 13:
      *buf = 0;
      v39 = (*(*v42 + 376))(v42, buf);
      if (v39 && *buf)
      {
        memcpy(a5, *buf, 4 * v39);
      }

      goto LABEL_76;
    case 14:
      v35 = *(this + 100);
      goto LABEL_70;
    case 16:
      *buf = 0;
      v21 = (*(*v42 + 296))(v42, a3, a4, buf);
      goto LABEL_47;
    case 19:
      buf[0] = 0;
      if (!(*(*v42 + 528))(v42, a3, a4, a5, buf))
      {
        goto LABEL_79;
      }

      goto LABEL_76;
    case 20:
      if (!(*(*v42 + 360))(v42))
      {
        goto LABEL_79;
      }

      v40 = (*(*v42 + 352))(v42);
LABEL_68:
      *a5 = v40;
      goto LABEL_76;
    case 22:
      *a5 = *(this + 101);
      *(this + 101) = 0;
      goto LABEL_76;
    case 24:
      *buf = 0;
      v21 = (*(*v42 + 312))(v42, buf);
      goto LABEL_47;
    case 25:
      v31 = *(this + 73);
      *a5 = v31;
      if (!v31)
      {
        goto LABEL_40;
      }

      goto LABEL_72;
    case 27:
      v26 = *(this + 34);
      v27 = *(this + 35);
      *(a5 + 4) = *(this + 72);
      *a5 = v26;
      a5[1] = v27;
      goto LABEL_76;
    case 30:
      v24 = ausdk::AUBase::GetScope(v42, a3);
      v25 = *(ausdk::AUScope::GetElement(v24, a4) + 72);
      ausdk::Owned<__CFString const*>::retainRef(v25);
      ausdk::Owned<__CFString const*>::releaseRef(v25);
      if (v25)
      {
        CFRetain(v25);
        *a5 = v25;
        goto LABEL_76;
      }

LABEL_40:
      PropertyInfo = 4294956446;
      goto LABEL_80;
    case 32:
      (*(*v42 + 552))(buf);
      v37 = *buf;
      if (*buf != *&buf[8])
      {
        memcpy(a5, *buf, *&buf[8] - *buf);
        if (v37)
        {
          *&buf[8] = v37;
          operator delete(v37);
        }

        goto LABEL_76;
      }

      if (*buf)
      {
        *&buf[8] = *buf;
        operator delete(*buf);
      }

LABEL_79:
      PropertyInfo = 4294956417;
      goto LABEL_80;
    case 35:
      *buf = *a5;
      if (!*buf)
      {
        PropertyInfo = 4294956445;
        goto LABEL_80;
      }

      PropertyInfo = (*(*v42 + 304))(v42, a3);
      *a5 = *buf;
      if (PropertyInfo != -10879)
      {
        goto LABEL_48;
      }

      v23 = (*(*v42 + 88))(v42, 35, a3, a4, a5);
      goto LABEL_32;
    case 36:
      *a5 = *(this + 424);
      v31 = *(this + 54);
      if (!v31)
      {
        goto LABEL_76;
      }

      goto LABEL_72;
    case 51:
      v41 = ausdk::AUBase::GetScope(v42, a3);
      v35 = *(ausdk::AUScope::GetIOElement(v41, a4) + 168);
LABEL_70:
      *a5 = v35;
      goto LABEL_76;
    case 53:
      *buf = 0;
      v21 = (*(*v42 + 264))(v42, a3, a4, buf, &buf[4]);
LABEL_47:
      PropertyInfo = v21;
      *a5 = *buf;
      goto LABEL_48;
    case 54:
      v31 = *(this + 66);
      *a5 = v31;
      if (v31)
      {
LABEL_72:
        CFRetain(v31);
      }

      goto LABEL_76;
    default:
      if (a2 == 61)
      {
        v22 = *(this + 42);
LABEL_51:
        *a5 = v22;
LABEL_76:
        PropertyInfo = 0;
        *a6 = v44;
        break;
      }

LABEL_26:
      v23 = (*(*v42 + 88))(v42, a2, a3, a4, a5);
LABEL_32:
      PropertyInfo = v23;
LABEL_48:
      if (!PropertyInfo)
      {
        goto LABEL_76;
      }

LABEL_80:
      *a6 = 0;
      break;
  }

LABEL_13:
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  if (v15)
  {
    v14 = PropertyInfo;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_1C9200B14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (a2)
  {
    if (__p)
    {
      operator delete(__p);
    }

    if (a11)
    {
      operator delete(a11);
    }

    if (v16)
    {
      (*(*v16 + 24))(v16);
    }

    switch(a2)
    {
      case 5:
        v19 = *(__cxa_begin_catch(exception_object) + 4);
        __cxa_end_catch();
        break;
      case 4:
        __cxa_begin_catch(exception_object);
        __cxa_end_catch();
        break;
      case 3:
        v20 = *__cxa_begin_catch(exception_object);
        __cxa_end_catch();
        break;
      default:
        v21 = __cxa_begin_catch(exception_object);
        if (a2 == 2)
        {
          v22 = v21[4];
        }

        __cxa_end_catch();
        break;
    }

    JUMPOUT(0x1C9200304);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ausdk::AUMethodGetPropertyInfo(ausdk *this, void *a2, uint64_t a3, uint64_t a4, unsigned int *a5, unsigned int *a6, unsigned __int8 *a7)
{
  v11 = a2;
  v17 = 0;
  v16 = 0;
  v13 = *(this + 67);
  if (v13)
  {
    (*(*v13 + 16))(*(this + 67), a2, a3, a4, a5, a6, a7);
  }

  PropertyInfo = ausdk::AUBase::DispatchGetPropertyInfo((this + 64), v11, a3, a4, &v17, &v16);
  if (a5)
  {
    *a5 = v17;
  }

  if (a6)
  {
    *a6 = v16;
  }

  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  return PropertyInfo;
}

void sub_1C9200D10(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1C9200CF0);
}

uint64_t ausdk::AUMethodUninitialize(ausdk *this, void *a2)
{
  v3 = *(this + 67);
  if (v3)
  {
    (*(*v3 + 16))(*(this + 67), a2);
  }

  v4 = ausdk::AUBase::DoCleanup((this + 64));
  if (v3)
  {
    (*(*v3 + 24))(v3, v4);
    return 0;
  }

  return v3;
}

void sub_1C9200E3C(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1C9200E2CLL);
}

uint64_t ausdk::AUMethodInitialize(ausdk *this, void *a2)
{
  v3 = *(this + 67);
  if (v3)
  {
    (*(*v3 + 16))(*(this + 67), a2);
  }

  if (*(this + 81))
  {
    v4 = 0;
  }

  else
  {
    v4 = (*(*(this + 8) + 56))(this + 64, a2);
    if (!v4)
    {
      if ((*(*(this + 8) + 160))(this + 64) && *(this + 58) - *(this + 56) <= 0x2FFuLL)
      {
        v5 = *(this + 57);
        operator new();
      }

      *(this + 82) = 1;
      (*(*(this + 8) + 496))(this + 64);
      v4 = 0;
      *(this + 81) = 1;
      __dmb(0xBu);
    }
  }

  if (v3)
  {
    (*(*v3 + 24))(v3, a2);
  }

  return v4;
}

void sub_1C9201094(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v3 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      goto LABEL_10;
    case 3:
      v5 = *__cxa_begin_catch(a1);
      goto LABEL_9;
    default:
      v3 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        goto LABEL_9;
      }

      break;
  }

  v4 = v3[4];
LABEL_9:
  __cxa_end_catch();
LABEL_10:
  JUMPOUT(0x1C9201078);
}

uint64_t (*ausdk::AUBaseProcessMultipleLookup::Lookup(ausdk::AUBaseProcessMultipleLookup *this))(ausdk *__hidden this, void *)
{
  if ((this - 1) > 0x11)
  {
    v1 = 0;
  }

  else
  {
    v1 = off_1F48CC010[(this - 1)];
  }

  if (this == 21)
  {
    v2 = ausdk::AUMethodProcessMultiple;
  }

  else
  {
    v2 = 0;
  }

  if (v1)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ausdk::AUMethodProcessMultiple(ausdk *this, int *a2, unsigned int *a3, const AudioTimeStamp *a4, uint64_t a5, uint64_t a6, const AudioBufferList **a7, uint64_t a8, AudioBufferList **a9)
{
  v10 = a7;
  v12 = a5;
  v13 = a4;
  v73 = *MEMORY[0x1E69E9840];
  v63 = 0;
  if (a2)
  {
    v16 = a2;
    v17 = *a2;
    if ((*a2 & 0x200) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    LOWORD(v17) = 0;
    v16 = &v63;
  }

  v18 = 4294967246;
  if (!a3 || !a6 || !a8)
  {
    goto LABEL_56;
  }

LABEL_8:
  v19 = this + 64;
  if ((v17 & 0x200) != 0)
  {
    goto LABEL_51;
  }

  if ((*(this + 81) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v48 = (this + 504);
      if (*(this + 527) < 0)
      {
        v48 = *v48;
      }

      *buf = 136315394;
      *v65 = v48;
      *&v65[8] = 1024;
      *v66 = -10867;
      _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
    }

    v18 = 4294956429;
    if (!*(this + 101))
    {
      *(this + 101) = -10867;
      (*(*(this + 8) + 432))(this + 64, 22, 0, 0);
    }

    goto LABEL_56;
  }

  v20 = *(this + 100);
  if (v20 < a4)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v50 = (this + 504);
      if (*(this + 527) < 0)
      {
        v50 = *v50;
      }

      *buf = 136315394;
      *v65 = v50;
      *&v65[8] = 1024;
      *v66 = -10874;
      _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
    }

    v18 = 4294956422;
    if (!*(this + 101))
    {
      *(this + 101) = -10874;
      (*(*(this + 8) + 432))(this + 64, 22, 0, 0);
    }

    goto LABEL_56;
  }

  if (v20 != a4 && (*(this + 440) & 1) != 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v51 = (this + 504);
      if (*(this + 527) < 0)
      {
        v51 = *v51;
      }

      *buf = 136315394;
      *v65 = v51;
      *&v65[8] = 1024;
      *v66 = -50;
      _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
    }

    v18 = 4294967246;
    if (!*(this + 101))
    {
      *(this + 101) = -50;
      (*(*(this + 8) + 432))(this + 64, 22, 0, 0);
    }

    goto LABEL_56;
  }

  v60 = a7;
  v61 = a5;
  v62 = a4;
  v58 = this + 64;
  if (a5)
  {
    v21 = 0;
    do
    {
      if (*(a6 + 8 * v21))
      {
        v22 = ausdk::AUScope::GetElementOrError<ausdk::AUInputElement>(this + 144, v21);
        if ((v23 & 1) == 0)
        {
          v18 = v22;
          goto LABEL_56;
        }

        if ((*(v22 + 92) & 0x20) != 0)
        {
          v24 = *(v22 + 108);
        }

        else
        {
          v24 = 1;
        }

        v25 = *(a6 + 8 * v21);
        v26 = *v25;
        if (v24 != *v25)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 67109632;
            *v65 = v21;
            *&v65[4] = 1024;
            *&v65[6] = v26;
            *v66 = 1024;
            *&v66[2] = v24;
            _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "inInputBufferLists[%u]->mNumberBuffers=%u, ASBD::NumberChannelStreams(input.GetStreamFormat())=%u; kAudio_ParamError", buf, 0x14u);
          }

          v52 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v53 = v58;
          if (v52)
          {
            v56 = (this + 504);
            if (*(this + 527) < 0)
            {
              v56 = *v56;
            }

            *buf = 136315394;
            *v65 = v56;
            *&v65[8] = 1024;
            *v66 = -50;
            _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
            v53 = v58;
          }

          v18 = 4294967246;
          if (!*(this + 101))
          {
            *(this + 101) = -50;
            (*(*(this + 8) + 432))(v53, 22, 0, 0);
          }

          goto LABEL_56;
        }

        if (v24)
        {
          v27 = 0;
          v28 = *(v22 + 104) * v62;
          v29 = v25 + 4;
          while (1)
          {
            if (!*v29)
            {
              goto LABEL_59;
            }

            v30 = *(v29 - 1);
            if (v30 < v28)
            {
              break;
            }

            ++v27;
            v29 += 2;
            if (v24 == v27)
            {
              goto LABEL_35;
            }
          }

          v47 = *(v22 + 104);
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            *buf = 67110400;
            *v65 = v62;
            *&v65[4] = 1024;
            *&v65[6] = v47;
            *v66 = 1024;
            *&v66[2] = v28;
            v67 = 1024;
            v68 = v21;
            v69 = 1024;
            v70 = v27;
            v71 = 1024;
            v72 = v30;
            _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; inInputBufferLists[%u].mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x26u);
          }

LABEL_59:
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            v54 = (this + 504);
            if (*(this + 527) < 0)
            {
              v54 = *v54;
            }

            *buf = 136315394;
            *v65 = v54;
            *&v65[8] = 1024;
            *v66 = -50;
            _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
          }

          v18 = 4294967246;
          if (!*(this + 101))
          {
            *(this + 101) = -50;
            (*(*v58 + 432))(v58, 22, 0, 0);
          }

          goto LABEL_56;
        }
      }

LABEL_35:
      ++v21;
    }

    while (v21 != v61);
  }

  v19 = v58;
  v12 = v61;
  v13 = v62;
  v10 = v60;
  if (!v60)
  {
LABEL_51:
    if (*(this + 328) == 1)
    {
      *(this + 40) = pthread_self();
    }

    if (*a3 == *(this + 42))
    {
      v18 = 0;
    }

    else
    {
      v42 = *a3;
      v43 = *(a3 + 1);
      v44 = *(a3 + 3);
      *(this + 23) = *(a3 + 2);
      *(this + 24) = v44;
      *(this + 21) = v42;
      *(this + 22) = v43;
      v18 = (*(*v19 + 184))(v19, v16, v13, v12, a6, v10, a8);
    }

    goto LABEL_56;
  }

  v31 = 0;
  while (!*(a8 + 8 * v31))
  {
LABEL_50:
    ++v31;
    v12 = v61;
    v13 = v62;
    v10 = v60;
    if (v31 == v60)
    {
      goto LABEL_51;
    }
  }

  v59 = v31;
  v32 = ausdk::AUScope::GetElementOrError<ausdk::AUInputElement>(this + 192, v31);
  v18 = v32;
  if ((v33 & 1) == 0)
  {
    goto LABEL_56;
  }

  if ((*(v32 + 92) & 0x20) != 0)
  {
    v34 = *(v32 + 108);
  }

  else
  {
    v34 = 1;
  }

  v31 = v59;
  v35 = *(a8 + 8 * v59);
  v36 = *v35;
  if (v34 == *v35)
  {
    if (v34)
    {
      v37 = 0;
      v38 = *(v32 + 104);
      v39 = v38 * v62;
      v40 = v35 + 3;
      while (1)
      {
        if (*(v40 + 1))
        {
          v41 = *v40;
          if (*v40 < v39)
          {
            v49 = v38;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              *buf = 67110400;
              *v65 = v62;
              *&v65[4] = 1024;
              *&v65[6] = v49;
              *v66 = 1024;
              *&v66[2] = v39;
              v67 = 1024;
              v68 = v59;
              v69 = 1024;
              v70 = v37;
              v71 = 1024;
              v72 = v41;
              _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "%u frames, %u bytes/frame, expected %u-byte buffer; ioOutputBufferLists[%u]->mBuffers[%u].mDataByteSize=%u; kAudio_ParamError", buf, 0x26u);
            }

            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              v55 = (this + 504);
              if (*(this + 527) < 0)
              {
                v55 = *v55;
              }

              *buf = 136315394;
              *v65 = v55;
              *&v65[8] = 1024;
              *v66 = -50;
              _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
            }

            v18 = 4294967246;
            if (!*(this + 101))
            {
              goto LABEL_69;
            }

            goto LABEL_56;
          }

          *v40 = v39;
        }

        ++v37;
        v40 += 4;
        if (v34 == v37)
        {
          goto LABEL_50;
        }
      }
    }

    goto LABEL_50;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109632;
    *v65 = v59;
    *&v65[4] = 1024;
    *&v65[6] = v36;
    *v66 = 1024;
    *&v66[2] = v34;
    _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "ioOutputBufferLists[%u]->mNumberBuffers=%u, ASBD::NumberChannelStreams(output.GetStreamFormat())=%u; kAudio_ParamError", buf, 0x14u);
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v57 = (this + 504);
    if (*(this + 527) < 0)
    {
      v57 = *v57;
    }

    *buf = 136315394;
    *v65 = v57;
    *&v65[8] = 1024;
    *v66 = -50;
    _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "  from %s, processmultiple err: %d", buf, 0x12u);
    v19 = v58;
  }

  v18 = 4294967246;
  if (!*(this + 101))
  {
LABEL_69:
    *(this + 101) = -50;
    (*(*(this + 8) + 432))(v19, 22, 0, 0);
  }

LABEL_56:
  v45 = *MEMORY[0x1E69E9840];
  return v18;
}

void sub_1C9201B74(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    v12 = __cxa_begin_catch(a1);
    if (a2 == 2)
    {
      ausdk::AUBase::DoProcessMultiple(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_0::operator()(a11, *v12);
    }

    else
    {
      ausdk::AUBase::DoProcessMultiple(unsigned int &,AudioTimeStamp const&,unsigned int,unsigned int,AudioBufferList const**,unsigned int,AudioBufferList**)::$_0::operator()(a11, 0xFFFFFFFFLL);
    }

    __cxa_end_catch();
    JUMPOUT(0x1C9201524);
  }

  _Unwind_Resume(a1);
}

uint64_t ausdk::AUIOElement::RemoveAudioChannelLayout(ausdk::AUIOElement *this)
{
  std::vector<AudioChannelLayout>::vector[abi:ne200100](&v5, 1);
  v2 = v5;
  *v5 = 0;
  *(v2 + 2) = 0;
  v3 = *(this + 15);
  if (v3)
  {
    *(this + 16) = v3;
    operator delete(v3);
    v2 = v5;
  }

  *(this + 15) = v2;
  *(this + 8) = v6;
  return 0;
}

uint64_t ausdk::AUIOElement::GetAudioChannelLayout(ausdk::AUIOElement *this, AudioChannelLayout *__dst, BOOL *a3)
{
  *a3 = 1;
  v3 = *(this + 15);
  if (*v3 == 0x10000)
  {
    v5 = vcnt_s8(v3[1]);
    v5.i16[0] = vaddlv_u8(v5);
    v4 = v5.i32[0];
  }

  else if (*v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = v3[2];
  }

  if (!v4)
  {
    return 0;
  }

  v6 = v3[2];
  v7 = (20 * v6 + 12);
  if (__dst && 20 * v6 != -12)
  {
    memcpy(__dst, v3, (20 * v6 + 12));
  }

  return v7;
}

uint64_t ausdk::AUIOElement::SetAudioChannelLayout(ausdk::AUIOElement *this, const AudioChannelLayout *a2)
{
  if (a2->mChannelLayoutTag == 0x10000)
  {
    v5 = vcnt_s8(a2->mChannelBitmap);
    v5.i16[0] = vaddlv_u8(v5);
    mChannelLayoutTag = v5.i32[0];
  }

  else if (a2->mChannelLayoutTag)
  {
    mChannelLayoutTag = a2->mChannelLayoutTag;
  }

  else
  {
    mChannelLayoutTag = a2->mNumberChannelDescriptions;
  }

  if (*(this + 27) != mChannelLayoutTag)
  {
    return 4294956445;
  }

  v6 = 20 * a2->mNumberChannelDescriptions + 12;
  v7 = (v6 & 0x1C) == 0;
  v8 = v6 >> 5;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = v8 + 1;
  }

  std::vector<AudioChannelLayout>::vector[abi:ne200100](__dst, v9);
  memcpy(__dst[0], a2, 20 * a2->mNumberChannelDescriptions + 12);
  v10 = *(this + 15);
  if (v10)
  {
    *(this + 16) = v10;
    operator delete(v10);
  }

  result = 0;
  *(this + 120) = *__dst;
  *(this + 17) = v13;
  return result;
}

void ausdk::AUIOElement::GetChannelLayoutTags(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t ausdk::AUIOElement::AllocateBuffer(uint64_t this, int a2)
{
  v2 = *(this + 8);
  if (*(v2 + 18) == 1)
  {
    v3 = a2;
    v4 = this;
    if (!a2)
    {
      v3 = *(v2 + 336);
    }

    if (*(this + 168) == 1)
    {
      if ((*(*this + 72))(this))
      {
        v5 = v3;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 0;
    }

    if (*(v4 + 152))
    {
      (*(ausdk::BufferAllocator::instance(void)::global + 3))(&ausdk::BufferAllocator::instance(void)::global);
    }

    if ((*(v4 + 92) & 0x20) != 0)
    {
      v6 = *(v4 + 108);
    }

    else
    {
      v6 = 1;
    }

    this = (*(ausdk::BufferAllocator::instance(void)::global + 2))(&ausdk::BufferAllocator::instance(void)::global, v6, (*(v4 + 104) * v5), 0);
    *(v4 + 152) = this;
    *(v4 + 160) = v6;
    *(v4 + 164) = v5;
    *(v4 + 144) = 0;
  }

  return this;
}

uint64_t ausdk::AUIOElement::SetStreamFormat(ausdk::AUIOElement *this, const AudioStreamBasicDescription *a2)
{
  v2 = *&a2->mSampleRate;
  v3 = *&a2->mBytesPerPacket;
  *(this + 14) = *&a2->mBitsPerChannel;
  *(this + 5) = v2;
  *(this + 6) = v3;
  v4 = *(this + 15);
  v5 = *v4;
  if (*v4 == 0x10000)
  {
    v6 = vcnt_s8(v4[1]);
    v6.i16[0] = vaddlv_u8(v6);
    if (!v6.i32[0])
    {
      return 0;
    }
  }

  else if (v5)
  {
    if (!*v4)
    {
      return 0;
    }
  }

  else if (!v4[2])
  {
    return 0;
  }

  if (v5 == 0x10000)
  {
    v8 = vcnt_s8(v4[1]);
    v8.i16[0] = vaddlv_u8(v8);
    v7 = v8.i32[0];
  }

  else if (v5)
  {
    v7 = *v4;
  }

  else
  {
    v7 = v4[2];
  }

  if (*(this + 27) != v7)
  {
    (*(*this + 104))(this);
  }

  return 0;
}

void ausdk::AUElement::UseIndexedParameters(ausdk::AUElement *this, unsigned int a2)
{
  v3 = a2;
  v4 = *(this + 6);
  v5 = *(this + 7);
  v6 = (v5 - v4) >> 2;
  if (a2 > v6)
  {
    v7 = a2 - v6;
    v8 = *(this + 8);
    if (v7 > (v8 - v5) >> 2)
    {
      v9 = v8 - v4;
      if (v9 >> 1 > a2)
      {
        v3 = v9 >> 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v10 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v3;
      }

      if (!(v10 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    bzero(*(this + 7), 4 * v7);
    v11 = v5 + 4 * v7;
    goto LABEL_13;
  }

  if (a2 < v6)
  {
    v11 = v4 + 4 * a2;
LABEL_13:
    *(this + 7) = v11;
  }

  *(this + 40) = 1;
}

uint64_t ausdk::AUElement::SetScheduledEvent(ausdk::AUElement *this, unsigned int a2, const AudioUnitParameterEvent *a3, unsigned int a4, unsigned int a5, char a6)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3->eventType == kParameterEvent_Immediate)
  {
    ausdk::AUElement::SetParameterOrError(&v11, this, a3->eventValues.immediate.value, a2, a6);
    if (v12)
    {
      result = 0;
    }

    else
    {
      result = v11;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v9 = *(this + 1);
      v10 = (v9 + 440);
      if (*(v9 + 463) < 0)
      {
        v10 = *v10;
      }

      v11 = 136315138;
      v12 = v10;
      _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Warning: %s was passed a ramped parameter event but does not implement them. Ignoring.", &v11, 0xCu);
    }

    result = 4294967294;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void ausdk::AUElement::SetParameterOrError(ausdk::AUElement *this, uint64_t a2, float a3, unsigned int a4, char a5)
{
  v61 = *MEMORY[0x1E69E9840];
  if (*(a2 + 40) == 1)
  {
    v7 = *(a2 + 48);
    if (a4 < ((*(a2 + 56) - v7) >> 2))
    {
      v8 = (v7 + 4 * a4);
      goto LABEL_30;
    }
  }

  else
  {
    v10 = *(a2 + 16);
    v9 = *(a2 + 24);
    if (v9 != v10)
    {
      v11 = (v9 - v10) >> 3;
      v12 = *(a2 + 16);
      do
      {
        v13 = v11 >> 1;
        v14 = &v12[2 * (v11 >> 1)];
        v16 = *v14;
        v15 = v14 + 2;
        v11 += ~(v11 >> 1);
        if (v16 < a4)
        {
          v12 = v15;
        }

        else
        {
          v11 = v13;
        }
      }

      while (v11);
      if (v12 != v9)
      {
        if (*v12 != a4)
        {
          v12 = *(a2 + 24);
        }

        if (v9 != v12)
        {
          v8 = v12 + 1;
          goto LABEL_30;
        }
      }
    }

    v17 = *(a2 + 8);
    if (*(v17 + 17) != 1 || (a5 & 1) != 0)
    {
      v19 = v9 - v10;
      if (v9 == v10)
      {
        v21 = *(a2 + 24);
      }

      else
      {
        v20 = v19 >> 3;
        v21 = *(a2 + 16);
        do
        {
          v22 = v20 >> 1;
          v23 = &v21[8 * (v20 >> 1)];
          v25 = *v23;
          v24 = v23 + 8;
          v20 += ~(v20 >> 1);
          if (v25 < a4)
          {
            v21 = v24;
          }

          else
          {
            v20 = v22;
          }
        }

        while (v20);
      }

      if (v9 == v21 || *v21 != a4)
      {
        v27 = *(a2 + 32);
        if (v9 >= v27)
        {
          v31 = (v19 >> 3) + 1;
          if (v31 >> 61)
          {
            std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
          }

          v32 = v21 - v10;
          v33 = v27 - v10;
          v34 = (v27 - v10) >> 2;
          if (v34 > v31)
          {
            v31 = v34;
          }

          if (v33 >= 0x7FFFFFFFFFFFFFF8)
          {
            v35 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v35 = v31;
          }

          v36 = v32 >> 3;
          if (v35)
          {
            std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](v35);
          }

          v37 = 8 * v36;
          if (!v36)
          {
            if (v32 < 1)
            {
              if (v21 == v10)
              {
                v43 = 1;
              }

              else
              {
                v43 = v32 >> 2;
              }

              std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](v43);
            }

            v37 -= ((v32 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
          }

          *v37 = a4;
          *(v37 + 4) = a3;
          v44 = *(a2 + 24);
          v45 = v21;
          if (v44 != v21)
          {
            v46 = v21;
            v47 = (v37 + 8);
            do
            {
              v48 = (v46 + 4);
              v49 = *v46;
              v46 += 8;
              *v47 = v49;
              LODWORD(v48) = atomic_load(v48);
              v47[1] = v48;
              v47 += 2;
            }

            while (v46 != v44);
            v45 = *(a2 + 24);
          }

          v50 = v37 + 8 + v45 - v21;
          *(a2 + 24) = v21;
          v51 = *(a2 + 16);
          v52 = v37 + v51 - v21;
          if (v51 != v21)
          {
            v53 = (v37 + v51 - v21);
            do
            {
              v54 = (v51 + 4);
              v55 = *v51;
              v51 += 8;
              *v53 = v55;
              LODWORD(v54) = atomic_load(v54);
              v53[1] = v54;
              v53 += 2;
            }

            while (v51 != v21);
            v51 = *(a2 + 16);
          }

          *(a2 + 16) = v52;
          *(a2 + 24) = v50;
          *(a2 + 32) = 0;
          if (v51)
          {
            operator delete(v51);
          }
        }

        else
        {
          v28 = &v21[-v9];
          if (v21 == v9)
          {
            *v9 = a4;
            *(v9 + 4) = a3;
            *(a2 + 24) = v9 + 8;
          }

          else
          {
            if (v9 < 8)
            {
              v29 = *(a2 + 24);
            }

            else
            {
              v29 = v9 + 8;
              *v9 = *(v9 - 8);
              v30 = atomic_load((v9 - 4));
              *(v9 + 4) = v30;
            }

            *(a2 + 24) = v29;
            if (v9 != v21 + 8)
            {
              v38 = (v9 - 16);
              v39 = (v9 - 4);
              v40 = v28 + 8;
              do
              {
                v41 = v38 + 1;
                v42 = *v38;
                v38 -= 2;
                *(v39 - 1) = v42;
                LODWORD(v41) = atomic_load(v41);
                atomic_store(v41, v39);
                v39 -= 2;
                v40 += 8;
              }

              while (v40);
            }

            *v21 = a4;
            atomic_store(LODWORD(a3), v21 + 1);
          }
        }

        goto LABEL_31;
      }

      v8 = (v21 + 4);
LABEL_30:
      atomic_store(LODWORD(a3), v8);
LABEL_31:
      v18 = 1;
      goto LABEL_32;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v56 = (v17 + 440);
      if (*(v17 + 463) < 0)
      {
        v56 = *v56;
      }

      v57 = 136315394;
      v58 = v56;
      v59 = 1024;
      v60 = a4;
      _os_log_error_impl(&dword_1C91AE000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Warning: %s SetParameter for undefined param ID %u while initialized. Ignoring.", &v57, 0x12u);
    }
  }

  v18 = 0;
  *this = -10878;
LABEL_32:
  *(this + 4) = v18;
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1C92025EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<std::pair<unsigned int,ausdk::AtomicValue<float>>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t ausdk::AUElement::GetParameterList(uint64_t this, unsigned int *a2)
{
  if (*(this + 40) == 1)
  {
    v2 = *(this + 56) - *(this + 48);
    if (v2)
    {
      v3 = 0;
      v4 = (v2 - 4) >> 2;
      v5 = vdupq_n_s64(v4);
      v6 = (v4 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v7 = a2 + 2;
      do
      {
        v8 = vdupq_n_s64(v3);
        v9 = vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1C925F100)));
        if (vuzp1_s16(v9, *v5.i8).u8[0])
        {
          *(v7 - 2) = v3;
        }

        if (vuzp1_s16(v9, *&v5).i8[2])
        {
          *(v7 - 1) = v3 + 1;
        }

        if (vuzp1_s16(*&v5, vmovn_s64(vcgeq_u64(v5, vorrq_s8(v8, xmmword_1C925F0F0)))).i32[1])
        {
          *v7 = v3 + 2;
          v7[1] = v3 + 3;
        }

        v3 += 4;
        v7 += 4;
      }

      while (v6 != v3);
    }
  }

  else
  {
    v10 = *(this + 16);
    v11 = *(this + 24);
    while (v10 != v11)
    {
      v12 = *v10;
      v10 += 2;
      *a2++ = v12;
    }
  }

  return this;
}

void ausdk::AUElement::SaveState(unsigned int,__CFData *)::$_0::operator()(uint64_t a1, uint64_t a2, float a3)
{
  v4 = a2;
  if ((*(**(*a1 + 8) + 256))(*(*a1 + 8), **(a1 + 8), a2, *(a1 + 16)))
  {
    goto LABEL_2;
  }

  v8 = *(a1 + 16);
  if ((*(v8 + 96) & 0x10) != 0)
  {
    v9 = *(v8 + 72);
    if (v9)
    {
      CFRelease(v9);
      v8 = *(a1 + 16);
    }

    if (*(v8 + 80) == 26)
    {
      v10 = *(v8 + 56);
      if (v10)
      {
        CFRelease(v10);
        v8 = *(a1 + 16);
      }
    }
  }

  if ((*(v8 + 97) & 0xA0) == 0)
  {
LABEL_2:
    v6 = **(a1 + 24);
    *bytes = bswap32(v4);
    CFDataAppendBytes(v6, bytes, 4);
    v7 = **(a1 + 24);
    *v11 = bswap32(LODWORD(a3));
    CFDataAppendBytes(v7, v11, 4);
    ++**(a1 + 32);
  }
}

ausdk::AUIOElement *ausdk::AUIOElement::AUIOElement(ausdk::AUIOElement *this, ausdk::AUBase *a2)
{
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *this = &unk_1F48CC0B0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 14) = 0;
  std::vector<AudioChannelLayout>::vector[abi:ne200100](this + 15, 1);
  v3 = *(this + 15);
  *v3 = 0;
  *(v3 + 8) = 0;
  *(this + 36) = 0;
  *(this + 19) = 0;
  *(this + 20) = 0;
  *(this + 168) = 1;
  *(this + 10) = 0x40E5888000000000;
  *(this + 88) = xmmword_1C925F170;
  *(this + 104) = xmmword_1C925F180;
  return this;
}

uint64_t ausdk::AUScope::SetNumberOfElements(ausdk::AUScope *this, unsigned int a2)
{
  result = *(this + 5);
  if (result)
  {
    v4 = *(*result + 16);

    return v4();
  }

  else
  {
    v5 = a2;
    v6 = *(this + 2);
    v7 = *(this + 3);
    v8 = (this + 16);
    v9 = (v7 - v6) >> 3;
    if (v9 >= a2)
    {
      if (v9 > a2)
      {
        v24 = (v7 - 8);
        v25 = v7 - 8;
        do
        {
          result = *v24;
          *v24 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
            v6 = *v8;
          }

          *(this + 3) = v24;
          v26 = v25 - v6;
          v25 -= 8;
          --v24;
        }

        while (v5 < v26 >> 3);
      }
    }

    else
    {
      if (a2 > ((*(this + 4) - v6) >> 3))
      {
        v29 = this + 16;
        std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](a2);
      }

      if (v9 < a2)
      {
        do
        {
          v10 = *(this + 2);
          (*(**this + 416))(&v27);
          v12 = *(this + 3);
          v11 = *(this + 4);
          if (v12 >= v11)
          {
            v15 = *v8;
            v16 = v12 - *v8;
            v17 = v16 >> 3;
            v18 = (v16 >> 3) + 1;
            if (v18 >> 61)
            {
              std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
            }

            v19 = v11 - v15;
            if (v19 >> 2 > v18)
            {
              v18 = v19 >> 2;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF8)
            {
              v20 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            v29 = this + 16;
            if (v20)
            {
              std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](v20);
            }

            v21 = v27;
            v27 = 0;
            *(8 * v17) = v21;
            v14 = 8 * v17 + 8;
            memcpy(0, v15, v16);
            v22 = *(this + 2);
            *(this + 2) = 0;
            *(this + 3) = v14;
            v23 = *(this + 4);
            *(this + 4) = 0;
            v28[2] = v22;
            v28[3] = v23;
            v28[0] = v22;
            v28[1] = v22;
            std::__split_buffer<std::unique_ptr<ausdk::AUElement>>::~__split_buffer(v28);
          }

          else
          {
            v13 = v27;
            v27 = 0;
            *v12 = v13;
            v14 = (v12 + 1);
          }

          *(this + 3) = v14;
          result = v27;
          v27 = 0;
          if (result)
          {
            result = (*(*result + 8))(result);
            v14 = *(this + 3);
          }
        }

        while ((v14 - *v8) >> 3 < v5);
      }
    }
  }

  return result;
}

void sub_1C9202C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator<std::unique_ptr<ausdk::AUElement>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::unique_ptr<ausdk::AUElement>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    v5 = *--v2;
    v4 = v5;
    *(a1 + 16) = v2;
    *v2 = 0;
    if (v5)
    {
      (*(*v4 + 8))(v4);
      v2 = *(a1 + 16);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL ausdk::AUScope::HasElementWithName(ausdk::AUScope *this)
{
  for (i = 0; ; ++i)
  {
    v3 = *(this + 5);
    if (v3)
    {
      LODWORD(v4) = (*(*v3 + 24))(v3);
    }

    else
    {
      v4 = (*(this + 3) - *(this + 2)) >> 3;
    }

    if (i >= v4)
    {
      break;
    }

    v5 = ausdk::AUScope::GetElementOrError<ausdk::AUInputElement>(this, i);
    if (v6)
    {
      if (*(v5 + 72))
      {
        break;
      }
    }
  }

  return i < v4;
}

void ausdk::AUScope::RestoreElementNames(ausdk::AUScope *this, const __CFDictionary *a2, const __CFDictionary *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  v3 = *(a2 + 5);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  else
  {
    v4 = (*(a2 + 3) - *(a2 + 2)) >> 3;
  }

  Count = CFDictionaryGetCount(a3);
  if (Count >= 1)
  {
    if (Count < 0x2000000000000000)
    {
      operator new();
    }

    std::vector<unsigned char,std::pmr::polymorphic_allocator<unsigned char>>::__throw_length_error[abi:ne200100]();
  }

  CFDictionaryGetKeysAndValues(a3, 0, 0);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1C9203054(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  operator delete(v11);
  if (v10)
  {
    *(a10 + 8) = v10;
    operator delete(v10);
  }

  _Unwind_Resume(a1);
}

const unsigned __int8 *ausdk::AUScope::RestoreState(ausdk::AUScope *this, const unsigned __int8 *a2)
{
  v3 = ausdk::AUScope::GetElementOrError<ausdk::AUInputElement>(this, bswap32(*a2));
  if ((v4 & 1) == 0)
  {
    return &a2[8 * bswap32(*(a2 + 1)) + 8];
  }

  v5 = *(a2 + 1);
  v6 = (a2 + 8);
  if (v5)
  {
    v7 = v3;
    v8 = bswap32(v5);
    if (v8 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    do
    {
      v10 = *v6;
      v11 = v6[1];
      v6 += 2;
      ausdk::AUElement::SetParameterOrError(v13, v7, COERCE_FLOAT(bswap32(v11)), bswap32(v10), 0);
      --v9;
    }

    while (v9);
  }

  return v6;
}

double ausdk::ComponentBase::GetComponentDescription(ausdk::ComponentBase *this, OpaqueAudioComponentInstance *a2)
{
  memset(&outDesc, 0, sizeof(outDesc));
  Component = AudioComponentInstanceGetComponent(a2);
  if (Component && !AudioComponentGetDescription(Component, &outDesc))
  {
    result = *&outDesc.componentType;
    *this = outDesc;
  }

  else
  {
    *this = 0;
    *(this + 1) = 0;
    *(this + 4) = 0;
  }

  return result;
}

uint64_t ausdk::ComponentBase::AP_Open(uint64_t (**this)(char *, void *), void *a2, OpaqueAudioComponentInstance *a3)
{
  {
    MEMORY[0x1CCA847D0](&ausdk::ComponentBase::InitializationMutex(void)::global);
  }

  std::recursive_mutex::lock(&ausdk::ComponentBase::InitializationMutex(void)::global);
  v5 = this[4](this + 64, a2);
  (*(*v5 + 32))(v5);
  (*(*v5 + 16))(v5);
  std::recursive_mutex::unlock(&ausdk::ComponentBase::InitializationMutex(void)::global);
  return 0;
}

void sub_1C92032A4(void *a1, int a2)
{
  switch(a2)
  {
    case 5:
      v5 = __cxa_begin_catch(a1);
      break;
    case 4:
      __cxa_begin_catch(a1);
      __cxa_end_catch();
      v6 = -108;
      if (!v2)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    case 3:
      v6 = *__cxa_begin_catch(a1);
LABEL_4:
      __cxa_end_catch();
      if (!v2)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    default:
      v5 = __cxa_begin_catch(a1);
      if (a2 != 2)
      {
        __cxa_end_catch();
        v6 = -1;
        if (!v2)
        {
          goto LABEL_15;
        }

LABEL_8:
        if (v6)
        {
          MEMORY[0x1CCA84AE0](v2, 0x1080C4018D86D6ALL);
        }

LABEL_15:
        JUMPOUT(0x1C9203268);
      }

      break;
  }

  v6 = v5[4];
  goto LABEL_4;
}

uint64_t ausdk::ComponentBase::AP_Close(ausdk::ComponentBase *this, void *a2)
{
  v3 = this + 64;
  (*(*(this + 8) + 24))(this + 64, a2);
  (*(*v3 + 40))(v3);
  (*(this + 5))(v3);
  free(this);
  return 0;
}

uint64_t AudioDSPGraph::Boxes::Arithmetic::Unary::AbsBox::initialize(AudioDSPGraph::Boxes::Arithmetic::Unary::AbsBox *this)
{
  result = AudioDSPGraph::Box::initialize(this);
  v3 = *(this + 9);
  v4 = *(this + 10);
  v5 = v4 - v3;
  v6 = (v4 - v3) >> 5;
  if (v6 != 1)
  {
    v9 = *(this + 13) - *(this + 12);
    goto LABEL_10;
  }

  v7 = *(this + 12);
  v8 = *(this + 13);
  v9 = v8 - v7;
  if (((v8 - v7) & 0x1FFFFFFFE0) != 0x20)
  {
    v6 = 1;
LABEL_10:
    caulk::make_string("There must be one input and one output, instead of %u and %u.", v20, v6, v9 >> 5);
    AudioDSPGraph::ThrowException(1701602593, v20, off_1E8334788);
  }

  if (v4 == v3)
  {
    v12 = (this + 40);
    if (*(this + 63) < 0)
    {
      v12 = *v12;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &v21, v12, v5 >> 5, 0);
    AudioDSPGraph::ThrowException(1919837985, &v21, off_1E8337C60);
  }

  if (v8 == v7)
  {
    v13 = v9 >> 5;
    v14 = (this + 40);
    if (*(this + 63) < 0)
    {
      v14 = *v14;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &v21, v14, v13, 0);
    AudioDSPGraph::ThrowException(1919837985, &v21, off_1E8337C78);
  }

  v10 = *(*(v7 + 16) + 120);
  if (*(*(*(v3 + 16) + 120) + 28) != *(v10 + 28))
  {
    v15 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v16 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string("The input and output must have the same channel count, but have %u and %u.", v19, v15, *(*(*(v16 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v19, off_1E83347A0);
  }

  v11 = *(v10 + 8);
  if (v11 != 1819304813)
  {
    caulk::string_from_4cc(&v21, v11);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v21;
    }

    else
    {
      v17 = v21.__r_.__value_.__r.__words[0];
    }

    caulk::make_string("The output must have 'lpcm' format, but has %s instead.", v18, v17);
    AudioDSPGraph::ThrowException(1667788321, v18, off_1E83347B8);
  }

  return result;
}

void sub_1C9203670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v24 - 17) < 0)
  {
    operator delete(*(v24 - 40));
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::in(AudioDSPGraph::Box *this, unint64_t a2)
{
  v2 = *(this + 9);
  v3 = (*(this + 10) - v2) >> 5;
  if (v3 <= a2)
  {
    v5 = (this + 40);
    if (*(this + 63) < 0)
    {
      v5 = *v5;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", v6, v5, v3, a2);
    AudioDSPGraph::ThrowException(1919837985, v6, off_1E8337C60);
  }

  return v2 + 32 * a2;
}

void sub_1C9203750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Box::out(AudioDSPGraph::Box *this, unint64_t a2)
{
  v2 = *(this + 12);
  v3 = (*(this + 13) - v2) >> 5;
  if (v3 <= a2)
  {
    v5 = (this + 40);
    if (*(this + 63) < 0)
    {
      v5 = *v5;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", v6, v5, v3, a2);
    AudioDSPGraph::ThrowException(1919837985, v6, off_1E8337C78);
  }

  return v2 + 32 * a2;
}

void sub_1C92037EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 AudioDSPGraph::Boxes::Arithmetic::Unary::AbsBox::process(AudioDSPGraph::Boxes::Arithmetic::Unary::AbsBox *this, vDSP_Length __N)
{
  v3 = *(this + 9);
  if (*(this + 10) == v3)
  {
    v33 = (this + 40);
    if (*(this + 63) < 0)
    {
      v33 = *v33;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &__A, v33, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &__A, off_1E8337C60);
  }

  v4 = *(this + 12);
  if (*(this + 13) == v4)
  {
    v34 = (this + 40);
    if (*(this + 63) < 0)
    {
      v34 = *v34;
    }

    caulk::make_string("Box::out inIndex out of range! box %s has %zu outputs but input %zu was requested", &__A, v34, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &__A, off_1E8337C78);
  }

  v5 = *(v3 + 16);
  v6 = *(*(v5 + 56) + 80);
  v7 = *(*(*(v4 + 16) + 56) + 80);
  v8 = *v6;
  if (*v6 != *v7)
  {
    v35 = *(*(*(AudioDSPGraph::Box::in(this, 0) + 16) + 120) + 28);
    v36 = AudioDSPGraph::Box::out(this, 0);
    caulk::make_string("The input and output must have the same channel count, but have %u and %u.", v40, v35, *(*(*(v36 + 16) + 120) + 28));
    AudioDSPGraph::ThrowException(1667788321, v40, off_1E83347D0);
  }

  v9 = *(*(v5 + 120) + 8);
  v10 = v6[3];
  v11 = __N;
  v12 = 2;
  if (v9 == 1718773105)
  {
    v12 = 3;
  }

  v13 = __N << v12;
  if (v13 > v10)
  {
    caulk::make_string("The buffer passed for input 0 should be at least %u bytes, but is %u.", v39, v13, v10);
    AudioDSPGraph::ThrowException(1718449215, v39, off_1E83347E8);
  }

  v14 = v7[3];
  v15 = 4 * __N;
  if (4 * __N > v14)
  {
    caulk::make_string("The buffer passed for output 0 should be at least %u bytes, but is %u.", v38, 4 * __N, v14);
    AudioDSPGraph::ThrowException(1718449215, v38, off_1E8334800);
  }

  if (v9 == 1718773105)
  {
    if (v8)
    {
      v16 = 0;
      v17 = (v7 + 4);
      v18 = (v6 + 4);
      do
      {
        v19 = *v18;
        v18 += 2;
        __A.realp = v19;
        __A.imagp = &v19[v11];
        vDSP_zvabs(&__A, 1, *v17, 1, v11);
        *(v17 - 1) = v15;
        ++v16;
        v17 += 2;
      }

      while (v16 < *v7);
    }
  }

  else if (v8)
  {
    v21 = 0;
    v22 = (v7 + 4);
    v23 = (v6 + 4);
    do
    {
      v24 = *v23;
      v23 += 2;
      vDSP_vabs(v24, 1, *v22, 1, v11);
      *(v22 - 1) = v15;
      ++v21;
      v22 += 2;
    }

    while (v21 < *v7);
  }

  v25 = *(this + 9);
  if (*(this + 10) == v25)
  {
    v37 = (this + 40);
    if (*(this + 63) < 0)
    {
      v37 = *v37;
    }

    caulk::make_string("Box::in inIndex out of range! box %s has %zu inputs but input %zu was requested", &__A, v37, 0, 0);
    AudioDSPGraph::ThrowException(1919837985, &__A, off_1E8337C60);
  }

  v26 = *(this + 12);
  v27 = *(this + 13);
  if (v26 != v27)
  {
    v28 = *(*(v25 + 16) + 56);
    v29 = *(v28 + 72);
    do
    {
      v30 = *(*(v26 + 16) + 56);
      result = *(v28 + 8);
      v31 = *(v28 + 24);
      v32 = *(v28 + 40);
      *(v30 + 56) = *(v28 + 56);
      *(v30 + 40) = v32;
      *(v30 + 24) = v31;
      *(v30 + 8) = result;
      *(v30 + 72) = v29;
      v26 += 32;
    }

    while (v26 != v27);
  }

  return result;
}

void sub_1C9203B64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v30 - 65) < 0)
  {
    operator delete(*(v30 - 88));
  }

  _Unwind_Resume(exception_object);
}

double AudioDSPGraph::Boxes::Arithmetic::Unary::AbsBox::desc@<D0>(uint64_t a1@<X8>)
{
  result = 1.22205774e161;
  *a1 = xmmword_1C925F190;
  *(a1 + 16) = 0;
  return result;
}

void AudioDSPGraph::Boxes::Arithmetic::Unary::AbsBox::~AbsBox(AudioDSPGraph::Boxes::Arithmetic::Unary::AbsBox *this)
{
  AudioDSPGraph::Box::~Box(this);

  JUMPOUT(0x1CCA84AE0);
}

void AudioDSPGraph::Analyzer::getFormatFromUnit(AudioDSPGraph::Analyzer *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v5, "Analyzer::getFormatFromUnit ");
  v2 = (*(*this + 16))(this);
  v3 = strlen(v2);
  v4 = std::string::append(&v5, v2, v3);
  v6 = *v4;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  AudioDSPGraph::ThrowException(1869640255, &v6, off_1E8334818);
}

void sub_1C9203D68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::Analyzer::print(uint64_t result, void *a2, int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    v4 = a4;
    v6 = result;
    (*(*result + 32))(result, a2, a4, 1);
    v7 = *(v6 + 8);
    AudioDSPGraph::printi(a2, v4 + 4, "analysis %p\n");
  }

  return result;
}

uint64_t AudioDSPGraph::AUAnalyzer::getFormatFromUnit@<X0>(AudioUnit *this@<X0>, AudioUnitScope inScope@<W1>, AudioUnitElement inElement@<W2>, void *a4@<X8>)
{
  a4[4] = 0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  ioDataSize = 40;
  result = AudioUnitGetProperty(this[13], 8u, inScope, inElement, a4, &ioDataSize);
  if (result)
  {
    v8 = result;
    std::string::basic_string[abi:ne200100]<0>(&v9, "AUAnalyzer::getFormatFromUnit ");
    v6 = (*(*this + 2))(this);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v10, &v9, v6);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v11, &v10, " ");
    v7 = (this + 7);
    if (*(this + 79) < 0)
    {
      v7 = *v7;
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v12, &v11, v7);
    AudioDSPGraph::ThrowException(v8, &v12, off_1E8334920);
  }

  return result;
}

void sub_1C9203F5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (*(v27 - 25) < 0)
  {
    operator delete(*(v27 - 48));
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(std::string *a1, std::string *a2, char *__s)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a1 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

AudioDSPGraph *AudioDSPGraph::AUAnalyzer::setFormatOnUnit(AudioUnit *this, const AudioStreamBasicDescription *inData, AudioUnitScope a3, AudioUnitElement a4)
{
  v20 = *MEMORY[0x1E69E9840];
  result = AudioUnitSetProperty(this[13], 8u, a3, a4, inData, 0x28u);
  if (result)
  {
    v13 = result;
    Log = AudioDSPGraph::getLog(result);
    if (os_log_type_enabled(Log, OS_LOG_TYPE_DEBUG))
    {
      v9 = *&inData->mBytesPerPacket;
      *buf = *&inData->mSampleRate;
      v18 = v9;
      v19 = *&inData->mBitsPerChannel;
      CA::StreamDescription::AsString(&__p, buf, *buf, *&v9);
      v10 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_debug_impl(&dword_1C91AE000, Log, OS_LOG_TYPE_DEBUG, "AudioStreamBasicDescription: %s", buf, 0xCu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v14, "AUAnalyzer::setFormatOnUnit ");
    v11 = (*(*this + 2))(this);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, &v14, v11);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, &__p, " ");
    v12 = (this + 7);
    if (*(this + 79) < 0)
    {
      v12 = *v12;
    }

    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v15, buf, v12);
    AudioDSPGraph::ThrowException(v13, &v15, off_1E8334908);
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C92041B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::getLog(AudioDSPGraph *this)
{
  v1 = &unk_1EC395000;
  {
    v1 = &unk_1EC395000;
    if (v3)
    {
      AudioDSPGraph::getLog(void)::gLog = os_log_create("com.apple.coreaudio", "AudioDSPGraph");
      v1 = &unk_1EC395000;
    }
  }

  return v1[171];
}

void AudioDSPGraph::AUAnalyzer::open(AudioDSPGraph::AUAnalyzer *this)
{
  v1 = (this + 104);
  if (*(this + 13))
  {
    return;
  }

  Next = AudioComponentFindNext(0, (this + 32));
  if (!Next)
  {
    std::string::basic_string[abi:ne200100]<0>(v23, "AudioComponentFindNext");
    AudioDSPGraph::ThrowException(1633906209, v23, off_1E8334890);
  }

  v4 = AudioComponentInstanceNew(Next, v1);
  if (v4)
  {
    v14 = v4;
    std::string::basic_string[abi:ne200100]<0>(v22, "AudioComponentInstanceNew");
    AudioDSPGraph::ThrowException(v14, v22, off_1E83348A8);
  }

  if (!*v1)
  {
    std::string::basic_string[abi:ne200100]<0>(v21, "AudioComponentInstanceNew");
    AudioDSPGraph::ThrowException(1633906209, v21, off_1E83348C0);
  }

  v5 = (this + 56);
  if ((*(this + 79) & 0x80000000) == 0)
  {
    v6 = strlen(this + 56);
    v7 = this + 56;
    goto LABEL_9;
  }

  v7 = *v5;
  v8 = strlen(*v5);
  if (*v5)
  {
    v6 = v8;
LABEL_9:
    v9 = CFStringCreateWithBytes(0, v7, v6, 0x8000100u, 0);
    cf = v9;
    if (!v9)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
    }

    goto LABEL_10;
  }

  v9 = 0;
  cf = 0;
LABEL_10:
  v19 = v9;
  (*(*this + 112))(this, 54, 0, 0, 8, &v19);
  if (*v1)
  {
    (*(*this + 136))(this, *(*(this + 1) + 120), 2, 0);
    (*(*this + 136))(this, *(*(this + 1) + 120), 1, 0);
    v10 = *(this + 2);
    if (!v10)
    {
      std::string::basic_string[abi:ne200100]<0>(v17, "DSPGraph::AUAnalyzer Box is null");
      AudioDSPGraph::ThrowException(0, v17, off_1E83348D8);
    }

    v11 = *(v10 + 24);
    v12 = *(v11 + 268);
    if (v12 == 1)
    {
      v12 = *(v11 + 272);
    }

    inData = v12;
    AudioUnitSetProperty(*v1, 0xEu, 0, 0, &inData, 4u);
    v13 = AudioUnitInitialize(*v1);
    if (v13)
    {
      if (*(this + 79) < 0)
      {
        v5 = *v5;
      }

      caulk::make_string("AudioUnitInitialize %s", v16, v5);
      AudioDSPGraph::ThrowException(v13, v16, off_1E83348F0);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1C920457C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, const void *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  applesauce::CF::StringRef::~StringRef(&a25);
  _Unwind_Resume(a1);
}

double AudioDSPGraph::AUAnalyzer::getParameterList@<D0>(AudioDSPGraph::AUAnalyzer *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = (*(*this + 104))(this, 3, a2, 0);
  if ((v8 & 1) != 0 && (v9 = v6, v6 > 3))
  {
    std::vector<unsigned int>::vector[abi:ne200100](__p, v6 >> 2);
    v10 = v9 & 0xFFFFFFFC;
    if ((*(*this + 96))(this, 3, a2, 0, &v10, __p[0]))
    {
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }

    else
    {
      result = *__p;
      *a3 = *__p;
      a3[2] = v12;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_1C9204790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t AudioDSPGraph::AUAnalyzer::getPropertyInfo(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outDataSize = 0;
  outWritable = 0;
  PropertyInfo = AudioUnitGetPropertyInfo(this[13], a2, a3, a4, &outDataSize, &outWritable);
  v5 = (outWritable != 0) << 32;
  if (PropertyInfo)
  {
    v6 = PropertyInfo;
  }

  else
  {
    v6 = outDataSize;
  }

  if (PropertyInfo)
  {
    v5 = 0;
  }

  return v5 | v6;
}

uint64_t AudioDSPGraph::AUAnalyzer::getProperty(AudioUnit *this, AudioUnitPropertyID a2, AudioUnitScope a3, AudioUnitElement a4, unsigned int *a5, void *outData)
{
  ioDataSize = *a5;
  result = AudioUnitGetProperty(this[13], a2, a3, a4, outData, &ioDataSize);
  *a5 = ioDataSize;
  return result;
}

uint64_t AudioDSPGraph::AUAnalyzer::setParameter(AudioUnit *this, AudioUnitParameterID a2, AudioUnitScope a3, AudioUnitElement a4, AudioUnitParameterValue a5, UInt32 a6)
{
  result = AudioUnitSetParameter(this[13], a2, a3, a4, a5, a6);
  if (result)
  {
    v11 = result;
    std::string::basic_string[abi:ne200100]<0>(v13, "AudioUnitSetParameter");
    AudioDSPGraph::ThrowException(v11, v13, off_1E8334830);
  }

  if (*(*(*(*(this[1] + 1) + 8) + 16) + 926) == 1)
  {
    inEvent.mEventType = kAudioUnitEvent_ParameterValueChange;
    inEvent.mArgument.mParameter.mAudioUnit = this[13];
    *&inEvent.mArgument.mProperty.mPropertyID = __PAIR64__(a3, a2);
    inEvent.mArgument.mParameter.mElement = a4;
    return AUEventListenerNotify(0, 0, &inEvent);
  }

  return result;
}

void sub_1C9204920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::AUAnalyzer::getParameterInfo@<X0>(AudioDSPGraph::AUAnalyzer *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = *MEMORY[0x1E69E9840];
  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v11 = 104;
  result = (*(*this + 96))(this, 4, a2, a3, &v11, &v12);
  if (result)
  {
    v6 = 0;
    *a4 = result;
  }

  else
  {
    v7 = v17;
    *(a4 + 64) = v16;
    *(a4 + 80) = v7;
    *(a4 + 96) = v18;
    v8 = v13;
    *a4 = v12;
    *(a4 + 16) = v8;
    v9 = v15;
    v6 = 1;
    *(a4 + 32) = v14;
    *(a4 + 48) = v9;
  }

  *(a4 + 104) = v6;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C9204A1C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

AudioUnitParameterValue AudioDSPGraph::AUAnalyzer::getParameter(AudioUnit *this, AudioUnitParameterID a2, AudioUnitScope a3, AudioUnitElement a4)
{
  outValue = 0.0;
  Parameter = AudioUnitGetParameter(this[13], a2, a3, a4, &outValue);
  if (Parameter)
  {
    v6 = Parameter;
    std::string::basic_string[abi:ne200100]<0>(v7, "AudioUnitGetParameter");
    AudioDSPGraph::ThrowException(v6, v7, off_1E8334848);
  }

  return outValue;
}

void sub_1C9204A90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::AUAnalyzer::processBuffer(AudioDSPGraph::AUAnalyzer *this, AudioDSPGraph::Buffer *a2, UInt32 inNumberFrames)
{
  *(a2 + 1) = *(*(*(*(*(*(this + 1) + 32) + 16) + 8) + 24) + 256);
  result = AudioUnitProcess(*(this + 13), a2 + 18, (a2 + 8), inNumberFrames, *(a2 + 10));
  if (result)
  {
    v4 = result;
    std::string::basic_string[abi:ne200100]<0>(v5, "AudioUnitProcess");
    AudioDSPGraph::ThrowException(v4, v5, off_1E8334860);
  }

  return result;
}

void sub_1C9204B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AudioDSPGraph::AUAnalyzer::resetAnalysis(AudioUnit *this)
{
  result = AudioUnitReset(this[13], 0, 0);
  if (result)
  {
    v2 = result;
    std::string::basic_string[abi:ne200100]<0>(v3, "AudioUnitReset");
    AudioDSPGraph::ThrowException(v2, v3, off_1E8334878);
  }

  return result;
}

void sub_1C9204BB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void AudioDSPGraph::AUAnalyzer::~AUAnalyzer(void **this)
{
  *this = &unk_1F48CC1E8;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CC1E8;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }
}

double AudioDSPGraph::TestAnalyzer::getFormatFromUnit@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void AudioDSPGraph::TestAnalyzer::getParameterList(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

double AudioDSPGraph::TestAnalyzer::getParameterInfo@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 96) = 0;
  result = 0.0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 104) = 1;
  return result;
}

void AudioDSPGraph::TestAnalyzer::~TestAnalyzer(void **this)
{
  *this = &unk_1F48CC1E8;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  JUMPOUT(0x1CCA84AE0);
}

{
  *this = &unk_1F48CC1E8;
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }
}

uint64_t AudioDSPGraph::AnalyzerBuilder::print(uint64_t result, void *a2, uint64_t a3, int a4)
{
  v4 = *(result + 24);
  if (v4)
  {
    v14 = *(MEMORY[0x1E69E54D8] + 72);
    v15 = *(MEMORY[0x1E69E54D8] + 64);
    v21 = *(MEMORY[0x1E69E54D8] + 24);
    v19 = *(MEMORY[0x1E69E54D8] + 32);
    v20 = *(MEMORY[0x1E69E54D8] + 16);
    v11 = *MEMORY[0x1E69E54D8];
    v17 = *(MEMORY[0x1E69E54D8] + 8);
    v18 = *(MEMORY[0x1E69E54D8] + 40);
    v16 = *(MEMORY[0x1E69E54D8] + 48);
    v13 = MEMORY[0x1E69E5560] + 104;
    v12 = MEMORY[0x1E69E5560] + 64;
    v38 = 0;
    v37 = MEMORY[0x1E69E5560] + 104;
    v27 = MEMORY[0x1E69E5560] + 64;
    v26[0] = v20;
    *(v26 + *(v20 - 24)) = v21;
    v26[1] = 0;
    v5 = (v26 + *(v26[0] - 24));
    std::ios_base::init(v5, &v28);
    v6 = MEMORY[0x1E69E5560] + 24;
    v5[1].__vftable = 0;
    v5[1].__fmtflags_ = -1;
    v27 = v19;
    *(&v27 + *(v19 - 24)) = v18;
    v26[0] = v17;
    *(v26 + *(v17 - 24)) = v16;
    v37 = v13;
    v26[0] = v6;
    v27 = v12;
    v28 = MEMORY[0x1E69E5538] + 16;
    MEMORY[0x1CCA848F0](&v29);
    v33 = 0u;
    v32 = 0u;
    memset(&__p, 0, sizeof(__p));
    v36 = 24;
    p_p = &__p;
    v28 = MEMORY[0x1E69E5548] + 16;
    v30 = &__p;
    v31 = &__p;
    *&v32 = &__p;
    std::string::resize(&__p, 0x16uLL, 0);
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    *(&v32 + 1) = &__p;
    *&v33 = &__p;
    *(&v33 + 1) = &__p + size;
    AudioDSPGraph::print4cc(&v27, *(v4 + 52));
    if ((v36 & 0x10) != 0)
    {
      v9 = p_p;
      if (p_p < v33)
      {
        p_p = v33;
        v9 = v33;
      }

      v10 = *(&v32 + 1);
    }

    else
    {
      if ((v36 & 8) == 0)
      {
        v8 = 0;
        v25 = 0;
        goto LABEL_17;
      }

      v10 = v30;
      v9 = v32;
    }

    v8 = v9 - v10;
    if ((v9 - v10) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    v25 = v9 - v10;
    if (v8)
    {
      memmove(&__dst, v10, v8);
    }

LABEL_17:
    *(&__dst + v8) = 0;
    AudioDSPGraph::printi(a2, a4 + 4, "%s\n");
  }

  return result;
}