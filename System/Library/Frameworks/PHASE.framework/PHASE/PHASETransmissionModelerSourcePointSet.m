@interface PHASETransmissionModelerSourcePointSet
- (PHASETransmissionModelerSourcePointSet)init;
- (PHASETransmissionModelerSourcePointSet)initWithRenderSourceView:(const void *)a3;
- (__n128)positionAndAttenuationAtIndex:(unint64_t)a3;
- (__n128)positionAtIndex:(unint64_t)a3;
- (float)attenuationAtIndex:(int64_t)a3;
- (id).cxx_construct;
@end

@implementation PHASETransmissionModelerSourcePointSet

- (PHASETransmissionModelerSourcePointSet)init
{
  v3.receiver = self;
  v3.super_class = PHASETransmissionModelerSourcePointSet;
  result = [(PHASETransmissionModelerSourcePointSet *)&v3 init];
  result->_size = 0;
  return result;
}

- (PHASETransmissionModelerSourcePointSet)initWithRenderSourceView:(const void *)a3
{
  v27.receiver = self;
  v27.super_class = PHASETransmissionModelerSourcePointSet;
  v4 = [(PHASETransmissionModelerSourcePointSet *)&v27 init];
  v5 = v4;
  v6 = *(a3 + 2);
  v7 = *(v4 + 1);
  v8 = *(v4 + 2);
  v9 = (v8 - v7) >> 4;
  if (v6 <= v9)
  {
    if (v6 >= v9)
    {
      goto LABEL_15;
    }

    v8 = v7 + 16 * v6;
  }

  else
  {
    v10 = v6 - v9;
    v11 = *(v4 + 3);
    if (v10 > (v11 - v8) >> 4)
    {
      if (!(v6 >> 60))
      {
        v12 = v11 - v7;
        if (v12 >> 3 > v6)
        {
          v6 = v12 >> 3;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF0)
        {
          v13 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v6;
        }

        if (!(v13 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(v4 + 2), 16 * v10);
    v8 += 16 * v10;
  }

  *&v5->_anon_8[8] = v8;
LABEL_15:
  v14 = v8 - *v5->_anon_8;
  v5->_size = v14 >> 4;
  if (v14)
  {
    v15 = 0;
    v16 = 0;
    do
    {
      v17 = *(a3 + 4);
      v18 = *(v17 + (v16 << 7) + 124);
      if (v18)
      {
        v19 = (v17 + v15);
        v20 = 0.0;
        v21 = v18;
        do
        {
          v22 = *v19++;
          v20 = v20 + v22;
          --v21;
        }

        while (v21);
      }

      else
      {
        v20 = 0.0;
      }

      v23 = (1.0 / v18) * v20;
      v24 = *(a3 + 3) + 12 * v16;
      *&v25 = *v24;
      DWORD2(v25) = *(v24 + 8);
      *(&v25 + 3) = v23;
      *(*v5->_anon_8 + 16 * v16++) = v25;
      v15 += 128;
    }

    while (v16 < v5->_size);
  }

  return v5;
}

- (__n128)positionAtIndex:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x8000000000000000) != 0 || (v3 = *(a1 + 1), a3 >= (*(a1 + 2) - v3) >> 4))
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASETransmissionModelerView.mm";
      v9 = 1024;
      v10 = 79;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _points.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _points.size() is false.");
  }

  return *(v3 + 16 * a3);
}

- (float)attenuationAtIndex:(int64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 < 0 || (v3 = *self->_anon_8, a3 >= ((*&self->_anon_8[8] - v3) >> 4)))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASETransmissionModelerView.mm";
      v9 = 1024;
      v10 = 86;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _points.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _points.size() is false.");
  }

  return *(v3 + 16 * a3 + 12);
}

- (__n128)positionAndAttenuationAtIndex:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x8000000000000000) != 0 || (v3 = *(a1 + 1), a3 >= (*(a1 + 2) - v3) >> 4))
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 224);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASETransmissionModelerView.mm";
      v9 = 1024;
      v10 = 92;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _points.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _points.size() is false.");
  }

  return *(v3 + 16 * a3);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end