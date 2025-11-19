@interface DSP_HostCallbacks_ADM
- (void)clearCallbacks;
- (void)notifyClientsOfCustomPropertyChange:(AudioObjectPropertyAddress)a3;
- (void)setHostCallbacks:(HostCallbacks *)a3;
@end

@implementation DSP_HostCallbacks_ADM

- (void)setHostCallbacks:(HostCallbacks *)a3
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::__value_func[abi:ne200100](v5, a3);
  std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::swap[abi:ne200100](v5, self->_hostCallbacks.propertyChangeCallback_.__f_.__buf_.__data);
  std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientsOfCustomPropertyChange:(AudioObjectPropertyAddress)a3
{
  mElement = a3.mElement;
  v4 = *&a3.mSelector;
  v13 = *MEMORY[0x1E69E9840];
  if ([(DSP_HostCallbacks_ADM *)self owner])
  {
    v6 = [(DSP_HostCallbacks_ADM *)self mxCallbacks];
    std::__shared_mutex_base::lock_shared(v6);
    if ([(DSP_HostCallbacks_ADM *)self owner])
    {
      [(DSP_HostCallbacks_ADM *)self hostCallbacks];
      v7 = v12;
      std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](v11);
      if (v7)
      {
        NSLog(&cfstr_AhalDspNotifie.isa);
        [(DSP_HostCallbacks_ADM *)self hostCallbacks];
        v9 = v4;
        v10 = mElement;
        if (!v12)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v12 + 48))(v12, &v9);
        std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](v11);
      }
    }

    std::__shared_mutex_base::unlock_shared(v6);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)clearCallbacks
{
  v8 = *MEMORY[0x1E69E9840];
  if ([(DSP_HostCallbacks_ADM *)self owner])
  {
    v4 = [(DSP_HostCallbacks_ADM *)self mxCallbacks];
    std::__shared_mutex_base::lock(v4);
    v7 = 0;
    std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::__value_func[abi:ne200100](v5, v6);
    [(DSP_HostCallbacks_ADM *)self setHostCallbacks:v5];
    std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](v5);
    [(DSP_HostCallbacks_ADM *)self setOwner:0];
    std::__function::__value_func<void ()(AudioObjectPropertyAddress)>::~__value_func[abi:ne200100](v6);
    std::__shared_mutex_base::unlock(v4);
  }

  v3 = *MEMORY[0x1E69E9840];
}

@end