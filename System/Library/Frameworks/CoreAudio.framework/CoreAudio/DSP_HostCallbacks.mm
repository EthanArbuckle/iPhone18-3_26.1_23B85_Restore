@interface DSP_HostCallbacks
- (id).cxx_construct;
- (void)notifyClientsOfCustomPropertyChange:(AudioObjectPropertyAddress)change;
- (void)setMutationRequestListener:(function<void (const DSP_Host_Types::MutationRequestConfiguration)&;
- (void)setPropertyChangeListener:(function<void (const AudioObjectPropertyAddress)&;
@end

@implementation DSP_HostCallbacks

- (id).cxx_construct
{
  *(self + 5) = 0;
  *(self + 9) = 0;
  return self;
}

- (void)setPropertyChangeListener:(function<void (const AudioObjectPropertyAddress)&
{
  v5[4] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::__value_func[abi:ne200100](v5, a3);
  std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::swap[abi:ne200100](v5, self->_propertyChangeListener.__f_.__buf_.__data);
  std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](v5);
  v4 = *MEMORY[0x1E69E9840];
}

- (void)setMutationRequestListener:(function<void (const DSP_Host_Types::MutationRequestConfiguration)&
{
  v10[3] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(DSP_Host_Types::MutationRequestConfiguration const&)>::__value_func[abi:ne200100](v8, a3);
  p_mutationRequestListener = &self->_mutationRequestListener;
  if (&self->_mutationRequestListener != v8)
  {
    v5 = v9;
    f = self->_mutationRequestListener.__f_.__f_;
    if (v9 == v8)
    {
      if (f == p_mutationRequestListener)
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = 0;
        (*(*self->_mutationRequestListener.__f_.__f_ + 24))(self->_mutationRequestListener.__f_.__f_, v8);
        (*(*self->_mutationRequestListener.__f_.__f_ + 32))(self->_mutationRequestListener.__f_.__f_);
        self->_mutationRequestListener.__f_.__f_ = 0;
        v9 = v8;
        (*(v10[0] + 24))(v10, &self->_mutationRequestListener);
        (*(v10[0] + 32))(v10);
      }

      else
      {
        (*(*v9 + 24))();
        (*(*v9 + 32))(v9);
        v9 = self->_mutationRequestListener.__f_.__f_;
      }

      self->_mutationRequestListener.__f_.__f_ = p_mutationRequestListener;
    }

    else if (f == p_mutationRequestListener)
    {
      (*(*f->__f_.__buf_.__data + 24))(self->_mutationRequestListener.__f_.__f_, v8);
      (*(*self->_mutationRequestListener.__f_.__f_ + 32))(self->_mutationRequestListener.__f_.__f_);
      self->_mutationRequestListener.__f_.__f_ = v9;
      v9 = v8;
    }

    else
    {
      v9 = self->_mutationRequestListener.__f_.__f_;
      self->_mutationRequestListener.__f_.__f_ = v5;
    }
  }

  std::__function::__value_func<void ()(DSP_Host_Types::MutationRequestConfiguration const&)>::~__value_func[abi:ne200100](v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientsOfCustomPropertyChange:(AudioObjectPropertyAddress)change
{
  v9 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if ([(DSP_HostCallbacks *)self owner])
  {
    [(DSP_HostCallbacks *)self propertyChangeListener];
    v4 = v8;
    std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](v7);
    if (v4)
    {
      [(DSP_HostCallbacks *)self propertyChangeListener];
      if (!v8)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v8 + 48))(v8, &changeCopy);
      std::__function::__value_func<void ()(AudioObjectPropertyAddress const&)>::~__value_func[abi:ne200100](v7);
    }
  }

  v5 = *MEMORY[0x1E69E9840];
}

@end