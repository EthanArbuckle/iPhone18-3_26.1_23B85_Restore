@interface PHASEVoxelSet3D
- (PHASEVoxelSet3D)init;
- (PHASEVoxelSet3D)initWithPoints:(void *)points count:(unint64_t)count;
- (double)voxelAtIndex:(unint64_t)index;
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

- (PHASEVoxelSet3D)initWithPoints:(void *)points count:(unint64_t)count
{
  v21.receiver = self;
  v21.super_class = PHASEVoxelSet3D;
  v6 = [(PHASEVoxelSet3D *)&v21 init];
  v8 = v6;
  v9 = *(v6 + 1);
  v10 = *(v6 + 2);
  v11 = (v10 - v9) >> 3;
  if (count <= v11)
  {
    if (count >= v11)
    {
      goto LABEL_15;
    }

    v10 = v9 + 8 * count;
  }

  else
  {
    v12 = count - v11;
    v13 = *(v6 + 3);
    if (v12 > (v13 - v10) >> 3)
    {
      if (!(count >> 61))
      {
        v14 = v13 - v9;
        countCopy = v14 >> 2;
        if (v14 >> 2 <= count)
        {
          countCopy = count;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFF8)
        {
          v16 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = countCopy;
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
    v19 = points + 4;
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

- (double)voxelAtIndex:(unint64_t)index
{
  v11 = *MEMORY[0x277D85DE8];
  if ((index & 0x8000000000000000) != 0 || (v3 = *(self + 1), index >= (*(self + 2) - v3) >> 3))
  {
    v5 = **(Phase::Logger::GetInstance(self) + 432);
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

  return *(v3 + 8 * index);
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end