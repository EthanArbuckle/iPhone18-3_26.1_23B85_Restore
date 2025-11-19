@interface PHASEVoxelSet3D
- (PHASEVoxelSet3D)init;
- (PHASEVoxelSet3D)initWithPoints:(void *)a3 count:(unint64_t)a4;
- (double)voxelAtIndex:(unint64_t)a3;
- (id).cxx_construct;
@end

@implementation PHASEVoxelSet3D

- (PHASEVoxelSet3D)init
{
  v3.receiver = self;
  v3.super_class = PHASEVoxelSet3D;
  result = [(PHASEVoxelSet3D *)&v3 init];
  result->_size = 0;
  return result;
}

- (PHASEVoxelSet3D)initWithPoints:(void *)a3 count:(unint64_t)a4
{
  v21.receiver = self;
  v21.super_class = PHASEVoxelSet3D;
  v6 = [(PHASEVoxelSet3D *)&v21 init];
  v8 = v6;
  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  v11 = (v10 - v9) >> 3;
  if (a4 <= v11)
  {
    if (a4 >= v11)
    {
      goto LABEL_15;
    }

    v10 = v9 + 8 * a4;
  }

  else
  {
    v12 = a4 - v11;
    v13 = *(v6 + 3);
    if (v12 > (v13 - v10) >> 3)
    {
      if (!(a4 >> 61))
      {
        v14 = v13 - v9;
        v15 = v14 >> 2;
        if (v14 >> 2 <= a4)
        {
          v15 = a4;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v15;
        }

        if (!(v16 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    bzero(*(v6 + 2), 8 * v12);
    v10 += 8 * v12;
  }

  *&v8->_anon_8[8] = v10;
LABEL_15:
  v17 = v10 - *v8->_anon_8;
  v8->_size = v17 >> 3;
  if (v17)
  {
    v18 = 0;
    v19 = a3 + 4;
    do
    {
      LODWORD(v7) = *(v19 - 1);
      WORD2(v7) = *v19;
      *(*v8->_anon_8 + 8 * v18++) = v7;
      v19 += 3;
    }

    while (v18 < v8->_size);
  }

  return v8;
}

- (double)voxelAtIndex:(unint64_t)a3
{
  v11 = *MEMORY[0x277D85DE8];
  if ((a3 & 0x8000000000000000) != 0 || (v3 = *(a1 + 1), a3 >= (*(a1 + 2) - v3) >> 3))
  {
    v5 = **(Phase::Logger::GetInstance(a1) + 432);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "PHASEGeometryView.mm";
      v9 = 1024;
      v10 = 121;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d PRECONDITION: index >= 0 && index < _points.size() is false.", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "PRECONDITION: index >= 0 && index < _points.size() is false.");
  }

  return *(v3 + 8 * a3);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end