void sub_21BF09A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ShaderConverter::Parse(char **this)
{
  v2 = (this + 23);
  std::__tree<std::string>::destroy((this + 22), this[23]);
  this[22] = v2;
  *v2 = 0;
  v3 = this[26];
  this[24] = 0;
  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy((this + 25), v3);
  this[26] = 0;
  this[27] = 0;
  this[25] = (this + 26);
  this[10] = 0;
  if (!this[9])
  {
    operator new();
  }

  ShaderConverter::Parse();
}

void sub_21BF09F20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ShaderConverter::OutputCode(uint64_t a1, uint64_t a2, std::string *this)
{
  v6 = *(a1 + 31);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v6 = *(a1 + 16);
  }

  std::string::reserve(this, vcvtmd_u64_f64(v6 * 1.2));
  if (*(a1 + 104) != *(a1 + 112) || *(a1 + 152) != *(a1 + 160))
  {
    std::string::append(this, "#pragma arguments\n");
    v7 = *(a1 + 104);
    v8 = *(a1 + 112);
    while (v7 != v8)
    {
      Variable::Output(v7, a1, a2, this);
      v7 += 4;
    }

    v9 = *(a1 + 152);
    v10 = *(a1 + 160);
    while (v9 != v10)
    {
      v11 = *v9++;
      TextureLookup::OutputUniformDeclaration(v11, a1, a2, this);
    }
  }

  if (*(a1 + 96))
  {
    v12 = "#pragma declaration\n";
  }

  else
  {
    v12 = "#pragma body\n";
  }

  std::string::append(this, v12);
  v13 = *(**(a1 + 88) + 16);

  return v13();
}

void TextureLookup::OutputUniformDeclaration(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  memset(&v7, 0, sizeof(v7));
  (*(**(a1 + 56) + 16))(*(a1 + 56), a2, a3, &v7);
  if (std::string::compare(&v7, 0, 2uLL, "u_"))
  {
    std::string::append(a4, "sampler ");
    if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v7;
    }

    else
    {
      v5 = v7.__r_.__value_.__r.__words[0];
    }

    if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v7.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v7.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, v5, size);
    std::string::append(a4, "Sampler\n");
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_21BF0A174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21BF0A368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  ShaderConverter::~ShaderConverter(&a22);
  _Unwind_Resume(a1);
}

uint64_t TokenStatement::TokenStatement(uint64_t a1, __int128 *a2, int a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_282DC21F8;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v5;
  }

  *(a1 + 56) = a3;
  return a1;
}

void Statement::~Statement(Statement *this)
{
  *this = &unk_282DC2220;
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

{
  Statement::~Statement(this);

  JUMPOUT(0x21CF07610);
}

void TokenStatement::~TokenStatement(void **this)
{
  *this = &unk_282DC21F8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  Statement::~Statement(this);
}

{
  *this = &unk_282DC21F8;
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  Statement::~Statement(this);

  JUMPOUT(0x21CF07610);
}

std::string *TokenStatement::Output(std::string *result, uint64_t a2, int a3, std::string *this)
{
  if (LODWORD(result[2].__r_.__value_.__r.__words[1]) == 1)
  {
    if (a3 == 2)
    {
      v11 = ShaderConverter::GLSLToMetalSymbol(a2, &result[1].__r_.__value_.__l.__size_);
    }

    else
    {
      if (a3 != 1)
      {
        if (a3)
        {
          return result;
        }

        goto LABEL_5;
      }

      v11 = ShaderConverter::MetalToGLSLSymbol(result, &result[1].__r_.__value_.__l.__size_);
    }

    v12 = *(v11 + 23);
    if (v12 >= 0)
    {
      v9 = v11;
    }

    else
    {
      v9 = *v11;
    }

    if (v12 >= 0)
    {
      v10 = *(v11 + 23);
    }

    else
    {
      v10 = v11[1];
    }

    goto LABEL_19;
  }

LABEL_5:
  size = result[1].__r_.__value_.__l.__size_;
  v5 = &result[1].__r_.__value_.__s.__data_[8];
  v6 = size;
  v8 = v5[23];
  if (v8 >= 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v6;
  }

  if (v8 >= 0)
  {
    v10 = v5[23];
  }

  else
  {
    v10 = *(v5 + 1);
  }

LABEL_19:

  return std::string::append(this, v9, v10);
}

uint64_t Statement::Output(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(result + 8);
  for (i = *(result + 16); v4 != i; result = (*(*v9 + 16))(v9, a2, a3, a4))
  {
    v9 = *v4++;
  }

  return result;
}

uint64_t TextureLookup::TextureLookup(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_282DC2248;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v9;
  }

  *(a1 + 56) = a3;
  *(a1 + 64) = a4;
  *(a1 + 72) = a5;
  return a1;
}

void TextureLookup::~TextureLookup(TextureLookup *this)
{
  TextureLookup::~TextureLookup(this);

  JUMPOUT(0x21CF07610);
}

{
  *this = &unk_282DC2248;
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  Statement::~Statement(this);
}

std::string *TextureLookup::Output(uint64_t a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  (*(**(a1 + 56) + 16))(*(a1 + 56));
  std::string::append(a4, ".sample(");
  (*(**(a1 + 56) + 16))(*(a1 + 56), a2, a3, a4);
  std::string::append(a4, "Sampler");
  std::string::append(a4, ", ");
  (*(**(a1 + 64) + 16))(*(a1 + 64), a2, a3, a4);
  if (*(a1 + 72))
  {
    v8 = *(a1 + 55);
    if (v8 < 0)
    {
      v8 = *(a1 + 40);
    }

    if (!std::string::compare((a1 + 32), v8 - 3, 3uLL, "Lod"))
    {
      v9 = ", level(";
    }

    else
    {
      v9 = ", bias(";
    }

    std::string::append(a4, v9);
    (*(**(a1 + 72) + 16))(*(a1 + 72), a2, a3, a4);
    std::string::append(a4, ")");
  }

  return std::string::append(a4, ")");
}

uint64_t MatrixCTOR::MatrixCTOR(uint64_t a1, __int128 *a2, void *a3, int a4, int a5)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = &unk_282DC2270;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v9;
  }

  std::vector<Statement *>::vector[abi:nn200100]((a1 + 56), a3);
  *(a1 + 80) = a4;
  *(a1 + 84) = a5;
  return a1;
}

void MatrixCTOR::~MatrixCTOR(MatrixCTOR *this)
{
  MatrixCTOR::~MatrixCTOR(this);

  JUMPOUT(0x21CF07610);
}

{
  *this = &unk_282DC2270;
  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 7);
  }

  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  if (*(this + 55) < 0)
  {
    operator delete(*(this + 4));
  }

  Statement::~Statement(this);
}

void MatrixCTOR::Output(uint64_t a1, uint64_t a2, uint64_t a3, std::string *this)
{
  v7 = (a1 + 32);
  if (a3 == 2)
  {
    v8 = ShaderConverter::GLSLToMetalSymbol(a2, v7);
    v9 = *(v8 + 23);
    if (v9 >= 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = *v8;
    }

    if (v9 >= 0)
    {
      v11 = *(v8 + 23);
    }

    else
    {
      v11 = v8[1];
    }

    std::string::append(this, v10, v11);
    v12 = *(a1 + 64) - *(a1 + 56);
    v13 = *(a1 + 84) * *(a1 + 80);
    std::string::append(this, "(");
    if (v13 == v12 >> 3)
    {
      __p = 0;
      v33 = 0;
      v34 = 0;
      v14 = *(a1 + 84) - 2;
      if (v14 < 3)
      {
        MEMORY[0x21CF074C0](&__p, off_2782FAFB8[v14]);
      }

      if (*(a1 + 80) >= 1)
      {
        v15 = 0;
        v16 = 1;
        do
        {
          if ((v16 & 1) == 0)
          {
            std::string::append(this, ", ");
          }

          if (v34 >= 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p;
          }

          if (v34 >= 0)
          {
            v18 = HIBYTE(v34);
          }

          else
          {
            v18 = v33;
          }

          std::string::append(this, p_p, v18);
          if (*(a1 + 84) >= 1)
          {
            v19 = 0;
            v20 = 1;
            do
            {
              if ((v20 & 1) == 0)
              {
                std::string::append(this, ", ");
              }

              v21 = *(*(a1 + 56) + 8 * (v19 + *(a1 + 80) * v15));
              (*(*v21 + 16))(v21, a2, 2, this);
              v20 = 0;
              ++v19;
            }

            while (v19 < *(a1 + 84));
          }

          std::string::append(this, ")");
          v16 = 0;
          ++v15;
        }

        while (v15 < *(a1 + 80));
      }

      std::string::append(this, ")");
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }

      return;
    }

    v28 = *(a1 + 56);
    v29 = *(a1 + 64);
    if (v28 != v29)
    {
      v30 = 1;
      do
      {
        v31 = *v28;
        if ((v30 & 1) == 0)
        {
          std::string::append(this, ", ");
        }

        (*(*v31 + 16))(v31, a2, 2, this);
        v30 = 0;
        ++v28;
      }

      while (v28 != v29);
    }
  }

  else
  {
    if (*(a1 + 55) >= 0)
    {
      v23 = *(a1 + 55);
    }

    else
    {
      v7 = *(a1 + 32);
      v23 = *(a1 + 40);
    }

    std::string::append(this, v7, v23);
    std::string::append(this, "(");
    v24 = *(a1 + 56);
    v25 = *(a1 + 64);
    if (v24 != v25)
    {
      v26 = 1;
      do
      {
        v27 = *v24;
        if ((v26 & 1) == 0)
        {
          std::string::append(this, ", ");
        }

        (*(*v27 + 16))(v27, a2, a3, this);
        v26 = 0;
        ++v24;
      }

      while (v24 != v25);
    }
  }

  std::string::append(this, ")");
}

void sub_21BF0AF28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<Statement *>::vector[abi:nn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<Statement *>::__vallocate[abi:nn200100](result, (v2 - *a2) >> 3);
  }

  return result;
}

void std::vector<Statement *>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Statement *>>(a1, a2);
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Statement *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void BodyStatement::~BodyStatement(BodyStatement *this)
{
  Statement::~Statement(this);

  JUMPOUT(0x21CF07610);
}

std::string *std::pair<std::string const,std::string>::pair[abi:nn200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  return this;
}

void sub_21BF0B1C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string const,std::string>::~pair(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Variable>::__destroy_vector::operator()[abi:nn200100](void ***a1)
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
        v4 -= 96;
        std::allocator_traits<std::allocator<Variable>>::destroy[abi:nn200100]<Variable,0>(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:nn200100]<std::pair<std::string const,std::string>,0>((a2 + 4));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<int,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<int,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<int,int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<int,int>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t std::vector<Variable>::__emplace_back_slow_path<Variable>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v21 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<Variable>>(a1, v6);
  }

  v7 = 96 * v2;
  v18 = 0;
  v19 = v7;
  *(&v20 + 1) = 0;
  v8 = *a2;
  *(v7 + 16) = *(a2 + 2);
  *v7 = v8;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v9 = *(a2 + 24);
  *(v7 + 40) = *(a2 + 5);
  *(v7 + 24) = v9;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v10 = a2[3];
  *(v7 + 64) = *(a2 + 8);
  *(v7 + 48) = v10;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v11 = *(a2 + 72);
  *(v7 + 88) = *(a2 + 11);
  *(v7 + 72) = v11;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *&v20 = 96 * v2 + 96;
  v12 = a1[1];
  v13 = 96 * v2 + *a1 - v12;
  std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Variable>,Variable*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<Variable>::~__split_buffer(&v18);
  return v17;
}

void sub_21BF0B6B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<Variable>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Variable>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

void std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<Variable>,Variable*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      v9 = *(v7 + 24);
      *(a4 + 40) = *(v7 + 40);
      *(a4 + 24) = v9;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      *(v7 + 24) = 0;
      v10 = *(v7 + 48);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 48) = v10;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      *(v7 + 48) = 0;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<Variable>>::destroy[abi:nn200100]<Variable,0>(a1, v5);
      v5 += 96;
    }
  }
}

void std::allocator_traits<std::allocator<Variable>>::destroy[abi:nn200100]<Variable,0>(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 71) < 0)
  {
    operator delete(*(a2 + 48));
  }

  if (*(a2 + 47) < 0)
  {
    operator delete(*(a2 + 24));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void **std::__split_buffer<Variable>::~__split_buffer(void **a1)
{
  std::__split_buffer<Variable>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Variable>::clear[abi:nn200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    std::allocator_traits<std::allocator<Variable>>::destroy[abi:nn200100]<Variable,0>(v4, i - 96);
  }
}

uint64_t std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::string>::__construct_node<std::string const&>();
  }

  return result;
}

void sub_21BF0B9F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<int,int>>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,std::pair<int,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<int,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<int,int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  result = *std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__find_equal<std::string>(a1, &v3, a2);
  if (!result)
  {
    std::__tree<std::__value_type<std::string,std::pair<int,int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<int,int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<int,int>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return result;
}

void sub_21BF0BB40(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<int,int>>,void *>>>::operator()[abi:nn200100](v3, v2);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Token>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t *std::__tree<Token::TokenType>::__emplace_unique_key_args<Token::TokenType,Token::TokenType>(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void SCNCActionHide::~SCNCActionHide(SCNCActionHide *this)
{
  SCNCAction::~SCNCAction(this);

  JUMPOUT(0x21CF07610);
}

SCNCActionHide *SCNCActionHide::cpp_updateWithTargetForTime(SCNCActionHide *this, SCNNode *a2, double a3)
{
  if (!this->var10)
  {
    v6 = this;
    [(SCNNode *)a2 setHidden:this->var19];
    v7 = *(v6->var0 + 14);
    v8.n128_f64[0] = a3;

    return v7(v6, a2, v8);
  }

  return this;
}

SCNCActionHide *SCNCActionHide::cpp_backwardUpdateWithTargetForTime(SCNCActionHide *this, SCNNode *a2, double a3)
{
  if (!this->var10)
  {
    v6 = this;
    [(SCNNode *)a2 setHidden:!this->var19];
    v7 = *(v6->var0 + 14);
    v8.n128_f64[0] = a3;

    return v7(v6, a2, v8);
  }

  return this;
}

void __CopyParticles(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(&v35[1] + 4) = *MEMORY[0x277D85DE8];
  if (a1 == a3)
  {
    v10 = scn_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      __CopyParticles_cold_1(v10, v11, v12);
    }
  }

  if (a1[244])
  {
    v13 = 0;
    v14 = a1 + 180;
    v15 = a5 + a2;
    if (a5 + a2 <= a2 + 1)
    {
      v15 = a2 + 1;
    }

    v16 = v15 - a2;
    v17 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v32 = vdupq_n_s64(v16 - 1);
    do
    {
      if (*&v14[2 * v13])
      {
        v18 = *(a1 + v13 + 980);
        v19 = *(a3 + 976);
        if (!v19)
        {
          goto LABEL_16;
        }

        v20 = (a3 + 980);
        v21 = a1[v13 + 148];
        while (1)
        {
          v22 = *v20++;
          if (v22 == v18)
          {
            break;
          }

          if (!--v19)
          {
            goto LABEL_16;
          }
        }

        if (*(a3 + 592 + 4 * v13) == v21)
        {
          memcpy((*&a1[2 * v13] + v21 * a2), (*(a3 + 8 * v13) + v21 * a4), v21 * a5);
        }

        else
        {
LABEL_16:
          if (v18 == 3)
          {
            v23 = *&a1[2 * v13];
            if (!v23)
            {
              v24 = scn_default_log();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
              {
                __CopyParticles_cold_2(v34, v35, v24);
              }
            }

            *v25.i32 = C3DParticleSystemGetParticleLifeSpan(*(a6 + 48));
            if (a5 >= 1)
            {
              v26 = 0;
              v27 = (v23 + 4 * a2 + 8);
              *v25.i32 = 1.0 / *v25.i32;
              do
              {
                v28 = vdupq_n_s64(v26);
                v29 = vmovn_s64(vcgeq_u64(v32, vorrq_s8(v28, xmmword_21C27F640)));
                if (vuzp1_s16(v29, v25).u8[0])
                {
                  *(v27 - 2) = v25.i32[0];
                }

                if (vuzp1_s16(v29, v25).i8[2])
                {
                  *(v27 - 1) = v25.i32[0];
                }

                if (vuzp1_s16(v25, vmovn_s64(vcgeq_u64(v32, vorrq_s8(v28, xmmword_21C27F630)))).i32[1])
                {
                  *v27 = v25.i32[0];
                  v27[1] = v25.i32[0];
                }

                v26 += 4;
                v27 += 4;
              }

              while (v17 != v26);
            }
          }

          else
          {
            memset(v33, 0, 512);
            C3DParticleContextSetup(v33, a6, a1, 0.0, 0.0);
            (*&v14[2 * v13])(v33, 0, a5);
          }
        }
      }

      ++v13;
    }

    while (v13 < a1[244]);
  }
}

void __DestroyParticles(uint64_t a1)
{
  v1 = *(a1 + 976);
  if (v1)
  {
    for (i = 0; i < v1; ++i)
    {
      v4 = *(a1 + 8 * i);
      if (v4)
      {
        free(v4);
        v1 = *(a1 + 976);
      }

      *(a1 + 8 * i) = 0;
    }
  }
}

uint64_t _C3DParticleSystemInstanceAllocateParticlesData(unsigned int *a1, const void *a2, unsigned int a3)
{
  memptr[128] = *MEMORY[0x277D85DE8];
  v6 = &memptr[74];
  bzero(memptr, 0x250uLL);
  memcpy(&memptr[74], a2, 0x1B0uLL);
  if (a3)
  {
    v7 = LODWORD(memptr[122]);
    if (LODWORD(memptr[122]))
    {
      v8 = 0;
      v9 = memptr;
      do
      {
        v11 = *v6;
        v6 = (v6 + 4);
        v10 = v11;
        if (v11)
        {
          if (malloc_type_posix_memalign(v9, 0x40uLL, v10 * a3, 0x3733C756uLL))
          {
            return 0;
          }

          v7 = LODWORD(memptr[122]);
        }

        ++v8;
        ++v9;
      }

      while (v8 < v7);
    }
  }

  v12 = 0;
  v13 = &memptr[125] + 1;
  do
  {
    v14 = *(v13 - 21);
    if (v14 != 255)
    {
      v15 = memptr[v14];
      memptr[v12 + 32] = v15;
      v16 = *v13;
      if (v16 != 255)
      {
        v15 = memptr[v16];
      }

      memptr[v12 + 53] = v15;
    }

    ++v12;
    ++v13;
  }

  while (v12 != 21);
  v17 = a1[276];
  if (v17)
  {
    __CopyParticles(memptr, 0, (a1 + 20), 0, v17, a1);
  }

  __DestroyParticles((a1 + 20));
  memcpy(a1 + 20, memptr, 0x400uLL);
  a1[278] = a3;
  a1[277] = 0;
  return 1;
}

uint64_t C3DParticleSystemInstanceGetTypeID()
{
  if (C3DParticleSystemInstanceGetTypeID_onceToken != -1)
  {
    C3DParticleSystemInstanceGetTypeID_cold_1();
  }

  return C3DParticleSystemInstanceGetTypeID_typeID;
}

void _C3DParticleSystemInstanceCFFinalize(uint64_t a1)
{
  free(*(a1 + 16));
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  __DestroyParticles(a1 + 80);
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
  if (*(a1 + 1188))
  {
    EnginePipeline = C3DSceneGetEnginePipeline(*(a1 + 64));
    if (EnginePipeline)
    {
      v3 = EnginePipeline;
      v4 = *(EnginePipeline + 48);
      if (v4)
      {
        __C3DRendererElementStoreDeallocateSpan(v4, *(a1 + 1184), v3);
      }
    }
  }

  v5 = *(a1 + 1192);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 1192) = 0;
  }

  v6 = *(a1 + 1200);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 1200) = 0;
  }

  v7 = *(a1 + 48);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 48) = 0;
  }
}

CFStringRef _C3DParticleSystemInstanceCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleSystemInstanceRef>");
}

CFStringRef _C3DParticleSystemInstanceCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DParticleSystemInstanceRef>");
}

uint64_t __C3DParticleSystemInstanceGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DParticleSystemInstanceGetTypeID_typeID = result;
  return result;
}

uint64_t C3DParticleSystemInstanceCreate(uint64_t a1, const void *a2, uint64_t a3)
{
  if (C3DParticleSystemInstanceGetTypeID_onceToken != -1)
  {
    C3DParticleSystemInstanceGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DParticleSystemInstanceGetTypeID_typeID, 1200);
  URL = C3DSceneSourceGetURL(a3);
  *(Instance + 40) = a1;
  v8 = *(Instance + 48);
  if (v8 != a2)
  {
    if (v8)
    {
      CFRelease(v8);
      *(Instance + 48) = 0;
    }

    if (a2)
    {
      CFRetain(a2);
    }
  }

  *(Instance + 48) = a2;
  *(Instance + 56) = a3;
  *(Instance + 64) = URL;
  v9 = *MEMORY[0x277CBECE8];
  v10 = MEMORY[0x277CBF128];
  *(Instance + 1192) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 1, MEMORY[0x277CBF128]);
  *(Instance + 1200) = CFArrayCreateMutable(v9, 1, v10);
  Seed = C3DParticleSystemGetSeed(a2);
  *(Instance + 1116) = Seed;
  if (!Seed)
  {
    *(Instance + 1116) = random();
  }

  return Instance;
}

__n128 C3DParticleSystemInstanceGetWorldBoundingBox(uint64_t a1)
{
  if (C3DParticleSystemGetIsLocal(*(a1 + 48)) && (v2 = *(a1 + 40)) != 0)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(v2);
    result.n128_u64[0] = vaddq_f32(WorldMatrix[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(WorldMatrix[1], *(a1 + 1152), 1), *WorldMatrix, COERCE_FLOAT(*(a1 + 1152))), WorldMatrix[2], *(a1 + 1152), 2)).u64[0];
  }

  else
  {
    return *(a1 + 1152);
  }

  return result;
}

uint64_t __C3DParticleSystemInstanceComputeDepth(uint64_t result, uint64_t a2)
{
  v2 = *(result + 632);
  if (v2)
  {
    v3 = *(result + 1104);
    if (v3)
    {
      v4 = *(result + 504);
      v5 = vuzp2q_s32(vuzp2q_s32(*a2, *(a2 + 16)), *a2);
      v5.i32[2] = *(a2 + 44);
      v6 = *(a2 + 60);
      do
      {
        v7 = *v4++;
        v8 = vmulq_f32(v5, v7);
        *v2++ = v6 + (v8.f32[2] + vaddv_f32(*v8.f32));
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t __C3DParticleSystemInstanceComputeDistance(uint64_t result, float32x4_t *a2)
{
  v2 = *(result + 632);
  if (v2)
  {
    v3 = *(result + 1104);
    if (v3)
    {
      v4 = *a2;
      v4.i32[3] = 0;
      v5 = *(result + 504);
      do
      {
        v6 = *v5++;
        v7 = vsubq_f32(v6, v4);
        v8 = vmulq_f32(v7, v7);
        *v2++ = v8.f32[2] + vaddv_f32(*v8.f32);
        --v3;
      }

      while (v3);
    }
  }

  return result;
}

uint64_t __decreasingFloatData(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (*(a1 + 4 * *a2) <= *(a1 + 4 * *a3))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t __increasingFloatData(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  if (*(a1 + 4 * *a2) > *(a1 + 4 * *a3))
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void _C3DParticleSystemInstanceSort(uint64_t a1, float32x4_t *a2, uint64_t a3)
{
  SortingMode = C3DParticleSystemGetSortingMode(*(a1 + 48));
  if ((C3DParticleSystemGetRenderingMode(*(a1 + 48)) & 0xFE) == 2)
  {
    v7 = 4;
  }

  else
  {
    v7 = SortingMode;
  }

  if (v7)
  {
    v8 = *(a1 + 632);
    v9 = *(a1 + 536);
    if (v7 > 2)
    {
      if (!v9)
      {
        return;
      }
    }

    else if (!v8)
    {
      return;
    }

    v10 = *(a1 + 544);
    if (v10)
    {
      if (*(a1 + 1104))
      {
        v11 = 0;
        do
        {
          v10[v11] = v11;
          ++v11;
          v12 = *(a1 + 1104);
        }

        while (v11 < v12);
      }

      else
      {
        v12 = 0;
      }

      if (v7 > 2)
      {
        if (v7 == 3)
        {
          v13 = __increasingFloatData;
        }

        else
        {
          if (v7 != 4)
          {
            return;
          }

          v13 = __decreasingFloatData;
        }

        v14 = v13;
        v15 = v10;
      }

      else
      {
        if (v7 == 1)
        {
          __C3DParticleSystemInstanceComputeDepth(a1, a3);
        }

        else
        {
          if (v7 != 2)
          {
            return;
          }

          __C3DParticleSystemInstanceComputeDistance(a1, a2);
        }

        v12 = *(a1 + 1104);
        v14 = __decreasingFloatData;
        v15 = v10;
        v9 = v8;
      }

      qsort_r(v15, v12, 4uLL, v9, v14);
    }
  }
}

_DWORD *__CopyParticle(_DWORD *result, uint64_t a2, uint64_t a3)
{
  if (result[244])
  {
    v5 = result;
    v6 = 0;
    do
    {
      if (*&v5[2 * v6 + 180])
      {
        v7 = v5[v6 + 148];
        v8 = *&v5[2 * v6];
        switch(v7)
        {
          case 4:
            *(v8 + 4 * a2) = *(v8 + 4 * a3);
            break;
          case 0xC:
            v9 = (v8 + 12 * a3);
            v10 = *v9;
            v11 = v8 + 12 * a2;
            *(v11 + 8) = *(v9 + 2);
            *v11 = v10;
            break;
          case 0x10:
            *(v8 + 16 * a2) = *(v8 + 16 * a3);
            break;
          default:
            result = memcpy((v8 + v7 * a2), (v8 + v7 * a3), v7);
            break;
        }
      }

      ++v6;
    }

    while (v6 < v5[244]);
  }

  return result;
}

uint64_t C3DParticleSystemInstanceCheckParticlesCount(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 1112);
  if (v4 < a2)
  {
    BirthRate = C3DParticleSystemGetBirthRate(*(a1 + 48));
    v6 = BirthRate + C3DParticleSystemGetBirthRateVariation(*(a1 + 48));
    ParticleLifeSpan = C3DParticleSystemGetParticleLifeSpan(*(a1 + 48));
      ;
    }

LABEL_13:
    _C3DParticleSystemInstanceAllocateParticlesData(a1, (a1 + 672), i);
    return 1;
  }

  v9 = v4 >> 2;
  v11 = *(a1 + 1104) >= a2 && a2 >= 8 && v9 >= a2;
  i = a2;
  if (v11)
  {
    goto LABEL_13;
  }

  return 1;
}

void __C3DParticleSystemInstanceApplyControllers(uint64_t a1, double a2, double a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = 0;
  Controllers = C3DParticleSystemGetControllers(*(a1 + 48), &v14);
  if (Controllers)
  {
    v7 = Controllers;
    v8 = a3;
    memset(v15, 0, 512);
    C3DParticleContextSetup(v15, a1, (a1 + 80), a2, v8);
    if (v14)
    {
      for (i = 0; i < v14; ++i)
      {
        if (*(v7 + 48) == 1 && *(v7 + 16))
        {
          v10 = *(v7 + 24);
          if (v10 == 2)
          {
            C3DParticleAnimatePropertyWithOtherProperty(v15, 0, v16, v7);
          }

          else if (v10 == 1)
          {
            if (*(v7 + 40))
            {
              v11 = *(v7 + 40);
            }

            else
            {
              v11 = v17;
            }

            if (v11)
            {
              v13.i32[2] = 0;
              v13.i64[0] = 0;
              C3DNodeGetWorldPosition(v11, &v13);
              v12 = v13;
              v12.i32[3] = 0;
            }

            else
            {
              v12 = 0uLL;
            }

            C3DParticleAnimatePropertyWithDistance(v15, 0, v16, v7, v12);
          }

          else if (!*(v7 + 24))
          {
            C3DParticleAnimatePropertyWithLife(v15, 0, v16, v7);
          }
        }

        v7 += 80;
      }
    }
  }
}

void __C3DParticleSystemInstanceStep(uint64_t a1, double a2, float a3, float a4)
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = *(a1 + 48);
  if (C3DParticleSystemGetParticleLifeSpan(v8) != INFINITY)
  {
    SimulateLifeCallback = C3DParticleSystemGetSimulateLifeCallback(v8);
    SimulateLifeCallback(a1, a3);
  }

  v10 = *(a1 + 1104);
  if (!*(a1 + 24))
  {
    v11 = 0;
    if (!v10)
    {
      goto LABEL_11;
    }

LABEL_14:
    memset(__src, 0, 512);
    C3DParticleContextSetup(__src, a1, (a1 + 80), a2, a3);
    LODWORD(__src[64]) = v10;
    if (v10 >= 0x801 && *(&__src[74] + 1))
    {
      v32 = 0;
      v33 = &v32;
      v34 = 0x4010000000;
      v35 = &unk_21C362C36;
      v36 = *(MEMORY[0x277D860B8] + 48);
      v37 = xmmword_21C27F650;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = ____C3DParticleSystemInstanceStep_block_invoke;
      block[3] = &unk_2782FAFD8;
      memcpy(v39, __src, sizeof(v39));
      v42 = (v10 + 15) >> 4;
      v41 = a1;
      v40 = &v32;
      dispatch_apply(0x10uLL, *(&__src[74] + 1), block);
      v26 = *(v33 + 3);
      __src[68] = *(v33 + 2);
      __src[69] = v26;
      _Block_object_dispose(&v32, 8);
    }

    else
    {
      C3DParticleSystemProcessAffectors(*(a1 + 48), __src, 0, v10);
    }

    ParticleSize = C3DParticleSystemGetParticleSize(v8);
    *v28.i32 = ParticleSize + C3DParticleSystemGetParticleSizeVariation(v8);
    v29 = vaddq_f32(__src[69], vdupq_lane_s32(v28, 0));
    v29.i32[3] = HIDWORD(__src[69]);
    __src[69] = v29;
    *(a1 + 1152) = __src[68];
    *(a1 + 1168) = __src[69];
    if (v11)
    {
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v11 = 0;
  v12 = 0;
  do
  {
    v13 = *(a1 + 16) + 160 * v12;
    C3DParticleSystemInstanceStepEmitter(a1, v13, a2, a3, a4);
    if (*(v13 + 16) == 3)
    {
      v14 = *(a1 + 24) - 1;
      *(a1 + 24) = v14;
      if (v12 < v14)
      {
        v15 = *(a1 + 16);
        v16 = (v15 + 160 * v12);
        v17 = (v15 + 160 * v14);
        v18 = v17[1];
        *v16 = *v17;
        v16[1] = v18;
        v19 = v17[2];
        v20 = v17[3];
        v21 = v17[5];
        v16[4] = v17[4];
        v16[5] = v21;
        v16[2] = v19;
        v16[3] = v20;
        v22 = v17[6];
        v23 = v17[7];
        v24 = v17[9];
        v16[8] = v17[8];
        v16[9] = v24;
        v16[6] = v22;
        v16[7] = v23;
      }
    }

    else
    {
      ++v12;
      v11 = 1;
    }
  }

  while (v12 < *(a1 + 24));
  if (*(a1 + 1104))
  {
    goto LABEL_14;
  }

LABEL_11:
  if (v11)
  {
LABEL_12:
    v25 = 0;
    goto LABEL_28;
  }

LABEL_19:
  if (C3DIsRunningInXcode() && ((v30 = *(a1 + 64)) != 0 || (v31 = *(a1 + 40)) != 0 && (v30 = C3DGetScene(v31)) != 0) && C3DSceneIsPausedForEditing(v30))
  {
    __DestroyParticles(a1 + 80);
    *(a1 + 1104) = 0;
    *(a1 + 1112) = 0;
    v25 = 2;
  }

  else if (*(a1 + 1104))
  {
    v25 = 1;
  }

  else
  {
    v25 = 2;
  }

LABEL_28:
  *(a1 + 32) = v25;
}

float32x4_t *C3DParticleSystemInstanceStepEmitter(uint64_t a1, uint64_t a2, double a3, float a4, float a5)
{
  v9 = *(a1 + 48);
  if (!*(a2 + 16))
  {
    EmissionDuration = C3DParticleSystemGetEmissionDuration(*(a1 + 48));
    EmissionDurationVariation = C3DParticleSystemGetEmissionDurationVariation(v9);
    if (EmissionDurationVariation != 0.0)
    {
      v12 = 214013 * *(a1 + 1116) + 2531011;
      *(a1 + 1116) = v12;
      EmissionDuration = EmissionDuration + (((HIWORD(v12) * 0.000015259) + -0.5) * EmissionDurationVariation);
    }

    *a2 = EmissionDuration;
    *(a2 + 4) = 0;
    IdleDuration = C3DParticleSystemGetIdleDuration(v9);
    IdleDurationVariation = C3DParticleSystemGetIdleDurationVariation(v9);
    if (IdleDurationVariation != 0.0)
    {
      v15 = 214013 * *(a1 + 1116) + 2531011;
      *(a1 + 1116) = v15;
      IdleDuration = IdleDuration + (((HIWORD(v15) * 0.000015259) + -0.5) * IdleDurationVariation);
    }

    *(a2 + 8) = IdleDuration;
    *(a2 + 16) = 1;
  }

  EmissionCallback = C3DParticleSystemGetEmissionCallback(v9);
  result = *(a2 + 24);
  if (result)
  {
    v18 = *(a2 + 48);
    *(a2 + 96) = *(a2 + 32);
    *(a2 + 112) = v18;
    v19 = *(a2 + 80);
    *(a2 + 128) = *(a2 + 64);
    *(a2 + 144) = v19;
    result = C3DNodeIsHiddenOrIsHiddenByAncestor(result);
    if (result)
    {
      return result;
    }

    result = C3DNodeGetWorldMatrix(*(a2 + 24));
    v20 = vmlaq_n_f32(vmulq_n_f32(result[1], a5), *(a2 + 112), 1.0 - a5);
    v21 = vmlaq_n_f32(vmulq_n_f32(result[2], a5), *(a2 + 128), 1.0 - a5);
    v22 = vmlaq_n_f32(vmulq_n_f32(result[3], a5), *(a2 + 144), 1.0 - a5);
    *(a2 + 32) = vmlaq_n_f32(vmulq_n_f32(*result, a5), *(a2 + 96), 1.0 - a5);
    *(a2 + 48) = v20;
    *(a2 + 64) = v21;
    *(a2 + 80) = v22;
  }

  v23 = *(a2 + 16);
  if (v23 != 1)
  {
    goto LABEL_16;
  }

  result = (EmissionCallback)(a1, a2, a3, a4);
  v24 = *a2;
  v25 = *(a2 + 4) + a4;
  *(a2 + 4) = v25;
  if (v25 <= v24)
  {
    v23 = *(a2 + 16);
LABEL_16:
    if (v23 != 2)
    {
      return result;
    }

    v26 = *(a2 + 8);
LABEL_18:
    v27 = v26 - a4;
    *(a2 + 8) = v27;
    if (v27 >= 0.0)
    {
      return result;
    }

    goto LABEL_19;
  }

  result = C3DParticleSystemGetLoops(v9);
  if (!result)
  {
    v28 = 3;
    goto LABEL_21;
  }

  v26 = *(a2 + 8);
  if (v26 > 0.0)
  {
    *(a2 + 16) = 2;
    a4 = *(a2 + 4) - *a2;
    goto LABEL_18;
  }

LABEL_19:
  v28 = 0;
LABEL_21:
  *(a2 + 16) = v28;
  return result;
}

void C3DParticleSystemInstanceReset(uint64_t a1)
{
  __DestroyParticles(a1 + 80);
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0;
}

void C3DParticleSystemInstanceUpdate(uint64_t a1, double a2)
{
  v4 = *(a1 + 1128);
  v5 = 2;
  if (v4 == 0.0)
  {
    WarmupDuration = C3DParticleSystemGetWarmupDuration(*(a1 + 48));
    v7 = fmaxf(WarmupDuration, 0.0) + a2;
    if (WarmupDuration == 0.0)
    {
      v5 = 2;
    }

    else
    {
      v5 = 1000;
    }

    if (WarmupDuration != 0.0)
    {
      a2 = v7;
    }

    v4 = *(a1 + 1128);
  }

  *(a1 + 1128) = a2 + v4;
  SpeedFactor = C3DParticleSystemGetSpeedFactor(*(a1 + 48));
  if (C3DParticleSystemGetAndClearMeshDidChange(*(a1 + 48)))
  {
    CFArrayRemoveAllValues(*(a1 + 1192));
    CFArrayRemoveAllValues(*(a1 + 1200));
  }

  v9 = a2 * SpeedFactor;
  ParticleLayout = C3DParticleSystemGetParticleLayout(*(a1 + 48));
  v11 = ParticleLayout;
  if (ParticleLayout[96] != *(a1 + 1056) || memcmp(ParticleLayout, (a1 + 672), 0x1B0uLL))
  {
    if (!_C3DParticleSystemInstanceAllocateParticlesData(a1, v11, *(a1 + 1112)))
    {
      return;
    }

    if (v9 == 0.0)
    {
      __C3DParticleSystemInstanceApplyControllers(a1, v4, v9);
    }
  }

  if (v9 != 0.0 || C3DIsRunningInXcode())
  {
    v12 = SpeedFactor / 60.0;
    v13 = v9 / (SpeedFactor / 60.0);
    v14 = rintf(v13);
    if (v14 >= 2)
    {
      if (v14 >= v5)
      {
        v15 = v5;
      }

      else
      {
        v15 = v14;
      }

      for (i = 1; i != v15; ++i)
      {
        v16 = v12;
        __C3DParticleSystemInstanceStep(a1, v4, v16, i / v15);
        v4 = v12 + v4;
        v9 = v9 - v12;
      }
    }

    v18 = v9;
    __C3DParticleSystemInstanceStep(a1, v4, v18, 1.0);

    __C3DParticleSystemInstanceApplyControllers(a1, v4, v9);
  }
}

uint64_t C3DParticleSystemInstanceSync(uint64_t result, uint64_t a2)
{
  if (!*(result + 1188))
  {
    v3 = result;
    *(result + 1184) = C3DRendererElementStoreAllocateSpanForNode(a2, 0, *(result + 40), 4);
    result = C3DEnginePipelineGetRendererElementStore(a2);
    if (*(v3 + 1188))
    {
      v4 = result;
      v5 = 0;
      do
      {
        result = C3DRendererElementStoreGetElementInSpanAtIndex(v4, *(v3 + 1184), v5);
        *(result + 48) = v3;
        ++v5;
      }

      while (v5 < *(v3 + 1188));
    }
  }

  return result;
}

uint64_t _C3DParticleRender_Quads(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, char a6)
{
  LightingEnabled = C3DParticleSystemGetLightingEnabled(*(a1 + 48));
  if (C3DParticleSystemGetOrientationMode(*(a1 + 48)) == 2)
  {
    v11 = 0;
  }

  else
  {
    v11 = LightingEnabled;
  }

  v12 = *(a1 + 1104);
  if (C3DEngineContextIsWarmUp(a3))
  {
    v12 = 1;
  }

  if (!v12)
  {
    return 0;
  }

  if (C3DParticleSystemGetSortingMode(*(a1 + 48)))
  {
    v13 = (a2 + (a4 << 6));
    v28 = v13[172];
    _C3DParticleSystemInstanceSort(a1, &v28, &v13[241]);
    v14 = *(a1 + 544);
  }

  else
  {
    v14 = 0;
  }

  HasFeatures = C3DEngineContextHasFeatures(a3, 2);
  v17 = 0;
  v18 = 0;
  if (v11)
  {
    v19 = 13107;
  }

  else
  {
    v19 = 0x4000;
  }

  do
  {
    if (v12 >= v19)
    {
      v20 = v19;
    }

    else
    {
      v20 = v12;
    }

    if (HasFeatures)
    {
      v21 = v12;
    }

    else
    {
      v21 = v20;
    }

    v22 = __meshAtIndex(a1, v17);
    v23 = __meshElementAtIndex(a1, v17);
    result = _C3DParticleRender_Quads_Batch(a1, v18, v21, v14, v22, v23, v24, a3, a5, a6);
    if (result)
    {
      v25 = v21;
    }

    else
    {
      v25 = 0;
    }

    if (!result)
    {
      break;
    }

    v17 += result;
    v18 += v25;
    v12 -= v25;
  }

  while (v12);
  return result;
}

const void *__meshAtIndex(uint64_t a1, CFIndex a2)
{
  if (CFArrayGetCount(*(a1 + 1192)) <= a2)
  {
    Volatile = C3DMeshCreateVolatile();
    CFArrayAppendValue(*(a1 + 1192), Volatile);
    CFRelease(Volatile);
    return Volatile;
  }

  else
  {
    v4 = *(a1 + 1192);

    return CFArrayGetValueAtIndex(v4, a2);
  }
}

const void *__meshElementAtIndex(uint64_t a1, CFIndex a2)
{
  if (CFArrayGetCount(*(a1 + 1200)) <= a2)
  {
    v6 = C3DMeshElementCreate();
    CFArrayAppendValue(*(a1 + 1200), v6);
    CFRelease(v6);
    return v6;
  }

  else
  {
    v4 = *(a1 + 1200);

    return CFArrayGetValueAtIndex(v4, a2);
  }
}

uint64_t _C3DParticleRender_Quads_Batch(void *a1, int a2, int a3, uint64_t a4, CFArrayRef *a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, char a10)
{
  HasFeatures = C3DEngineContextHasFeatures(a8, 1);
  RendererContextGL = C3DEngineContextGetRendererContextGL(a8);
  RenderContext = C3DEngineContextGetRenderContext(a8);
  if (!(RendererContextGL | RenderContext))
  {
    return 0;
  }

  v17 = RenderContext;
  v135 = a8;
  v133 = RendererContextGL;
  LightingEnabled = C3DParticleSystemGetLightingEnabled(a1[6]);
  v139 = v17;
  v138 = C3DParticleSystemGetStretchFactor(a1[6]) != 0.0 && C3DParticleSystemGetRenderingMode(a1[6]) == 0;
  OrientationMode = C3DParticleSystemGetOrientationMode(a1[6]);
  v21 = OrientationMode != 2;
  HasTextureAnimation = C3DParticleSystemHasTextureAnimation(a1[6]);
  v23 = a9 - 1 < 2 && a10 == 1;
  ParticleIntensity = C3DParticleSystemGetParticleIntensity(a1[6]);
  v25 = ParticleIntensity + C3DParticleSystemGetParticleIntensityVariation(a1[6]);
  if (v25 > 1.0)
  {
    v26 = 1;
  }

  else
  {
    v26 = 21;
  }

  v27 = LightingEnabled & v21;
  if ((LightingEnabled & v21) != 0)
  {
    LODWORD(v28) = 5;
  }

  else
  {
    LODWORD(v28) = 4;
  }

  if (HasFeatures)
  {
    v28 = 1;
  }

  else
  {
    v28 = v28;
  }

  v154 = v28;
  if (!C3DMeshGetSourceWithSemanticAtIndex(a5, 0, 0, 0))
  {
    Volatile = C3DMeshSourceCreateVolatile(0, 4, 1u);
    C3DMeshAddSource(a5, Volatile, 0, 0);
    CFRelease(Volatile);
  }

  if (!C3DMeshGetSourceWithSemanticAtIndex(a5, 3, 0, 0))
  {
    if (HasTextureAnimation)
    {
      v30 = 3;
    }

    else
    {
      v30 = 2;
    }

    v31 = C3DMeshSourceCreateVolatile(3, v30, 1u);
    C3DMeshAddSource(a5, v31, 0, 0);
    CFRelease(v31);
  }

  if (!C3DMeshGetSourceWithSemanticAtIndex(a5, 2, 0, 0))
  {
    v32 = C3DMeshSourceCreateVolatile(2, 4, v26);
    C3DMeshAddSource(a5, v32, 0, 0);
    CFRelease(v32);
  }

  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(a5, 3, 1, 0);
  v34 = SourceWithSemanticAtIndex;
  if (HasFeatures)
  {
    v35 = a1[7];
    v36 = v27 & 1;
    if (v23)
    {
      SharedQuadStereoMeshSource = C3DParticleManagerGetSharedQuadStereoMeshSource(v35, v36);
    }

    else
    {
      SharedQuadStereoMeshSource = C3DParticleManagerGetSharedQuadMeshSource(v35, v36);
    }

    v39 = SharedQuadStereoMeshSource;
    if (v34 != SharedQuadStereoMeshSource)
    {
      C3DMeshRemoveSourceWithSemanticAtIndex(a5, 3, 1);
      C3DMeshRemoveSourceWithSemanticAtIndex(a5, 3, 1);
      C3DMeshAddSource(a5, v39, 0, 0);
    }
  }

  else if (!SourceWithSemanticAtIndex)
  {
    v38 = C3DMeshSourceCreateVolatile(3, 2, 1u);
    C3DMeshAddSource(a5, v38, 0, 0);
    CFRelease(v38);
  }

  v134 = v27;
  v128 = v23;
  v143 = a1;
  v40 = v138;
  if (OrientationMode == 2)
  {
    v40 = 1;
  }

  if (v40 == 1 && !C3DMeshGetSourceWithSemanticAtIndex(a5, 3, 2, 0))
  {
    if (OrientationMode == 2)
    {
      v41 = 4;
    }

    else
    {
      v41 = 3;
    }

    v42 = C3DMeshSourceCreateVolatile(3, v41, 1u);
    C3DMeshAddSource(a5, v42, 0, 0);
    CFRelease(v42);
  }

  v152 = OrientationMode;
  v43 = (v154 * a3);
  v44 = C3DMeshGetSourceWithSemanticAtIndex(a5, 0, 0, 1);
  v45 = C3DMeshGetSourceWithSemanticAtIndex(a5, 3, 0, 1);
  v46 = C3DMeshGetSourceWithSemanticAtIndex(a5, 2, 0, 1);
  v47 = C3DMeshGetSourceWithSemanticAtIndex(a5, 3, 1, 1);
  v48 = C3DMeshGetSourceWithSemanticAtIndex(a5, 3, 2, 1);
  if (HasFeatures)
  {
    C3DMeshSourceSetInstancingDivisor(v44, 1);
    C3DMeshSourceSetInstancingDivisor(v45, 1);
    if (v48)
    {
      C3DMeshSourceSetInstancingDivisor(v48, 1);
    }

    if (v46)
    {
      C3DMeshSourceSetInstancingDivisor(v46, 1);
    }
  }

  if (v139)
  {
    [(SCNMTLRenderContext *)v139 mapVolatileMesh:a5 verticesCount:v43];
  }

  else
  {
    ResourceManager = C3DEngineContextGetResourceManager(v135);
    result = C3DRendererContextMapVolatileMesh(v133, ResourceManager, a5, v43, 0);
    if (!result)
    {
      return result;
    }
  }

  v132 = a6;
  Accessor = C3DMeshSourceGetAccessor(v44);
  v51 = C3DMeshSourceGetAccessor(v45);
  v52 = C3DMeshSourceGetAccessor(v46);
  v53 = C3DMeshSourceGetAccessor(v47);
  v142 = a3;
  if (v48)
  {
    v54 = C3DMeshSourceGetAccessor(v48);
  }

  else
  {
    v54 = 0;
  }

  VolatileValuePtrAtIndex = C3DSourceAccessorGetVolatileValuePtrAtIndex(Accessor, 0);
  Library = C3DSceneSourceGetLibrary(Accessor);
  v57 = C3DSourceAccessorGetVolatileValuePtrAtIndex(v52, 0);
  v58 = C3DSceneSourceGetLibrary(v52);
  if (HasFeatures)
  {
    v155 = 0;
    v156 = 0;
  }

  else
  {
    v156 = C3DSourceAccessorGetVolatileValuePtrAtIndex(v53, 0);
    v155 = C3DSceneSourceGetLibrary(v53);
  }

  v59 = C3DSourceAccessorGetVolatileValuePtrAtIndex(v51, 0);
  v60 = C3DSceneSourceGetLibrary(v51);
  v131 = a5;
  if (v54)
  {
    v61 = C3DSourceAccessorGetVolatileValuePtrAtIndex(v54, 0);
    v54 = C3DSceneSourceGetLibrary(v54);
  }

  else
  {
    v61 = 0;
  }

  if (v61)
  {
    v62 = v152 == 2;
  }

  else
  {
    v62 = 0;
  }

  v63 = v62;
  v149 = v143[65];
  v147 = v143[66];
  v148 = v143[63];
  v150 = v143[76];
  v151 = v143[64];
  v64 = v143[77];
  ParticleSize = C3DParticleSystemGetParticleSize(v143[6]);
  v146 = v143[70];
  v130 = C3DParticleSystemGetParticleIntensity(v143[6]);
  v145 = v143[83];
  v129 = *C3DParticleSystemGetParticleColor(v143[6]);
  v153 = v143[71];
  if (C3DEngineContextIsWarmUp(v135))
  {
    v150 = &_C3DParticleRender_Quads_Batch_s_rotAxis;
    v151 = &_C3DParticleRender_Quads_Batch_s_vel_velAngle;
    v64 = &_C3DParticleRender_Quads_Batch_s_frame;
    v148 = &_C3DParticleRender_Quads_Batch_s_vel_velAngle;
    v149 = &_C3DParticleRender_Quads_Batch_s_frame;
  }

  v66 = v143[5];
  if (v66)
  {
    C3DNodeGetWorldAlpha(v66);
  }

  else
  {
    v67 = 1.0;
  }

  v136 = v67;
  ParticleLifeSpan = C3DParticleSystemGetParticleLifeSpan(v143[6]);
  v69 = v130;
  if (v142)
  {
    v70 = 0;
    v71 = 0;
    v72 = vmulq_n_f32(v129, v136);
    v74 = vmulq_n_f32(v72, v130);
    v73 = vmulq_laneq_f32(v74, v72, 3);
    v74.i32[3] = v72.i32[3];
    v73.i32[3] = v72.i32[3];
    v75 = vmaxnmq_f32(v73, 0);
    __asm { FMOV            V3.4S, #1.0 }

    v80 = vminnmq_f32(v75, _Q3);
    v81 = vdupq_n_s32(0x437F0000u);
    v82.i64[0] = 0x3F0000003F000000;
    v82.i64[1] = 0x3F0000003F000000;
    v83 = vcvtq_s32_f32(vmlaq_f32(v82, v81, v80));
    v84.i64[0] = 0xFF000000FFLL;
    v84.i64[1] = 0xFF000000FFLL;
    v85 = vandq_s8(v83, v84);
    v86 = vshl_u32(*&vextq_s8(v85, v85, 8uLL), 0x1800000010);
    v87 = v85.i32[0] | (v85.i32[1] << 8) | v86.i32[0] | v86.i32[1];
    v88 = 1.0 / ParticleLifeSpan;
    do
    {
      v89 = v71 + a2;
      if (a4)
      {
        v89 = *(a4 + 4 * v89);
      }

      if (v147)
      {
        v88 = *(v147 + 4 * v89);
      }

      if (v146)
      {
        ParticleSize = *(v146 + 4 * v89);
      }

      if (v145)
      {
        v69 = *(v145 + 4 * v89);
        if (v153)
        {
          goto LABEL_86;
        }

        v74 = vmulq_n_f32(v72, v69);
        v74.i32[3] = v72.i32[3];
      }

      else if (v153)
      {
LABEL_86:
        v90 = vmulq_n_f32(*(v153 + 16 * v89), v136);
        v91 = vmulq_n_f32(v90, v69);
        v74 = v91;
        v74.i32[3] = v90.i32[3];
        if (v25 <= 1.0)
        {
          v92 = vmulq_laneq_f32(v91, v90, 3);
          v92.i32[3] = v74.i32[3];
          v93.i64[0] = 0x3F0000003F000000;
          v93.i64[1] = 0x3F0000003F000000;
          v94 = vandq_s8(vcvtq_s32_f32(vmlaq_f32(v93, v81, vminnmq_f32(vmaxnmq_f32(v92, 0), _Q3))), v84);
          v95 = v94.i32[0] | (v94.i32[1] << 8);
          *v94.i8 = vshl_u32(*&vextq_s8(v94, v94, 8uLL), 0x1800000010);
          v87 = v95 | v94.i32[0] | v94.i32[1];
        }
      }

      v96 = 1.0 - (v88 * v149[v89]);
      v97 = &v148[16 * v89];
      v98 = &v151[16 * v89];
      v99 = &v150[12 * v89];
      v100 = v154;
      v101 = v70;
      v102 = &qword_21C27F6C0;
      do
      {
        v103 = (VolatileValuePtrAtIndex + Library * v101);
        *v103 = *v97;
        v103[1] = *(v97 + 1);
        v103[2] = *(v97 + 2);
        v103[3] = *(v97 + 3);
        v104 = v58 * v101;
        if (v25 <= 1.0)
        {
          *(v57 + v104) = v87;
        }

        else
        {
          *(v57 + v104) = v74;
        }

        v105 = v59 + v60 * v101;
        *v105 = v96;
        *(v105 + 4) = ParticleSize;
        if (HasTextureAnimation)
        {
          *(v105 + 8) = v64[v89];
          if (!HasFeatures)
          {
            goto LABEL_94;
          }
        }

        else if (!HasFeatures)
        {
LABEL_94:
          *(v156 + v155 * v101) = *v102;
          if (v63)
          {
            goto LABEL_100;
          }

          goto LABEL_95;
        }

        if (v63)
        {
LABEL_100:
          v109 = (v61 + v54 * v101);
          *v109 = *v99;
          v109[1] = *(v99 + 1);
          v109[2] = *(v99 + 2);
          v109[3] = *(v97 + 3);
          goto LABEL_101;
        }

LABEL_95:
        if (v138)
        {
          v106 = v61 + v54 * v101;
          v107 = *v98;
          v108 = vmulq_f32(v107, v107);
          if ((v108.f32[2] + vaddv_f32(*v108.f32)) <= 0.0)
          {
            *v106 = 0x3A83126F00000000;
            *(v106 + 8) = 0;
          }

          else
          {
            *v106 = v107.i32[0];
            *(v106 + 4) = v98->i32[1];
            *(v106 + 8) = v98->i32[2];
          }
        }

LABEL_101:
        ++v102;
        ++v101;
        --v100;
      }

      while (v100);
      ++v71;
      v70 += v154;
    }

    while (v71 != v142);
  }

  if (v139)
  {
    [(SCNMTLRenderContext *)v139 unmapVolatileMesh:v131 modifiedVerticesCount:-1];
  }

  else
  {
    C3DRendererContextUnmapVolatileMesh(v133, v131);
  }

  if (v134)
  {
    v110 = 4;
  }

  else
  {
    v110 = 2;
  }

  if (v134)
  {
    v111 = 2;
  }

  else
  {
    v111 = 1;
  }

  v112 = v142 << v111;
  if (HasFeatures)
  {
    v113 = v110;
  }

  else
  {
    v113 = v112;
  }

  PrimitiveCount = C3DMeshElementGetPrimitiveCount(v132);
  v115 = PrimitiveCount;
  if (!HasFeatures)
  {
    if (PrimitiveCount != v113)
    {
      v119 = v143[7];
      if (v134)
      {
        SharedPyramidQuadsMeshElement = C3DParticleManagerGetSharedPyramidQuadsMeshElement(v119, v142);
      }

      else
      {
        SharedPyramidQuadsMeshElement = C3DParticleManagerGetSharedQuadsMeshElement(v119, v142);
      }

      C3DMeshElementSetSharedMeshElement(v132, SharedPyramidQuadsMeshElement, 0, v112);
    }

    return 1;
  }

  InstanceCount = C3DMeshElementGetInstanceCount(v132);
  if (v115 != v113 || InstanceCount != v142)
  {
    C3DMeshElementSetPrimitives(v132, v113, 0, 0);
    if (v128)
    {
      v117 = v143[7];
      if (v134)
      {
        SharedPyramidStereoMeshElement = C3DParticleManagerGetSharedPyramidStereoMeshElement(v117);
      }

      else
      {
        SharedPyramidStereoMeshElement = C3DParticleManagerGetSharedQuadsStereoMeshElement(v117);
      }

      v126 = SharedPyramidStereoMeshElement;
      Type = C3DMeshElementGetType(SharedPyramidStereoMeshElement);
      C3DMeshElementSetType(v132, Type);
      v125 = 2 * v110;
      v123 = v132;
      v124 = v126;
    }

    else
    {
      if ((v134 & 1) == 0)
      {
        C3DMeshElementSetType(v132, 1);
        goto LABEL_134;
      }

      SharedPyramidMeshElement = C3DParticleManagerGetSharedPyramidMeshElement(v143[7]);
      v122 = C3DMeshElementGetType(SharedPyramidMeshElement);
      C3DMeshElementSetType(v132, v122);
      v123 = v132;
      v124 = SharedPyramidMeshElement;
      v125 = 4;
    }

    C3DMeshElementSetSharedMeshElement(v123, v124, 0, v125);
LABEL_134:
    C3DMeshElementSetInstanceCount(v132, v142);
  }

  return 1;
}

uint64_t _C3DParticleRender_Strip(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (a3 < 2)
  {
    return 0;
  }

  RendererContextGL = C3DEngineContextGetRendererContextGL(a5);
  v10 = __meshAtIndex(a1, 0);
  v77 = a1;
  v11 = __meshElementAtIndex(a1, 0);
  if (!C3DMeshGetSourceWithSemanticAtIndex(v10, 0, 0, 0))
  {
    Volatile = C3DMeshSourceCreateVolatile(0, 4, 1u);
    C3DMeshAddSource(v10, Volatile, 0, 0);
    CFRelease(Volatile);
  }

  if (!C3DMeshGetSourceWithSemanticAtIndex(v10, 3, 0, 0))
  {
    v13 = C3DMeshSourceCreateVolatile(3, 4, 1u);
    C3DMeshAddSource(v10, v13, 0, 0);
    CFRelease(v13);
  }

  if (!C3DMeshGetSourceWithSemanticAtIndex(v10, 3, 1, 0))
  {
    v14 = C3DMeshSourceCreateVolatile(3, 4, 1u);
    C3DMeshAddSource(v10, v14, 0, 0);
    CFRelease(v14);
  }

  if (!C3DMeshGetSourceWithSemanticAtIndex(v10, 2, 0, 0))
  {
    v15 = C3DMeshSourceCreateVolatile(2, 4, 1u);
    C3DMeshAddSource(v10, v15, 0, 0);
    CFRelease(v15);
  }

  SourceWithSemanticAtIndex = C3DMeshGetSourceWithSemanticAtIndex(v10, 0, 0, 1);
  v17 = C3DMeshGetSourceWithSemanticAtIndex(v10, 3, 0, 1);
  v18 = C3DMeshGetSourceWithSemanticAtIndex(v10, 3, 1, 1);
  v19 = C3DMeshGetSourceWithSemanticAtIndex(v10, 2, 0, 1);
  RenderContext = C3DEngineContextGetRenderContext(a5);
  v65 = RenderContext;
  if (RenderContext)
  {
    [(SCNMTLRenderContext *)RenderContext mapVolatileMesh:v10 verticesCount:2 * a3];
  }

  else
  {
    ResourceManager = C3DEngineContextGetResourceManager(a5);
    result = C3DRendererContextMapVolatileMesh(RendererContextGL, ResourceManager, v10, 2 * a3, 0);
    if (!result)
    {
      return result;
    }
  }

  v62 = 2 * a3;
  v63 = v10;
  v61 = RendererContextGL;
  v64 = v11;
  Accessor = C3DMeshSourceGetAccessor(SourceWithSemanticAtIndex);
  v23 = C3DMeshSourceGetAccessor(v17);
  v24 = C3DMeshSourceGetAccessor(v18);
  v25 = C3DMeshSourceGetAccessor(v19);
  VolatileValuePtrAtIndex = C3DSourceAccessorGetVolatileValuePtrAtIndex(Accessor, 0);
  Library = C3DSceneSourceGetLibrary(Accessor);
  v75 = a3;
  v28 = C3DSourceAccessorGetVolatileValuePtrAtIndex(v25, 0);
  v29 = C3DSceneSourceGetLibrary(v25);
  v30 = C3DSourceAccessorGetVolatileValuePtrAtIndex(v23, 0);
  v31 = C3DSceneSourceGetLibrary(v23);
  v32 = C3DSourceAccessorGetVolatileValuePtrAtIndex(v24, 0);
  v33 = C3DSceneSourceGetLibrary(v24);
  _C3DParticleSystemInstanceSort(v77, 0, 0);
  ParticleColorController = C3DParticleSystemGetParticleColorController(v77[6]);
  v72 = v77[65];
  v73 = ParticleColorController;
  v70 = v77[63];
  v71 = v77[66];
  v35 = v77[68];
  ParticleSize = C3DParticleSystemGetParticleSize(v77[6]);
  v69 = v77[70];
  ParticleColor = C3DParticleSystemGetParticleColor(v77[6]);
  v66 = v77[71];
  v79 = *ParticleColor;
  ParticleLifeSpan = C3DParticleSystemGetParticleLifeSpan(v77[6]);
  v39 = v35;
  v40 = 0;
  v41 = v75;
  v42 = 0uLL;
  v43 = 0uLL;
  v44 = 1.0 / ParticleLifeSpan;
  v67 = v75;
  v68 = v35;
  do
  {
    v45 = *(v39 + 4 * v40);
    if (v71)
    {
      v44 = *(v71 + 4 * v45);
    }

    if (v69)
    {
      ParticleSize = *(v69 + 4 * v45);
    }

    v46 = 1.0 - (v44 * *(v72 + 4 * v45));
    if (v73)
    {
      v78 = v40;
      v74 = v43;
      v76 = v42;
      C3DAnimationEvaluate(v73);
      v43 = v74;
      v42 = v76;
      v40 = v78;
      v41 = v67;
      v39 = v68;
      v47 = v70;
    }

    else
    {
      v47 = v70;
      if (v66)
      {
        v79 = *(v66 + 16 * v45);
      }
    }

    if (v40)
    {
      v42 = vsubq_f32(*(v47 + 16 * v45), v43);
    }

    v48 = v40 + 1;
    v49 = v42;
    if (v40 + 1 < v41)
    {
      v43 = *(v47 + 16 * v45);
      v49 = vsubq_f32(*(v47 + 16 * *(v39 + 4 * v48)), v43);
    }

    v50 = 0;
    v51 = 2 * (v40 & 0x7FFFFFFF);
    v52.i64[1] = *(&v79 + 1);
    v53 = 1;
    v54 = (v47 + 16 * v45);
    do
    {
      v55 = v50 | v51;
      v56 = (VolatileValuePtrAtIndex + Library * (v50 | v51));
      *v56 = *v54;
      v56[1] = v54[1];
      v56[2] = v54[2];
      v56[3] = v54[3];
      v57 = v32 + v33 * (v50 | v51);
      *v57 = v49.i64[0];
      *(v57 + 8) = v49.i32[2];
      v58 = dword_21C27F680[v50];
      v59 = v53;
      *(v57 + 12) = v58;
      v60 = v30 + v31 * (v50 | v51);
      *v60 = v46;
      *(v60 + 4) = ParticleSize;
      *(v60 + 8) = v46;
      *(v60 + 12) = v58;
      *(v28 + v29 * v55) = v79;
      v50 = 1;
      v53 = 0;
    }

    while ((v59 & 1) != 0);
    v43.i64[0] = 0;
    v52.i64[0] = v40;
    v42 = vbslq_s8(vdupq_lane_s64(vceqq_s64(v52, v43).i64[0], 0), v49, v42);
    v43 = *v54;
    ++v40;
  }

  while (v48 != v41);
  if (v65)
  {
    [(SCNMTLRenderContext *)v65 unmapVolatileMesh:v63 modifiedVerticesCount:-1];
  }

  else
  {
    C3DRendererContextUnmapVolatileMesh(v61, v63);
  }

  if (v62 - 2 != C3DMeshElementGetPrimitiveCount(v64))
  {
    C3DMeshElementInit(v64, 1, v62 - 2, 0, 0);
  }

  return 1;
}

void C3DParticleSystemInstancePushRendererElements(uint64_t a1, uint64_t *a2, uint64_t a3, int a4, float32x4_t *a5, uint64_t a6, int a7, int a8)
{
  *&v54[5] = *MEMORY[0x277D85DE8];
  if (!*(a1 + 1188))
  {
    return;
  }

  v14 = *(a1 + 40);
  v15 = v14 ? C3DNodeGetCategoryBitMask(*(a1 + 40)) : -1;
  if (a2[589] & v15 | ((a2[588] & v15) == 0))
  {
    return;
  }

  if (v14)
  {
    if (*(a2 + 4690) && (*(v14 + 222) & 0x40) == 0 || *(a2 + 4691) == 1 && (*(v14 + 222) & 0x40) != 0)
    {
      return;
    }
  }

  else if (*(a2 + 4690))
  {
    return;
  }

  v48 = *(a1 + 1186);
  v49 = *(a1 + 1184);
  v52 = *(a1 + 1188);
  v16 = &a2[2 * a6 + 614];
  if (*(a1 + 1120) != a4 || (*(a1 + 1124) & 1) != 0)
  {
    FogEndDistance = C3DSceneGetFogEndDistance(a2[591]);
    *(a1 + 1124) = C3DParticleSystemGetSortingMode(*(a1 + 48)) - 1 < 2;
    *(a1 + 1120) = a4;
    if (!v52)
    {
      return;
    }

    v18 = 0;
    v47 = *(a2 + 4693);
    while (1)
    {
      ElementInSpanAtIndex = C3DRendererElementStoreGetElementInSpanAtIndex(*(*a2 + 48), *(a1 + 1184), v18);
      Material = C3DParticleSystemGetMaterial(*(a1 + 48), *(a1 + 56), FogEndDistance > 0.0, a3, a7, a8);
      Technique = C3DMaterialGetTechnique(Material);
      v22 = *(ElementInSpanAtIndex + 32);
      if (v22 != Material)
      {
        if (v22)
        {
          CFRelease(v22);
          *(ElementInSpanAtIndex + 32) = 0;
        }

        if (Material)
        {
          v23 = CFRetain(Material);
        }

        else
        {
          v23 = 0;
        }

        *(ElementInSpanAtIndex + 32) = v23;
      }

      v24 = *(ElementInSpanAtIndex + 40);
      if (v24 != Technique)
      {
        if (v24)
        {
          CFRelease(v24);
          *(ElementInSpanAtIndex + 40) = 0;
        }

        if (Technique)
        {
          v25 = CFRetain(Technique);
        }

        else
        {
          v25 = 0;
        }

        *(ElementInSpanAtIndex + 40) = v25;
      }

      *(ElementInSpanAtIndex + 8) = *(a1 + 40);
      *(ElementInSpanAtIndex + 48) = a1;
      if ((C3DParticleSystemGetRenderingMode(*(a1 + 48)) & 0xFE) == 2)
      {
        if (_C3DParticleRender_Strip(a1, v26, *(a1 + 1104), v27, a3))
        {
          goto LABEL_36;
        }
      }

      else if (_C3DParticleRender_Quads(a1, a2, a3, a6, a7, a8))
      {
LABEL_36:
        C3DEnginePipelineSyncRendererElement(*a2, ElementInSpanAtIndex, -1);
        *(ElementInSpanAtIndex + 72) = *(ElementInSpanAtIndex + 72) & 0xFFEF | (16 * (C3DParticleSystemGetBlendMode(*(a1 + 48)) == 5));
        if (C3DParticleSystemGetLightingEnabled(*(a1 + 48)))
        {
          v28 = 64;
        }

        else
        {
          v28 = 0;
        }

        *(ElementInSpanAtIndex + 72) = *(ElementInSpanAtIndex + 72) & 0xFFBF | v28;
        if (!C3DEngineContextIsClusteredShadingEnabled(a3) && a5 && (*(ElementInSpanAtIndex + 72) & 0x40) != 0 && v47 != 0)
        {
          LightingSystem = C3DSceneGetLightingSystem(a2[591]);
          v31 = *(ElementInSpanAtIndex + 8);
          if (v31)
          {
            CategoryBitMask = C3DNodeGetCategoryBitMask(v31);
          }

          else
          {
            CategoryBitMask = -1;
          }

          C3DLightingSystemQuery(LightingSystem, a5, CategoryBitMask, (ElementInSpanAtIndex + 56));
        }

        if ((LODWORD(a2[2 * a6 + 615]) + 1) > HIDWORD(a2[2 * a6 + 615]))
        {
          v33 = scn_default_log();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
          {
            C3DParticleSystemInstancePushRendererElements_cold_1(v53, v54, v33);
          }
        }

        v34 = LODWORD(a2[2 * a6 + 615]);
        v35 = (*v16 + 4 * v34);
        *v35 = v49;
        v35[1] = v48 + v18;
        LODWORD(a2[2 * a6 + 615]) = v34 + 1;
      }

      if (v52 == ++v18)
      {
        return;
      }
    }
  }

  if ((LODWORD(a2[2 * a6 + 615]) + 1) > HIDWORD(a2[2 * a6 + 615]))
  {
    v36 = scn_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
    {
      C3DParticleSystemInstancePushRendererElements_cold_2(v36, v37, v38);
    }
  }

  v39 = LODWORD(a2[2 * a6 + 615]);
  v40 = (*v16 + 4 * v39);
  *v40 = v49;
  v40[1] = v48;
  LODWORD(a2[2 * a6 + 615]) = v39 + 1;
  if (!C3DEngineContextIsClusteredShadingEnabled(a3) && v52)
  {
    for (i = 0; i != v52; ++i)
    {
      v42 = C3DRendererElementStoreGetElementInSpanAtIndex(*(*a2 + 48), *(a1 + 1184), i);
      if (a5)
      {
        v43 = v42;
        if ((*(v42 + 72) & 0x40) != 0)
        {
          v44 = C3DSceneGetLightingSystem(a2[591]);
          v45 = *(v43 + 8);
          if (v45)
          {
            v46 = C3DNodeGetCategoryBitMask(v45);
          }

          else
          {
            v46 = -1;
          }

          C3DLightingSystemQuery(v44, a5, v46, (v43 + 56));
        }
      }
    }
  }
}

_DWORD *C3DParticleSystemInstanceSimulateLife(_DWORD *result, float a2)
{
  v2 = result;
  v3 = result[276];
  if (v3)
  {
    v5 = 0;
    v6 = *(result + 44);
    do
    {
      v7 = *(v6 + 4 * v5) - a2;
      *(v6 + 4 * v5) = v7;
      if (v7 >= 0.0)
      {
        ++v5;
      }

      else
      {
        if (v5 < v3)
        {
          while (*(v6 - 4 + 4 * v3) < a2)
          {
            if (v5 >= --v3)
            {
              v3 = v5;
              break;
            }
          }
        }

        if (v5 == v3)
        {
          LODWORD(v3) = v5;
          break;
        }

        result = __CopyParticle(v2 + 20, v5, --v3);
      }
    }

    while (v5 < v3);
  }

  v2[276] = v3;
  return result;
}

_DWORD *C3DParticleSystemInstanceSimulateLifeWithBlock(_DWORD *result, float a2)
{
  v2 = result;
  v19 = *MEMORY[0x277D85DE8];
  v3 = result[276];
  if (v3)
  {
    v5 = 0;
    v6 = *(result + 44);
    v7 = *(result + 59);
    v8 = v7;
    do
    {
      v9 = *(v6 + 4 * v5) - a2;
      *(v6 + 4 * v5) = v9;
      if (v9 < 0.0)
      {
        *v8++ = v5;
      }

      ++v5;
    }

    while (v3 != v5);
    v10 = v8 - v7;
    if (v8 != v7)
    {
      theArray = 0;
      EventBlock = C3DParticleSystemGetEventBlock(*(result + 6), 1u, &theArray);
      memset(v18, 0, 256);
      C3DParticleSystemInstanceFillUserData(*(v2 + 6), (v2 + 20), theArray, v18, v17, 0);
      result = (*(EventBlock + 16))(EventBlock, v18, v17, v7, v10);
    }

    if (v10 >= 1)
    {
      v12 = 0;
      v13 = v3;
      do
      {
        LODWORD(v3) = v7[v12];
        if (v3 < v13)
        {
          v14 = (v6 + 4 * (v13 - 1));
          while (*v14 < a2)
          {
            --v10;
            --v13;
            --v14;
            if (v3 >= v13)
            {
              goto LABEL_17;
            }
          }
        }

        if (v3 != v13)
        {
          v15 = v13 - 1;
          result = __CopyParticle(v2 + 20, v7[v12], v13 - 1);
          LODWORD(v3) = v15;
        }

LABEL_17:
        ++v12;
        v13 = v3;
      }

      while (v12 < v10);
    }
  }

  v2[276] = v3;
  return result;
}

unint64_t C3DParticleSystemInstanceFillUserData(unint64_t result, uint64_t a2, CFArrayRef theArray, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (theArray)
  {
    v11 = result;
    result = CFArrayGetCount(theArray);
    if (result >= 1)
    {
      v12 = result;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        result = C3DParticleSystemGetPropertyIndexAndStride(v11, ValueAtIndex);
        *(a4 + 8 * i) = *(a2 + 8 * result) + HIWORD(result) + WORD2(result) * a6;
        *(a5 + 8 * i) = WORD2(result);
      }
    }
  }

  return result;
}

void C3DParticleSystemInstanceSimulateLifeAndSpawnWhenDying(uint64_t a1, float a2)
{
  SystemSpawnedOnDying = C3DParticleSystemGetSystemSpawnedOnDying(*(a1 + 48));
  v5 = *(a1 + 1104);
  if (v5)
  {
    v6 = SystemSpawnedOnDying;
    v7 = 0;
    v9 = *(a1 + 344);
    v8 = *(a1 + 352);
    v10 = *(a1 + 336);
    do
    {
      v11 = *(v8 + 4 * v7) - a2;
      *(v8 + 4 * v7) = v11;
      if (v11 >= 0.0)
      {
        ++v7;
      }

      else
      {
        __SpawnSubSystem(*(a1 + 56), v6, *(v10 + 16 * v7), *(v9 + 16 * v7));
        if (v7 < v5)
        {
          while (*(v8 - 4 + 4 * v5) < a2)
          {
            if (v7 >= --v5)
            {
              v5 = v7;
              break;
            }
          }
        }

        if (v7 == v5)
        {
          LODWORD(v5) = v7;
          break;
        }

        __CopyParticle((a1 + 80), v7, --v5);
      }
    }

    while (v7 < v5);
  }

  *(a1 + 1104) = v5;
}

__n128 C3DParticleSystemInstanceAddEmitter(uint64_t a1, __int128 *a2, float32x4_t *a3)
{
  v6 = *(a1 + 24);
  if (v6 == *(a1 + 28))
  {
    if (v6)
    {
      v7 = 2 * v6;
    }

    else
    {
      v7 = 1;
    }

    *(a1 + 28) = v7;
    v8 = malloc_type_realloc(*(a1 + 16), 160 * v7, 0x1020040C96D2ADFuLL);
    *(a1 + 16) = v8;
    v6 = *(a1 + 24);
  }

  else
  {
    v8 = *(a1 + 16);
  }

  *(a1 + 24) = v6 + 1;
  v9 = &v8[160 * v6];
  *(v9 + 8) = 0u;
  *(v9 + 9) = 0u;
  *(v9 + 6) = 0u;
  *(v9 + 7) = 0u;
  *(v9 + 4) = 0u;
  *(v9 + 5) = 0u;
  *(v9 + 2) = 0u;
  *(v9 + 3) = 0u;
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  if (a3)
  {
    *(v9 + 3) = a3;
    WorldMatrix = C3DNodeGetWorldMatrix(a3);
  }

  else
  {
    if (a2)
    {
      v14 = *a2;
      v15 = a2[1];
      v16 = a2[3];
      *(v9 + 4) = a2[2];
      *(v9 + 5) = v16;
      *(v9 + 2) = v14;
      *(v9 + 3) = v15;
      goto LABEL_12;
    }

    WorldMatrix = C3DMatrix4x4GetIdentity();
  }

  v11 = WorldMatrix[3];
  v13 = *WorldMatrix;
  v12 = WorldMatrix[1];
  *(v9 + 4) = WorldMatrix[2];
  *(v9 + 5) = v11;
  *(v9 + 2) = v13;
  *(v9 + 3) = v12;
LABEL_12:
  if (*(a1 + 40) != a3)
  {
    if (C3DParticleSystemGetIsLocal(*(a1 + 48)))
    {
      v17 = *(a1 + 40);
      if (v17)
      {
        memset(&v22, 0, sizeof(v22));
        v18 = C3DNodeGetWorldMatrix(v17);
        C3DMatrix4x4Invert(v18, &v22);
        C3DMatrix4x4Mult(&v22, v9 + 2, v9 + 2);
      }
    }
  }

  v19 = *(v9 + 3);
  *(v9 + 6) = *(v9 + 2);
  *(v9 + 7) = v19;
  result = *(v9 + 4);
  v21 = *(v9 + 5);
  *(v9 + 8) = result;
  *(v9 + 9) = v21;
  return result;
}

uint64_t C3DParticleSystemInstanceRemoveEmittersWithNode(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = *(result + 16);
      if (*(v5 + 160 * v4 + 24) != a2)
      {
        v6 = v4 + 1;
        v7 = v6 - 1;
        v8 = (v5 + 160 * v6 + 24);
        while (v6 < v2)
        {
          v9 = *v8;
          v8 += 20;
          ++v7;
          LODWORD(v6) = v6 + 1;
          if (v9 == a2)
          {
            v3 = 1;
            v4 = v7;
            goto LABEL_9;
          }
        }

        goto LABEL_13;
      }

      v7 = v4;
LABEL_9:
      *(result + 24) = --v2;
      if (v4 < v2)
      {
        v10 = (v5 + 160 * v7);
        v11 = (v5 + 160 * v2);
        v12 = v11[1];
        *v10 = *v11;
        v10[1] = v12;
        v13 = v11[2];
        v14 = v11[3];
        v15 = v11[5];
        v10[4] = v11[4];
        v10[5] = v15;
        v10[2] = v13;
        v10[3] = v14;
        v16 = v11[6];
        v17 = v11[7];
        v18 = v11[9];
        v10[8] = v11[8];
        v10[9] = v18;
        v10[6] = v16;
        v10[7] = v17;
        v2 = *(result + 24);
      }
    }

    while (v4 < v2);
    if ((v3 & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    *(result + 32) = 0;
  }

  else
  {
LABEL_14:
    if (*(result + 1104))
    {
      v19 = 1;
    }

    else
    {
      v19 = 2;
    }

    *(result + 32) = v19;
  }

  return result;
}

void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, a5, 0xCu);
}

float *C3DColor4Make(float *result, float a2, float a3, float a4, float a5)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  result[3] = a5;
  return result;
}

float C3DColor4Lerp(float *a1, float *a2, float *a3, float a4)
{
  *a3 = *a1 + ((*a2 - *a1) * a4);
  a3[1] = a1[1] + ((a2[1] - a1[1]) * a4);
  a3[2] = a1[2] + ((a2[2] - a1[2]) * a4);
  result = a1[3] + ((a2[3] - a1[3]) * a4);
  a3[3] = result;
  return result;
}

float C3DColor4Add(float *a1, float *a2, float *a3)
{
  *a3 = *a1 + *a2;
  a3[1] = a1[1] + a2[1];
  a3[2] = a1[2] + a2[2];
  result = a1[3] + a2[3];
  a3[3] = result;
  return result;
}

BOOL C3DColor4InitWithPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, CFErrorRef *a4)
{
  if (!a1 || !a2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      C3DColor4InitWithPropertyList_cold_1();
      if (!a4)
      {
        return 0;
      }
    }

    else if (!a4)
    {
      return 0;
    }

    if (!*a4)
    {
      MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
      result = 0;
      *a4 = MalformedDocumentError;
      return result;
    }

    return 0;
  }

  if (C3DInitC3DFloatArrayWithPropertyList(a2, a1, a4))
  {
    return 1;
  }

  v7 = scn_default_log();
  result = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
  if (result)
  {
    C3DColor4InitWithPropertyList_cold_2();
    return 0;
  }

  return result;
}

uint64_t C3DColor4CopyPropertyList(uint64_t result)
{
  if (result)
  {
    return C3DCreatePropertyListFromC3DFloatBuffer(result, 4);
  }

  return result;
}

float C3DColor4Sub(float *a1, float *a2, float *a3)
{
  *a3 = *a1 - *a2;
  a3[1] = a1[1] - a2[1];
  a3[2] = a1[2] - a2[2];
  result = a1[3] - a2[3];
  a3[3] = result;
  return result;
}

float C3DColor4Distance(float *a1, float *a2)
{
  v2 = a1[1] - a2[1];
  v3 = a1[2] - a2[2];
  v4 = a1[3] - a2[3];
  return sqrtf((((v2 * v2) + ((*a1 - *a2) * (*a1 - *a2))) + (v3 * v3)) + (v4 * v4));
}

unint64_t C3DColor4RGB2HSB(uint64_t a1, int a2)
{
  if (*&a1 <= *(&a1 + 1))
  {
    v2 = *(&a1 + 1);
  }

  else
  {
    v2 = *&a1;
  }

  if (*&a1 >= *(&a1 + 1))
  {
    v3 = *(&a1 + 1);
  }

  else
  {
    v3 = *&a1;
  }

  if (v2 <= *&a2)
  {
    v2 = *&a2;
  }

  if (v3 >= *&a2)
  {
    v3 = *&a2;
  }

  v4 = v2 - v3;
  if (v2 == 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = COERCE_UNSIGNED_INT(v4 / v2);
  }

  if (v4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v6 = ((*&a1 - *(&a1 + 1)) / v4) + 4.0;
    if (v2 == *(&a1 + 1))
    {
      v6 = ((*&a2 - *&a1) / v4) + 2.0;
    }

    if (v2 == *&a1)
    {
      v7 = (*(&a1 + 1) - *&a2) / v4;
    }

    else
    {
      v7 = v6;
    }

    v8 = v7 * 60.0;
    if (v8 < 0.0)
    {
      v8 = v8 + 360.0;
    }
  }

  return COERCE_UNSIGNED_INT(v8 / 360.0) | (v5 << 32);
}

unint64_t C3DColor4HSB2RGB(uint64_t a1, int a2)
{
  if (*(&a1 + 1) <= 1.0)
  {
    v2 = *(&a1 + 1);
  }

  else
  {
    v2 = 1.0;
  }

  v3 = 0.0;
  if (*(&a1 + 1) < 0.0)
  {
    v2 = 0.0;
  }

  if (*&a2 <= 1.0)
  {
    v4 = *&a2;
  }

  else
  {
    v4 = 1.0;
  }

  if (*&a2 < 0.0)
  {
    v4 = 0.0;
  }

  if (v2 != 0.0)
  {
    if (*&a1 <= 1.0)
    {
      v7 = *&a1;
    }

    else
    {
      v7 = 1.0;
    }

    v8 = v7 * 360.0;
    if (*&a1 >= 0.0)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0.0;
    }

    if (v9 != 360.0)
    {
      v3 = v9 / 60.0;
    }

    v10 = v3;
    v11 = v3 - v3;
    v12 = v4 * (1.0 - v2);
    v13 = v4 * (1.0 - (v2 * v11));
    v14 = v4 * (1.0 - (v2 * (1.0 - v11)));
    if (v10 > 1)
    {
      switch(v10)
      {
        case 2:
          v5 = v4;
          break;
        case 3:
          v5 = v13;
          break;
        case 4:
          v5 = v4 * (1.0 - v2);
          v4 = v14;
          return LODWORD(v4) | (LODWORD(v5) << 32);
        default:
LABEL_34:
          v5 = v4 * (1.0 - v2);
          return LODWORD(v4) | (LODWORD(v5) << 32);
      }

      v4 = v12;
      return LODWORD(v4) | (LODWORD(v5) << 32);
    }

    if (!v10)
    {
      v5 = v14;
      return LODWORD(v4) | (LODWORD(v5) << 32);
    }

    if (v10 == 1)
    {
      v5 = v4;
      v4 = v13;
      return LODWORD(v4) | (LODWORD(v5) << 32);
    }

    goto LABEL_34;
  }

  v5 = v4;
  return LODWORD(v4) | (LODWORD(v5) << 32);
}

uint64_t C3DGetColorTransformToGlobalColorSpace()
{
  IsEnabled = C3DLinearRenderingIsEnabled();
  IsUsed = C3DWideGamutIsUsed();
  if (IsEnabled)
  {
    if (IsUsed)
    {
      if (C3DGetColorTransformToExtendedLinearSRGB_onceToken != -1)
      {
        C3DGetColorTransformToGlobalColorSpace_cold_4();
      }

      v2 = &C3DGetColorTransformToExtendedLinearSRGB_colorTransform;
    }

    else
    {
      if (C3DGetColorTransformToLinearSRGB_onceToken != -1)
      {
        C3DGetColorTransformToGlobalColorSpace_cold_3();
      }

      v2 = &C3DGetColorTransformToLinearSRGB_colorTransform;
    }
  }

  else if (IsUsed)
  {
    if (C3DGetColorTransformToExtendedSRGB_onceToken != -1)
    {
      C3DGetColorTransformToGlobalColorSpace_cold_2();
    }

    v2 = &C3DGetColorTransformToExtendedSRGB_colorTransform;
  }

  else
  {
    if (C3DGetColorTransformToSRGB_onceToken != -1)
    {
      C3DGetColorTransformToGlobalColorSpace_cold_1();
    }

    v2 = &C3DGetColorTransformToSRGB_colorTransform;
  }

  return *v2;
}

__n128 _C3DCGColorGetComponentsInColorSpace(CGColorRef color, CGColorSpace *a2)
{
  if (!color)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DCGColorGetComponentsInColorSpace_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (CGColorGetColorSpace(color) == a2)
  {
    v12 = CGColorRetain(color);
  }

  else
  {
    v12 = CGColorTransformConvertColor();
  }

  v13 = v12;
  NumberOfComponents = CGColorGetNumberOfComponents(v12);
  Components = CGColorGetComponents(v13);
  if (NumberOfComponents < 4)
  {
    v17 = xmmword_21C27F610;
    if (NumberOfComponents)
    {
      if (NumberOfComponents == 3)
      {
        goto LABEL_9;
      }

      if (NumberOfComponents == 2)
      {
        *&v20 = Components->f64[1];
        v17.i32[3] = v20;
      }

      *&v21 = Components->f64[0];
      v17.i32[0] = v21;
      v17.i32[1] = v21;
      v17.i32[2] = v21;
    }

    v23 = v17;
    goto LABEL_16;
  }

  *&v16 = Components[1].f64[1];
  v17.i64[0] = 0;
  v17.i32[2] = 0;
  v17.i32[3] = v16;
LABEL_9:
  *v18.i8 = vcvt_f32_f64(*Components);
  v18.i32[3] = vextq_s8(v17, v17, 8uLL).i32[1];
  *&v19 = Components[1].f64[0];
  v18.i32[2] = v19;
  v23 = v18;
LABEL_16:
  CGColorRelease(v13);
  return v23;
}

uint64_t C3DColorSpaceSRGB()
{
  if (C3DColorSpaceSRGB_onceToken != -1)
  {
    C3DColorSpaceSRGB_cold_1();
  }

  return C3DColorSpaceSRGB_kC3DColorSpaceSRGB;
}

uint64_t C3DColorSpaceLinearSRGB()
{
  if (C3DColorSpaceLinearSRGB_onceToken != -1)
  {
    C3DColorSpaceLinearSRGB_cold_1();
  }

  return C3DColorSpaceLinearSRGB_kC3DColorSpaceLinearSRGB;
}

uint64_t C3DColorSpaceExtendedLinearSRGB()
{
  if (C3DColorSpaceExtendedLinearSRGB_onceToken != -1)
  {
    C3DColorSpaceExtendedLinearSRGB_cold_1();
  }

  return C3DColorSpaceExtendedLinearSRGB_kC3DColorSpaceExtendedLinearSRGB;
}

double C3DCGColorGetLinearExtendedSRGBComponents(CGColorRef color)
{
  if (C3DColorSpaceExtendedLinearSRGB_onceToken != -1)
  {
    C3DColorSpaceExtendedLinearSRGB_cold_1();
  }

  v2 = C3DColorSpaceExtendedLinearSRGB_kC3DColorSpaceExtendedLinearSRGB;
  if (C3DGetColorTransformToExtendedLinearSRGB_onceToken != -1)
  {
    C3DGetColorTransformToGlobalColorSpace_cold_4();
  }

  *&result = _C3DCGColorGetComponentsInColorSpace(color, v2).n128_u64[0];
  return result;
}

uint64_t C3DColorSpaceLinearDisplayP3()
{
  if (C3DColorSpaceLinearDisplayP3_onceToken != -1)
  {
    C3DColorSpaceLinearDisplayP3_cold_1();
  }

  return C3DColorSpaceLinearDisplayP3_kC3DColorSpaceLinearDisplayP3;
}

double C3DCGColorGetITUR_709Components(CGColorRef color)
{
  if (C3DColorSpaceITUR_709_onceToken != -1)
  {
    C3DCGColorGetITUR_709Components_cold_1();
  }

  v2 = C3DColorSpaceITUR_709_kC3DColorSpaceITUR_709;
  if (C3DGetColorTransformToITUR_709_onceToken != -1)
  {
    C3DCGColorGetITUR_709Components_cold_2();
  }

  *&result = _C3DCGColorGetComponentsInColorSpace(color, v2).n128_u64[0];
  return result;
}

uint64_t C3DColorSpaceITUR_709()
{
  if (C3DColorSpaceITUR_709_onceToken != -1)
  {
    C3DCGColorGetITUR_709Components_cold_1();
  }

  return C3DColorSpaceITUR_709_kC3DColorSpaceITUR_709;
}

CGColorRef C3DCGColorCreateExtendedSRGBWithCGColor(CGColorRef color)
{
  if (!color)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DCGColorGetComponentsInColorSpace_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (C3DColorSpaceExtendedSRGB_onceToken != -1)
  {
    C3DCGColorCreateExtendedSRGBWithCGColor_cold_2();
  }

  v10 = C3DColorSpaceExtendedSRGB_kC3DColorSpaceExtendedSRGB;
  if (CGColorGetColorSpace(color) == v10)
  {
    return CGColorRetain(color);
  }

  if (C3DGetColorTransformToExtendedSRGB_onceToken != -1)
  {
    C3DCGColorCreateExtendedSRGBWithCGColor_cold_3();
  }

  return CGColorTransformConvertColor();
}

uint64_t C3DColorSpaceExtendedSRGB()
{
  if (C3DColorSpaceExtendedSRGB_onceToken != -1)
  {
    C3DColorSpaceExtendedSRGB_cold_1();
  }

  return C3DColorSpaceExtendedSRGB_kC3DColorSpaceExtendedSRGB;
}

CGColorRef C3DCGColorCreateExtendedLinearSRGBWithComponents(float32x4_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = vcvtq_f64_f32(*a1.f32);
  v2[1] = vcvt_hight_f64_f32(a1);
  if (C3DColorSpaceExtendedLinearSRGB_onceToken != -1)
  {
    C3DColorSpaceExtendedLinearSRGB_cold_1();
  }

  return CGColorCreate(C3DColorSpaceExtendedLinearSRGB_kC3DColorSpaceExtendedLinearSRGB, v2);
}

CGColorRef C3DCGColorCreateExtendedSRGBWithC3DColor(uint64_t a1, unint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a2;
  if (C3DLinearRenderingIsEnabled())
  {
    C3DColor4ConvertToNonLinear(&v7);
    v4 = v7;
    v5 = v8;
  }

  else
  {
    v4 = a1;
    v5 = vzip1_s32(a2, HIDWORD(a2));
  }

  *components = vcvtq_f64_f32(v4);
  v10 = vcvtq_f64_f32(v5);
  if (C3DColorSpaceExtendedSRGB_onceToken != -1)
  {
    C3DColorSpaceExtendedSRGB_cold_1();
  }

  return CGColorCreate(C3DColorSpaceExtendedSRGB_kC3DColorSpaceExtendedSRGB, components);
}

float64_t C3DColor4ConvertToNonLinear(uint64_t a1)
{
  v3.f64[0] = 0.0;
  v3.f64[1] = vcvtq_f64_f32(*(a1 + 8)).f64[1];
  if (C3DWideGamutIsUsed())
  {
    if (C3DGetColorTransformToExtendedSRGB_onceToken != -1)
    {
      C3DGetColorTransformToGlobalColorSpace_cold_2();
    }

    if (C3DColorSpaceExtendedLinearSRGB_onceToken != -1)
    {
      C3DColorSpaceExtendedLinearSRGB_cold_1();
    }
  }

  else
  {
    if (C3DGetColorTransformToSRGB_onceToken != -1)
    {
      C3DGetColorTransformToGlobalColorSpace_cold_1();
    }

    if (C3DColorSpaceLinearSRGB_onceToken != -1)
    {
      C3DColorSpaceLinearSRGB_cold_1();
    }
  }

  CGColorTransformConvertColorComponents();
  result = v3.f64[0];
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(0), v3);
  return result;
}

float64_t C3DColor4ConvertToLinear(uint64_t a1)
{
  v3.f64[0] = 0.0;
  v3.f64[1] = vcvtq_f64_f32(*(a1 + 8)).f64[1];
  if (C3DWideGamutIsUsed())
  {
    if (C3DGetColorTransformToExtendedLinearSRGB_onceToken != -1)
    {
      C3DGetColorTransformToGlobalColorSpace_cold_4();
    }

    if (C3DColorSpaceExtendedSRGB_onceToken != -1)
    {
      C3DColorSpaceExtendedSRGB_cold_1();
    }
  }

  else
  {
    if (C3DGetColorTransformToLinearSRGB_onceToken != -1)
    {
      C3DGetColorTransformToGlobalColorSpace_cold_3();
    }

    if (C3DColorSpaceSRGB_onceToken != -1)
    {
      C3DColorSpaceSRGB_cold_1();
    }
  }

  CGColorTransformConvertColorComponents();
  result = v3.f64[0];
  *a1 = vcvt_hight_f32_f64(vcvt_f32_f64(0), v3);
  return result;
}

CGColorSpaceRef __C3DColorSpaceSRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  C3DColorSpaceSRGB_kC3DColorSpaceSRGB = result;
  return result;
}

uint64_t C3DColorSpaceGray()
{
  if (C3DColorSpaceGray_onceToken != -1)
  {
    C3DColorSpaceGray_cold_1();
  }

  return C3DColorSpaceGray_kC3DColorSpaceGray;
}

CGColorSpaceRef __C3DColorSpaceGray_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF448]);
  C3DColorSpaceGray_kC3DColorSpaceGray = result;
  return result;
}

uint64_t C3DColorSpaceLinearGray()
{
  if (C3DColorSpaceLinearGray_onceToken != -1)
  {
    C3DColorSpaceLinearGray_cold_1();
  }

  return C3DColorSpaceLinearGray_kC3DColorSpaceLinearGray;
}

CGColorSpaceRef __C3DColorSpaceLinearGray_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF498]);
  C3DColorSpaceLinearGray_kC3DColorSpaceLinearGray = result;
  return result;
}

CGColorSpaceRef __C3DColorSpaceExtendedSRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF430]);
  C3DColorSpaceExtendedSRGB_kC3DColorSpaceExtendedSRGB = result;
  return result;
}

CGColorSpaceRef __C3DColorSpaceExtendedLinearSRGB_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF428]);
  C3DColorSpaceExtendedLinearSRGB_kC3DColorSpaceExtendedLinearSRGB = result;
  return result;
}

CGColorSpaceRef __C3DColorSpaceLinearDisplayP3_block_invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x277CBF490]);
  C3DColorSpaceLinearDisplayP3_kC3DColorSpaceLinearDisplayP3 = result;
  return result;
}

uint64_t C3DGetGlobalColorSpace()
{
  IsEnabled = C3DLinearRenderingIsEnabled();
  IsUsed = C3DWideGamutIsUsed();
  if (IsEnabled)
  {
    if (IsUsed)
    {
      if (C3DColorSpaceExtendedLinearSRGB_onceToken != -1)
      {
        C3DColorSpaceExtendedLinearSRGB_cold_1();
      }

      v2 = &C3DColorSpaceExtendedLinearSRGB_kC3DColorSpaceExtendedLinearSRGB;
    }

    else
    {
      if (C3DColorSpaceLinearSRGB_onceToken != -1)
      {
        C3DColorSpaceLinearSRGB_cold_1();
      }

      v2 = &C3DColorSpaceLinearSRGB_kC3DColorSpaceLinearSRGB;
    }
  }

  else if (IsUsed)
  {
    if (C3DColorSpaceExtendedSRGB_onceToken != -1)
    {
      C3DColorSpaceExtendedSRGB_cold_1();
    }

    v2 = &C3DColorSpaceExtendedSRGB_kC3DColorSpaceExtendedSRGB;
  }

  else
  {
    if (C3DColorSpaceSRGB_onceToken != -1)
    {
      C3DColorSpaceSRGB_cold_1();
    }

    v2 = &C3DColorSpaceSRGB_kC3DColorSpaceSRGB;
  }

  return *v2;
}

void C3DGetColorMatchingComputeKernelParameters(CGColorSpaceRef a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = 0;
  v25 = &v24;
  v26 = 0xA000000000;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2000000000;
  v23 = -1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = -1;
  v4 = CGColorConversionInfoCreateFromList(0, a1, kCGColorConversionTransformFromSpace, kCGRenderingIntentDefault, a2, 1, 0, 0);
  if (v4)
  {
    v5 = v4;
    if ((CGColorConversionInfoIterateFunctionsWithCallbacks() & 1) == 0)
    {
      v6 = scn_default_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        C3DGetColorMatchingComputeKernelParameters_cold_1();
      }

      v7 = v25;
      *(v25 + 16) = 0;
      *(v7 + 34) = 0;
    }

    CFRelease(v5);
  }

  else
  {
    v8 = scn_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      C3DGetColorMatchingComputeKernelParameters_cold_2();
    }
  }

  if ((*(v25 + 33) & 1) == 0)
  {
    if (!*(v25 + 34) && (v25[4] & 1) != 0 && *(v21 + 6) == 1)
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
LABEL_19:
        C3DGetColorMatchingComputeKernelParameters_cold_3();
      }
    }

    else if (!*(v25 + 32))
    {
      if (*(v25 + 34))
      {
        if (*(v17 + 6) == 4)
        {
          v10 = scn_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_19;
          }
        }
      }
    }
  }

  v11 = v25;
  v12 = *(v25 + 7);
  a3[4] = *(v25 + 6);
  a3[5] = v12;
  v13 = *(v11 + 9);
  a3[6] = *(v11 + 8);
  a3[7] = v13;
  v14 = *(v11 + 3);
  *a3 = *(v11 + 2);
  a3[1] = v14;
  v15 = *(v11 + 5);
  a3[2] = *(v11 + 4);
  a3[3] = v15;
  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);
}

uint64_t __C3DGetColorMatchingComputeKernelParameters_block_invoke(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  v8 = *(*(a2 + 52) + 8 * *a5);
  if (a4 >= 2)
  {
    v9 = a4 - 1;
    v10 = a5 + 1;
    do
    {
      v11 = *v10++;
      if (*(*(a2 + 52) + 8 * v11) != v8)
      {
        v12 = scn_default_log();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          __C3DGetColorMatchingComputeKernelParameters_block_invoke_cold_1(buf, v18, v12);
        }
      }

      --v9;
    }

    while (v9);
  }

  v13 = CGColorTRCGetGammaID();
  if (v13 == 7)
  {
    return 1;
  }

  v15 = v13;
  CGColorTRCGetFunction();
  if (!a3)
  {
    *(*(a1[4] + 8) + 24) = v15;
    *(*(a1[5] + 8) + 32) = 1;
    *(*(a1[5] + 8) + 36) = 0;
    *(*(a1[5] + 8) + 40) = 0;
    *(*(a1[5] + 8) + 44) = 0;
    *(*(a1[5] + 8) + 48) = 0;
    *(*(a1[5] + 8) + 52) = 0;
    *(*(a1[5] + 8) + 56) = 0;
    *(*(a1[5] + 8) + 60) = 0;
    *(*(a1[5] + 8) + 64) = 0;
    return 1;
  }

  if (*(a2 + 4) - 1 == a3)
  {
    *(*(a1[6] + 8) + 24) = v15;
    *(*(a1[5] + 8) + 34) = 1;
    *(*(a1[5] + 8) + 128) = 0;
    *(*(a1[5] + 8) + 132) = 0;
    *(*(a1[5] + 8) + 136) = 0;
    *(*(a1[5] + 8) + 140) = 0;
    *(*(a1[5] + 8) + 144) = 0;
    *(*(a1[5] + 8) + 148) = 0;
    *(*(a1[5] + 8) + 152) = 0;
    *(*(a1[5] + 8) + 156) = 0;
    return 1;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    __C3DGetColorMatchingComputeKernelParameters_block_invoke_cold_3();
  }

  return 0;
}

BOOL __C3DGetColorMatchingComputeKernelParameters_block_invoke_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 36);
  if (v2 == 1)
  {
    *(*(*(a1 + 32) + 8) + 33) = 1;
    memset(v9, 0, 24);
    CGColorMatrixGetMatrix();
    v4 = 0u;
    DWORD1(v4) = 0;
    DWORD2(v4) = 0;
    *(*(*(a1 + 32) + 8) + 80) = v4;
    v5 = *(v9 + 4);
    DWORD1(v5) = 0;
    DWORD2(v5) = 0;
    *(*(*(a1 + 32) + 8) + 96) = v5;
    v6 = *(v9 + 8);
    DWORD1(v6) = 0;
    DWORD2(v6) = 0;
    *(*(*(a1 + 32) + 8) + 112) = v6;
  }

  else
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __C3DGetColorMatchingComputeKernelParameters_block_invoke_29_cold_1();
    }
  }

  return v2 == 1;
}

uint64_t __C3DGetColorMatchingComputeKernelParameters_block_invoke_32()
{
  v0 = scn_default_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __C3DGetColorMatchingComputeKernelParameters_block_invoke_32_cold_1();
  }

  return 0;
}

uint64_t __C3DGetColorTransformToExtendedLinearSRGB_block_invoke()
{
  if (C3DColorSpaceExtendedLinearSRGB_onceToken != -1)
  {
    C3DColorSpaceExtendedLinearSRGB_cold_1();
  }

  result = MEMORY[0x21CF06B50](C3DColorSpaceExtendedLinearSRGB_kC3DColorSpaceExtendedLinearSRGB, 0);
  C3DGetColorTransformToExtendedLinearSRGB_colorTransform = result;
  return result;
}

uint64_t __C3DGetColorTransformToExtendedSRGB_block_invoke()
{
  if (C3DColorSpaceExtendedSRGB_onceToken != -1)
  {
    C3DColorSpaceExtendedSRGB_cold_1();
  }

  result = MEMORY[0x21CF06B50](C3DColorSpaceExtendedSRGB_kC3DColorSpaceExtendedSRGB, 0);
  C3DGetColorTransformToExtendedSRGB_colorTransform = result;
  return result;
}

uint64_t __C3DGetColorTransformToSRGB_block_invoke()
{
  if (C3DColorSpaceSRGB_onceToken != -1)
  {
    C3DColorSpaceSRGB_cold_1();
  }

  result = MEMORY[0x21CF06B50](C3DColorSpaceSRGB_kC3DColorSpaceSRGB, 0);
  C3DGetColorTransformToSRGB_colorTransform = result;
  return result;
}

C3D::RenderPass *C3D::DownsamplePass::DownsamplePass(C3D::DownsamplePass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC2538;
  return result;
}

double C3D::DownsamplePass::setup(C3D::DownsamplePass *this)
{
  SuperSamplingFactor = C3DEngineContextGetSuperSamplingFactor(*(this + 2));
  C3D::Pass::setInputCount(this, 1u);
  v3 = (*(*this + 88))(this);
  v4 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v4 + 8) = "COLOR";
  C3D::Pass::parentColorDesc(this, &v7);
  *(v4 + 16) = v7;
  *(v4 + 32) = v8;
  *(v4 + 16) = vcvtms_s32_f32(SuperSamplingFactor * *(v3 + 8));
  *(v4 + 18) = vcvtms_s32_f32(SuperSamplingFactor * *(v3 + 12));
  C3D::Pass::setOutputCount(this, 1u);
  v5 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v5 + 8) = "COLOR";
  *(v5 + 65) = 0;
  C3D::Pass::parentColorDesc(this, &v7);
  result = *&v7;
  *(v5 + 16) = v7;
  *(v5 + 32) = v8;
  return result;
}

uint64_t C3D::DownsamplePass::compile(C3D::DownsamplePass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = (*(*this + 88))(this);
  v4 = *(*(this + 3) + 128);
  v5 = *(v3 + 24);
  v6 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))));
  result = C3D::RenderGraphResourceManager::get(v4, (0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) >> 47));
  *(this + 30) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::DownsamplePass::execute(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  RenderContext = C3DEngineContextGetRenderContext(a1[2]);
  [(SCNMTLRenderContext *)RenderContext screenTransform];
  SuperSamplingFactor = C3DEngineContextGetSuperSamplingFactor(a1[2]);
  v5 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a1[30] + 16) :"state" detail:? :?NSRetainFct];
  if (*(v3 + 3376) != v5)
  {
    *(v3 + 3376) = v5;
    [*(v3 + 3392) setRenderPipelineState:v5];
  }

  v6 = C3D::Pass::inputTextureAtIndex(a1, 0);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v6, 0);
  SCNMTLRenderCommandEncoder::setVertexBytes(v3, &v8, 0x50uLL, 0);
  SCNMTLRenderCommandEncoder::setFragmentBytes(v3, &v8, 0x50uLL, 0);
  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v3);
}

uint64_t SCNMTLRenderCommandEncoder::setVertexBytes(SCNMTLRenderCommandEncoder *this, const void *a2, size_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  SCNMTLBufferPool::allocateAndCopy(this->var25[0], a2, a3, &v7);
  return SCNMTLRenderCommandEncoder::setVertexBuffer(this, v8, v9, a4);
}

uint64_t SCNMTLRenderCommandEncoder::setFragmentBytes(SCNMTLRenderCommandEncoder *this, const void *a2, size_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  SCNMTLBufferPool::allocateAndCopy(this->var25[0], a2, a3, &v7);
  return SCNMTLRenderCommandEncoder::setFragmentBuffer(this, v8, v9, a4);
}

void C3D::DownsamplePassResource::~DownsamplePassResource(C3D::DownsamplePassResource *this)
{
  *this = &unk_282DC25A8;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC25A8;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t SCNMTLRenderCommandEncoder::setVertexBuffer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = result + 16 * a4;
  v6 = *(v4 + 80);
  v5 = (v4 + 80);
  if (v6 == a2)
  {
    if (v5[1] != a3)
    {
      v5[1] = a3;
      return [*(result + 3392) setVertexBufferOffset:a3 atIndex:a4];
    }
  }

  else
  {
    *v5 = a2;
    v5[1] = a3;
    return [*(result + 3392) setVertexBuffer:a2 offset:? atIndex:?];
  }

  return result;
}

uint64_t SCNMTLRenderCommandEncoder::setFragmentBuffer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = (result + 16 * a4 + 1728);
  if (*v4 == a2)
  {
    if (*(result + 16 * a4 + 1736) != a3)
    {
      *(result + 16 * a4 + 1736) = a3;
      return [*(result + 3392) setFragmentBufferOffset:a3 atIndex:a4];
    }
  }

  else
  {
    *v4 = a2;
    *(result + 16 * a4 + 1736) = a3;
    return [*(result + 3392) setFragmentBuffer:a2 offset:? atIndex:?];
  }

  return result;
}

void C3DNotifyGeometryDidChange(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1)
  {
    CFSetApplyFunction(v1, __C3DNodeGeometryDidChange, 0);
  }
}

id _C3DGeometryCFFinalize(__C3DGeometry *a1)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance();
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationGeometryWillDie", a1, 0, 1u);
  C3DGeometryFinalizeSubdivision(a1);
  var4 = a1->var4;
  if (var4)
  {
    if (CFSetGetCount(var4))
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        _C3DGeometryCFFinalize_cold_1(a1, v4);
      }
    }

    v5 = a1->var4;
    if (v5)
    {
      CFRelease(v5);
      a1->var4 = 0;
    }
  }

  var3 = a1->var3;
  if (var3)
  {
    CFRelease(var3);
    a1->var3 = 0;
  }

  var2 = a1->var2;
  if (var2)
  {
    CFRelease(var2);
    a1->var2 = 0;
  }

  var1 = a1->var1;
  if (var1)
  {
    CFRelease(var1);
    a1->var1 = 0;
  }

  var5 = a1->var5;
  if (var5)
  {
    CFRelease(var5);
    a1->var5 = 0;
  }

  var6 = a1->var6;
  if (var6)
  {
    free(var6);
  }

  a1->var6 = 0;
  return C3DEntityCFFinalize(a1);
}

__CFString *_C3DGeometryCFCopyDebugDescription(const void *a1)
{
  v2 = CFGetTypeID(a1);
  v3 = CFCopyTypeIDDescription(v2);
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DGeometryGetName(a1);
  CFStringAppendFormat(Mutable, 0, @"<%@:%p %@\n", v3, a1, Name);
  Mesh = C3DGeometryGetMesh(a1);
  CFStringAppendFormat(Mutable, 0, @"  mesh: %@\n", Mesh);
  if (C3DGeometryGetMaterialsCount(a1) >= 1)
  {
    v7 = 0;
    do
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, v7);
      CFStringAppendFormat(Mutable, 0, @"  mat%d: %@\n", v7++, MaterialAtIndex);
    }

    while (v7 < C3DGeometryGetMaterialsCount(a1));
  }

  CFStringAppend(Mutable, @">");
  CFRelease(v3);
  return Mutable;
}

uint64_t C3DGeometryGetName(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEntityGetName(a1);
}

uint64_t C3DGeometryGetMesh(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 120);
  if (v10)
  {
    (*v10)(a1);
  }

  return *(a1 + 64);
}

const __CFArray *C3DGeometryGetMaterialsCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 80);
  if (result)
  {
    return CFArrayGetCount(result);
  }

  return result;
}

const __CFArray *C3DGeometryGetMaterialAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DGeometryGetMaterialsCount(a1);
  if (result)
  {
    return CFArrayGetValueAtIndex(*(a1 + 80), a2 % result);
  }

  return result;
}

void *_C3DGeometryFillLibraryForSerialization(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  MaterialsCount = C3DGeometryGetMaterialsCount(a1);
  if (MaterialsCount >= 1)
  {
    v15 = MaterialsCount;
    for (i = 0; i != v15; ++i)
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, i);
      C3DLibraryAddEntry(a2, MaterialAtIndex);
      C3DFillLibraryForSerialization(MaterialAtIndex, a2, a3);
    }
  }

  result = C3DGeometryGetMesh(a1);
  if (result)
  {
    v19 = result;
    C3DLibraryAddEntry(a2, result);
    return C3DFillLibraryForSerialization(v19, a2, a3);
  }

  return result;
}

uint64_t _C3DGeometryFinalizeDeserialization(uint64_t a1, uint64_t a2, CFDictionaryRef theDict, CFErrorRef *a4)
{
  v7 = a1;
  v72 = *MEMORY[0x277D85DE8];
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (theDict)
    {
      goto LABEL_6;
    }
  }

  else if (theDict)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    _C3DGeometryFinalizeDeserialization_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"geometryID");
  if (!Value)
  {
    goto LABEL_10;
  }

  if (!CFNumberGetValue(Value, kCFNumberLongType, &valuePtr))
  {
    v51 = scn_default_log();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      _C3DGeometryFinalizeDeserialization_cold_4();
    }

    goto LABEL_41;
  }

  v25 = valuePtr;
  TypeID = C3DMeshGetTypeID();
  valuePtr = C3DLibraryGetRemappedID(a2, v25, TypeID);
  v27 = C3DMeshGetTypeID();
  Entry = C3DLibraryGetEntry(a2, v27, valuePtr);
  if (!Entry)
  {
    v52 = scn_default_log();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      _C3DGeometryFinalizeDeserialization_cold_3();
    }

LABEL_41:
    if (!a4 || *a4)
    {
      return 0;
    }

    MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
    result = 0;
    *a4 = MalformedDocumentError;
    return result;
  }

  C3DGeometrySetMesh(v7, Entry);
LABEL_10:
  v58 = CFDictionaryGetValue(theDict, @"bindInfos");
  v29 = CFDictionaryGetValue(theDict, @"materialsID");
  if (v29)
  {
    v30 = v29;
    Count = CFArrayGetCount(v29);
    if (Count >= 1)
    {
      v55 = a4;
      v31 = 0;
      v32 = v58;
      v56 = v7;
      v57 = a2;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v30, v31);
        IntValue = CFStringGetIntValue(ValueAtIndex);
        if (IntValue)
        {
          v35 = IntValue;
          v36 = C3DMaterialGetTypeID();
          RemappedID = C3DLibraryGetRemappedID(a2, v35, v36);
          v38 = C3DMaterialGetTypeID();
          v39 = C3DLibraryGetEntry(a2, v38, RemappedID);
          if (!v39)
          {
            v53 = scn_default_log();
            if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
            {
              _C3DGeometryFinalizeDeserialization_cold_5();
            }

            a4 = v55;
            goto LABEL_41;
          }

          v40 = v39;
          if (v32)
          {
            v41 = CFArrayGetValueAtIndex(v32, v31);
            v67 = xmmword_21C27F780;
            v68 = unk_21C27F790;
            v69 = xmmword_21C27F7A0;
            v70 = unk_21C27F7B0;
            v63 = xmmword_21C27F740;
            v64 = unk_21C27F750;
            v65 = xmmword_21C27F760;
            v66 = unk_21C27F770;
            *buf = xmmword_21C27F720;
            v62 = unk_21C27F730;
            v71 = 0;
            _loadBindInfos(v41, @"emissionUVSet", 0, buf);
            _loadBindInfos(v41, @"ambientUVSet", 1, buf);
            _loadBindInfos(v41, @"diffuseUVSet", 2, buf);
            _loadBindInfos(v41, @"specularUVSet", 3, buf);
            _loadBindInfos(v41, @"reflectiveUVSet", 4, buf);
            _loadBindInfos(v41, @"transparentUVSet", 5, buf);
            _loadBindInfos(v41, @"filterUVSet", 6, buf);
            _loadBindInfos(v41, @"normalUVSet", 7, buf);
            _loadBindInfos(v41, @"ambientOcclusionUVSet", 8, buf);
            _loadBindInfos(v41, @"selfIlluminationUVSet", 9, buf);
            _loadBindInfos(v41, @"metalness", 10, buf);
            _loadBindInfos(v41, @"roughness", 11, buf);
            _loadBindInfos(v41, @"displacement", 15, buf);
            _loadBindInfos(v41, @"clearCoat", 12, buf);
            _loadBindInfos(v41, @"clearCoat", 13, buf);
            _loadBindInfos(v41, @"clearCoat", 14, buf);
            CommonProfile = C3DMaterialGetCommonProfile(v40);
            if (CommonProfile)
            {
              v43 = CommonProfile;
              v44 = 0;
              while (1)
              {
                UVSet = C3DEffectCommonProfileGetUVSet(v43, v44);
                if (C3DEffectCommonProfileUVSetIsSet(v43, v44))
                {
                  v46 = *&buf[8 * v44];
                  if (v46 != -1 && UVSet != v46)
                  {
                    break;
                  }
                }

                if (++v44 == 16)
                {
                  goto LABEL_25;
                }
              }

              Copy = C3DMaterialCreateCopy(v40);
              _updateUVSet(Copy, buf);
              v7 = v56;
              C3DGeometryAppendMaterial(v56, Copy);
              a2 = v57;
              v32 = v58;
              if (Copy)
              {
                CFRelease(Copy);
              }
            }

            else
            {
LABEL_25:
              _updateUVSet(v40, buf);
              v7 = v56;
              C3DGeometryAppendMaterial(v56, v40);
              a2 = v57;
              v32 = v58;
            }
          }

          else
          {
            C3DGeometryAppendMaterial(v7, v39);
          }
        }

        else
        {
          v48 = scn_default_log();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_21BEF7000, v48, OS_LOG_TYPE_DEFAULT, "Warning: _C3DGeometryFinalizeDeserialization - material ID of 0 is unexpected", buf, 2u);
          }
        }

        ++v31;
      }

      while (v31 != Count);
    }
  }

  return 1;
}

void C3DGeometrySetMesh(uint64_t a1, const void *a2)
{
  if (*(a1 + 64) == a2)
  {
    if (a2 || !*(a1 + 120))
    {
      return;
    }

    v4 = C3DGetSceneRef(a1);
    goto LABEL_8;
  }

  v4 = C3DGetSceneRef(a1);
  if (!v4)
  {
LABEL_8:
    v6 = 0;
    goto LABEL_9;
  }

  v5 = *(a1 + 64);
  if (!v5)
  {
    if (!a2)
    {
      goto LABEL_22;
    }

    LOBYTE(v6) = 1;
LABEL_13:
    v7 = CFRetain(a2);
    goto LABEL_19;
  }

  C3DRemoveSceneRef(v5, v4);
  v6 = 1;
LABEL_9:
  v7 = *(a1 + 64);
  if (v7 == a2)
  {
    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_22;
  }

  if (v7)
  {
    CFRelease(v7);
    *(a1 + 64) = 0;
  }

  if (a2)
  {
    goto LABEL_13;
  }

  v7 = 0;
LABEL_19:
  *(a1 + 64) = v7;
  if (v6)
  {
LABEL_20:
    if (v7)
    {
      C3DAddSceneRef(v7, v4);
    }
  }

LABEL_22:
  *(a1 + 208) = 0;
  v8 = *(a1 + 88);
  if (v8)
  {

    CFSetApplyFunction(v8, __C3DNodeGeometryDidChange, 0);
  }
}

void _loadBindInfos(const __CFDictionary *a1, const void *a2, int a3, uint64_t a4)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    valuePtr = 0;
    if (!CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr))
    {
      v9 = scn_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        _loadBindInfos_cold_1(a2, a1, v9);
      }
    }

    *(a4 + 8 * a3) = valuePtr;
  }
}

void _updateUVSet(uint64_t a1, uint64_t a2)
{
  CommonProfile = C3DMaterialGetCommonProfile(a1);
  if (CommonProfile)
  {
    v4 = CommonProfile;
    for (i = 0; i != 16; ++i)
    {
      v6 = *(a2 + 8 * i);
      if (v6 != -1)
      {
        C3DEffectCommonProfileSetUVSet(v4, i, v6);
      }
    }
  }
}

void C3DGeometryAppendMaterial(uint64_t a1, void *value)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (value)
    {
      goto LABEL_6;
    }
  }

  else if (value)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryAppendMaterial_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  CFArrayAppendValue(*(a1 + 80), value);
  v20 = C3DGetSceneRef(a1);
  C3DAddSceneRef(value, v20);
  __PostGeometryMaterialDidChangeNotification(a1);
}

__CFDictionary *_C3DGeometryCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (v14)
  {
    valuePtr = C3DLibraryGetEntryID(a2, *(a1 + 64));
    v15 = CFGetAllocator(a1);
    v16 = CFNumberCreate(v15, kCFNumberLongType, &valuePtr);
    CFDictionarySetValue(v14, @"geometryID", v16);
    CFRelease(v16);
    v17 = CFGetAllocator(a1);
    Mutable = CFArrayCreateMutable(v17, 0, MEMORY[0x277CBF128]);
    MaterialsCount = C3DGeometryGetMaterialsCount(a1);
    if (MaterialsCount >= 1)
    {
      v20 = MaterialsCount;
      for (i = 0; i != v20; ++i)
      {
        MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, i);
        EntryID = C3DLibraryGetEntryID(a2, MaterialAtIndex);
        v24 = CFGetAllocator(a1);
        v25 = CFStringCreateWithFormat(v24, 0, @"%ld", EntryID, valuePtr);
        CFArrayAppendValue(Mutable, v25);
        CFRelease(v25);
      }
    }

    CFDictionarySetValue(v14, @"materialsID", Mutable);
    CFRelease(Mutable);
  }

  return v14;
}

uint64_t C3DGeometryIsAlwaysRendered(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    v3 = C3DMaterialGetTechnique(v2) != 0;
  }

  else
  {
    v3 = 0;
  }

  MaterialsCount = C3DGeometryGetMaterialsCount(a1);
  if (MaterialsCount >= 1 && (v3 & 1) == 0)
  {
    v5 = MaterialsCount;
    v6 = 1;
    do
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, v6 - 1);
      Technique = C3DMaterialGetTechnique(MaterialAtIndex);
      v3 = Technique != 0;
      CommonProfile = C3DMaterialGetCommonProfile(MaterialAtIndex);
      if (CommonProfile)
      {
        EffectSlot = C3DEffectCommonProfileGetEffectSlot(CommonProfile, 15, 0);
        if (EffectSlot)
        {
          v11 = EffectSlot;
          v12 = C3DEffectSlotHasImageOrTexture(EffectSlot) && C3DEffectSlotGetIntensity(v11) != 0.0;
          if (Technique)
          {
            v3 = 1;
          }

          else
          {
            v3 = v12;
          }
        }
      }

      if (v6 >= v5)
      {
        break;
      }

      ++v6;
    }

    while ((v3 & 1) == 0);
  }

  return v3;
}

void C3DGeometrySetBoundingBox(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 104);
  if (a2)
  {
    if (!v3)
    {
      v3 = malloc_type_malloc(0x20uLL, 0x1000040E0EAB150uLL);
      *(a1 + 104) = v3;
    }

    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
  }

  else
  {
    if (!v3)
    {
      return;
    }

    free(v3);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 88);
  if (v6)
  {

    CFSetApplyFunction(v6, __C3DNodeGeometryDidChange, 0);
  }
}

__CFArray *_C3DGeometryCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v31 = 1;
  valuePtr = 5;
  Name = C3DGeometryGetName(a1);
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v8 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v5, @"name", @"name");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  v31 = 2;
  valuePtr = 5;
  Name = a1 + 64;
  v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v12 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v9, @"name", @"mesh");
  CFDictionarySetValue(v9, @"type", v10);
  CFDictionarySetValue(v9, @"address", v12);
  CFDictionarySetValue(v9, @"semantic", v11);
  CFArrayAppendValue(Mutable, v9);
  CFRelease(v11);
  CFRelease(v9);
  CFRelease(v12);
  CFRelease(v10);
  v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v31 = 2;
  valuePtr = 5;
  Name = a1 + 72;
  v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v16 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v13, @"name", @"overrideMaterial");
  CFDictionarySetValue(v13, @"type", v14);
  CFDictionarySetValue(v13, @"address", v16);
  CFDictionarySetValue(v13, @"semantic", v15);
  CFArrayAppendValue(Mutable, v13);
  CFRelease(v15);
  CFRelease(v13);
  CFRelease(v16);
  CFRelease(v14);
  v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v31 = 2;
  valuePtr = 5;
  Name = a1 + 80;
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v20 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v17, @"name", @"materials");
  CFDictionarySetValue(v17, @"type", v18);
  CFDictionarySetValue(v17, @"address", v20);
  CFDictionarySetValue(v17, @"semantic", v19);
  CFArrayAppendValue(Mutable, v17);
  CFRelease(v19);
  CFRelease(v17);
  CFRelease(v20);
  CFRelease(v18);
  v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v31 = 2;
  valuePtr = 5;
  Name = a1 + 96;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v24 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v21, @"name", @"levelsOfDetail");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  CFRelease(v24);
  CFRelease(v22);
  v25 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v31 = 0;
  valuePtr = 5;
  Name = a1 + 48;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v31);
  v28 = CFNumberCreate(0, kCFNumberLongType, &Name);
  CFDictionarySetValue(v25, @"name", @"sceneRef");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  return Mutable;
}

CFIndex _C3DGeometryEnumerateSubEntities(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64))
  {
    (*(a2 + 16))(a2);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    Count = CFArrayGetCount(*(a1 + 80));
    if (Count >= 1)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        (*(a2 + 16))(a2, ValueAtIndex);
      }
    }
  }

  result = *(a1 + 96);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v10 = result;
      for (j = 0; j != v10; ++j)
      {
        v12 = CFArrayGetValueAtIndex(*(a1 + 96), j);
        result = (*(a2 + 16))(a2, v12);
      }
    }
  }

  return result;
}

uint64_t C3DGeometryGetTypeID()
{
  if (C3DGeometryGetTypeID_onceToken != -1)
  {
    C3DGeometryGetTypeID_cold_1();
  }

  return C3DGeometryGetTypeID_typeID;
}

double __C3DGeometryGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DGeometryGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID();
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterClassEnd();
  unk_2817413C8 = kC3DC3DGeometryContextClassSerializable;
  unk_2817413D8 = *&off_282DC25E8;
  unk_281741388 = kC3DC3DGeometryContextClassBoundingVolumes;
  result = *&kC3DC3DGeometryContextClassSceneLink;
  unk_281741398 = kC3DC3DGeometryContextClassSceneLink;
  qword_281741380 = _C3DGeometryCopyInstanceVariables;
  unk_2817413A8 = unk_282DC2618;
  qword_2817413B8 = off_282DC2628;
  unk_2817413C0 = _C3DGeometrySearchByID;
  qword_2817413E8 = _C3DGeometryCreateCopy;
  return result;
}

double C3DGeometryInit(uint64_t a1)
{
  *(a1 + 80) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(a1 + 104) = 0;
  *(a1 + 208) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;

  return C3DGeometryInitSubdivision(a1);
}

uint64_t C3DGeometryCreate()
{
  if (C3DGeometryGetTypeID_onceToken != -1)
  {
    C3DGeometryGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DGeometryGetTypeID_typeID, 200);
  *(Instance + 80) = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  *(Instance + 104) = 0;
  *(Instance + 208) = 0;
  *(Instance + 120) = 0;
  *(Instance + 128) = 0;
  C3DGeometryInitSubdivision(Instance);
  return Instance;
}

uint64_t C3DGeometryCreateCopy(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DCreateCopy(cf);
}

uint64_t C3DGeometryCreateInterleavedCopy(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Copy = C3DGeometryCreateCopy(cf);
  Mesh = C3DGeometryGetMesh(Copy);
  CopyWithInterleavedSources = C3DMeshCreateCopyWithInterleavedSources(Mesh);
  C3DGeometrySetMesh(Copy, CopyWithInterleavedSources);
  CFRelease(CopyWithInterleavedSources);
  return Copy;
}

uint64_t C3DGeometryCreateRenderableCopy(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Copy = C3DGeometryCreateCopy(cf);
  Mesh = C3DGeometryGetMesh(Copy);
  RenderableCopy = C3DMeshCreateRenderableCopy(Mesh);
  C3DGeometrySetMesh(Copy, RenderableCopy);
  CFRelease(RenderableCopy);
  return Copy;
}

uint64_t C3DGeometryCreateMutableCopy(CFTypeRef cf)
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryCreateCopy_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  Copy = C3DGeometryCreateCopy(cf);
  Mesh = C3DGeometryGetMesh(Copy);
  DeepCopy = C3DMeshCreateDeepCopy(Mesh);
  C3DMeshMarkMutable(DeepCopy);
  C3DGeometrySetMesh(Copy, DeepCopy);
  CFRelease(DeepCopy);
  return Copy;
}

void C3DGeometryCopy(uint64_t a1, uint64_t a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryCopy_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  Mesh_NoValidation = C3DGeometryGetMesh_NoValidation(a1);
  C3DGeometrySetMesh(a2, Mesh_NoValidation);
  if (!a1)
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = *(a1 + 80);
  if (!a2)
  {
    v30 = scn_default_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v30, v31, v32, v33, v34, v35, v36, v37);
    }
  }

  v38 = *(a2 + 80);
  if (v38 != v29)
  {
    if (v38)
    {
      CFRelease(v38);
      *(a2 + 80) = 0;
    }

    if (v29)
    {
      *(a2 + 80) = CFArrayCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v29);
    }
  }

  LOD = C3DGeometryGetLOD(a1);
  C3DGeometrySetLOD(a2, LOD);
  Name = C3DGeometryGetName(a1);
  if (Name)
  {
    C3DGeometrySetName(a2, Name);
  }

  *(a2 + 120) = *(a1 + 120);
  if (*(a1 + 104))
  {
    v41 = C3DMalloc(0x20uLL);
    *(a2 + 104) = v41;
    v42 = *(a1 + 104);
    v43 = v42[1];
    *v41 = *v42;
    v41[1] = v43;
  }

  C3DEntityCopyTo(a1, a2);
  C3DGeometryCopySubdivision(a1, a2);
  v44 = *(a1 + 184);
  v45 = *(a1 + 200);
  C3DGeometrySetTessellator(a2, &v44);
}

uint64_t C3DGeometryGetMesh_NoValidation(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 64);
}

void C3DGeometrySetLOD(uint64_t a1, const __CFArray *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = C3DGetSceneRef(a1);
  v13 = *(a1 + 96);
  if (v13)
  {
    if (*(a1 + 88))
    {
      Count = CFArrayGetCount(v13);
      if (Count >= 1)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), i);
          v18 = C3DLODGetEntity(ValueAtIndex);
          if (v18)
          {
            CFSetApplyFunction(*(a1 + 88), __propagateUnTrackingOfNodesToLODs, v18);
          }
        }
      }
    }
  }

  v19 = *(a1 + 96);
  if (v19 && v12)
  {
    v20 = CFArrayGetCount(v19);
    if (v20 >= 1)
    {
      v21 = v20;
      for (j = 0; j != v21; ++j)
      {
        v23 = CFArrayGetValueAtIndex(*(a1 + 96), j);
        C3DRemoveSceneRef(v23, v12);
      }
    }

    v19 = *(a1 + 96);
  }

  if (v19 != a2)
  {
    if (v19)
    {
      CFRelease(v19);
      *(a1 + 96) = 0;
    }

    if (a2)
    {
      v19 = CFRetain(a2);
    }

    else
    {
      v19 = 0;
    }

    *(a1 + 96) = v19;
  }

  if (v19 && v12)
  {
    v24 = CFArrayGetCount(v19);
    if (v24 >= 1)
    {
      v25 = v24;
      for (k = 0; k != v25; ++k)
      {
        v27 = CFArrayGetValueAtIndex(*(a1 + 96), k);
        C3DAddSceneRef(v27, v12);
      }
    }

    v19 = *(a1 + 96);
  }

  if (v19)
  {
    if (*(a1 + 88))
    {
      v28 = CFArrayGetCount(v19);
      if (v28 >= 1)
      {
        v29 = v28;
        for (m = 0; m != v29; ++m)
        {
          v31 = CFArrayGetValueAtIndex(*(a1 + 96), m);
          v32 = C3DLODGetEntity(v31);
          if (v32)
          {
            CFSetApplyFunction(*(a1 + 88), __propagateTrackingOfNodesToLODs, v32);
          }
        }
      }
    }
  }

  v33 = *(a1 + 88);
  if (v33)
  {
    CFSetApplyFunction(v33, _GeometryLODDidChange, 0);
  }
}

uint64_t C3DGeometryGetLOD(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 96);
}

CFStringRef C3DGeometrySetName(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DEntitySetName(a1, theString);
}

void C3DGeometrySetTessellator(uint64_t a1, unsigned __int8 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 184);
  v13 = *(a1 + 196);
  v14 = *a2;
  *(a1 + 200) = *(a2 + 2);
  *(a1 + 184) = v14;
  if (v13 != a2[12])
  {
    v15 = C3DGetScene(a1);
    C3DScenePostPipelineEvent(v15, 6, a1, 0);
  }

  C3DGeometryOpenSubdivGPUParameterDidChange(a1, v12, *a2, *(a1 + 136), *(a1 + 136));
}

const void *C3DGeometryGetRenderingMesh(__C3DGeometry *a1)
{
  if (C3DGeometryOsdGetWantsCPUSubdivision(a1))
  {

    return C3DGeometryOsdGetCPUSubdividedC3DMesh(a1);
  }

  else
  {

    return C3DGeometryGetMesh(a1);
  }
}

void __PostGeometryMaterialDidChangeNotification(void *cf)
{
  v2 = cf[11];
  if (v2)
  {
    CFSetApplyFunction(v2, __C3DNodeGeometryDidChange, 0);
  }

  v3 = CFGetTypeID(cf);
  if (v3 == C3DParametricGeometryGetTypeID())
  {

    C3DParametricGeometryMaterialDidChange(cf);
  }
}

void C3DGeometryRemoveMaterialAtIndex(uint64_t a1, CFIndex a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (C3DGetSceneRef(a1))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), a2);
    v13 = C3DGetSceneRef(a1);
    C3DRemoveSceneRef(ValueAtIndex, v13);
  }

  CFArrayRemoveValueAtIndex(*(a1 + 80), a2);
  __PostGeometryMaterialDidChangeNotification(a1);
}

void C3DGeometryRemoveAllMaterials(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (C3DGetSceneRef(a1))
  {
    Count = CFArrayGetCount(*(a1 + 80));
    if (Count >= 1)
    {
      v11 = Count;
      for (i = 0; i != v11; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), i);
        v14 = C3DGetSceneRef(a1);
        C3DRemoveSceneRef(ValueAtIndex, v14);
      }
    }
  }

  CFArrayRemoveAllValues(*(a1 + 80));
  __PostGeometryMaterialDidChangeNotification(a1);
}

void C3DGeometryInsertMaterialAtIndex(uint64_t a1, void *value, CFIndex idx)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  CFArrayInsertValueAtIndex(*(a1 + 80), idx, value);
  v14 = C3DGetSceneRef(a1);
  C3DAddSceneRef(value, v14);
  __PostGeometryMaterialDidChangeNotification(a1);
}

void C3DGeometryReplaceMaterialAtIndex(uint64_t a1, void *a2, CFIndex a3)
{
  newValues = a2;
  if (!a1)
  {
    v5 = scn_default_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  if (C3DGetSceneRef(a1))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), a3);
    v14 = C3DGetSceneRef(a1);
    C3DRemoveSceneRef(ValueAtIndex, v14);
  }

  v18.location = a3;
  v18.length = 1;
  CFArrayReplaceValues(*(a1 + 80), v18, &newValues, 1);
  v15 = newValues;
  v16 = C3DGetSceneRef(a1);
  C3DAddSceneRef(v15, v16);
  __PostGeometryMaterialDidChangeNotification(a1);
}

CFIndex C3DGeometryTrackNode(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryTrackNode_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  Mutable = *(a1 + 88);
  if (!Mutable)
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
    *(a1 + 88) = Mutable;
  }

  if (CFSetContainsValue(Mutable, a2))
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_3(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  CFSetAddValue(*(a1 + 88), a2);
  Count = CFSetGetCount(*(a1 + 88));
  v30 = *(a1 + 112) & 0xFE;
  if (Count > 4)
  {
    ++v30;
  }

  *(a1 + 112) = v30;
  result = *(a1 + 96);
  if (result)
  {
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v32 = result;
      for (i = 0; i != v32; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), i);
        result = C3DLODGetEntity(ValueAtIndex);
        if (result)
        {
          result = C3DGeometryTrackNode(result, a2);
        }
      }
    }
  }

  return result;
}

void C3DGeometryUntrackNode(uint64_t a1, const void *a2)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryTrackNode_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  v20 = *(a1 + 88);
  if (!v20 || !CFSetContainsValue(v20, a2))
  {
    v21 = scn_default_log();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryUntrackNode_cold_3(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  v29 = *(a1 + 96);
  if (v29)
  {
    Count = CFArrayGetCount(v29);
    if (Count >= 1)
    {
      v31 = Count;
      for (i = 0; i != v31; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 96), i);
        v34 = C3DLODGetEntity(ValueAtIndex);
        if (v34)
        {
          C3DGeometryUntrackNode(v34, a2);
        }
      }
    }
  }

  v35 = *(a1 + 88);
  if (v35)
  {
    goto LABEL_20;
  }

  v36 = scn_default_log();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
  {
    C3DGeometryUntrackNode_cold_4(v36, v37, v38, v39, v40, v41, v42, v43);
  }

  v35 = *(a1 + 88);
  if (v35)
  {
LABEL_20:
    CFSetRemoveValue(v35, a2);
  }
}

void _C3DGeometryShadingDidUpdate(void *a1)
{
  MaterialsCount = C3DGeometryGetMaterialsCount(a1);
  if (MaterialsCount >= 1)
  {
    v3 = MaterialsCount;
    for (i = 0; i != v3; ++i)
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(a1, i);
      _C3DMaterialShadingDidUpdate(MaterialAtIndex);
    }
  }

  __PostGeometryMaterialDidChangeNotification(a1);
}

void C3DGeometrySetOverrideMaterial(void *a1, void *cf)
{
  v4 = a1[9];
  if (v4 != cf)
  {
    if (v4)
    {
      CFRelease(v4);
      a1[9] = 0;
    }

    if (cf)
    {
      v5 = CFRetain(cf);
    }

    else
    {
      v5 = 0;
    }

    a1[9] = v5;
  }

  if (cf)
  {
    v6 = C3DGetSceneRef(a1);
    C3DAddSceneRef(cf, v6);
  }

  _C3DGeometryShadingDidUpdate(a1);
}

BOOL CFTypeIsC3DGeometry(uint64_t a1)
{
  if (C3DGeometryGetTypeID_onceToken != -1)
  {
    C3DGeometryGetTypeID_cold_1();
  }

  return C3DGeometryGetTypeID_typeID == a1 || C3DFloorGetTypeID() == a1 || C3DParametricGeometryGetTypeID() == a1 || C3DShapeGeometryGetTypeID() == a1 || C3DTextGeometryGetTypeID() == a1 || C3DBezierCurveGeometryGetTypeID() == a1;
}

void C3DGeometryGeneratePoints(CFTypeRef cf, uint64_t a2, unsigned int *a3, _OWORD *a4, _OWORD *a5, int a6)
{
  v6 = a6;
  v71 = *MEMORY[0x277D85DE8];
  if (a6 != 2)
  {
    v10 = CFGetTypeID(cf);
    if (v10 == C3DParametricGeometryGetTypeID())
    {

      C3DParametricGeometryGeneratePoints(cf);
      return;
    }
  }

  Mesh = C3DGeometryGetMesh(cf);
  if (!Mesh)
  {
    return;
  }

  v12 = Mesh;
  PositionSource = C3DMeshGetPositionSource(Mesh, 1);
  if (!PositionSource)
  {
    return;
  }

  v14 = PositionSource;
  Count = C3DMeshSourceGetCount(PositionSource);
  if (!Count)
  {
    return;
  }

  v16 = Count;
  NormalSource = C3DMeshGetNormalSource(v12, 1);
  v18 = NormalSource;
  if (!NormalSource || C3DMeshSourceGetCount(NormalSource) == v16)
  {
    if (v6 == 1)
    {
      if ((C3DGeometryGeneratePoints_done_56 & 1) == 0)
      {
        C3DGeometryGeneratePoints_done_56 = 1;
        v19 = scn_default_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          C3DGeometryGeneratePoints_cold_2();
        }
      }

      v6 = 0;
    }

    ElementsCount = C3DMeshGetElementsCount(v12);
    if (ElementsCount)
    {
      v21 = 0;
    }

    else
    {
      v21 = v6 == 0;
    }

    if (v21)
    {
      v22 = 2;
    }

    else
    {
      v22 = v6;
    }

    if (v22)
    {
      if (v22 == 2 && a2 >= 1)
      {
        if (a5)
        {
          v23 = v18 == 0;
        }

        else
        {
          v23 = 1;
        }

        v24 = !v23;
        do
        {
          v25 = 214013 * *a3 + 2531011;
          *a3 = v25;
          v26 = v25 % v16;
          *&v27 = C3DMeshSourceGetValueAtIndexAsVector3(v14, v25 % v16);
          *a4 = v27;
          if (v24)
          {
            *&v28 = C3DMeshSourceGetValueAtIndexAsVector3(v18, v26);
            *a5 = v28;
          }

          ++a5;
          ++a4;
          --a2;
        }

        while (a2);
      }

      return;
    }

    if (a2 < 1)
    {
      return;
    }

    v30 = 0;
    v61 = a4;
    v62 = a5;
    v59 = ElementsCount;
    v60 = v12;
    while (1)
    {
      v31 = 214013 * *a3 + 2531011;
      *a3 = v31;
      ElementAtIndex = C3DMeshGetElementAtIndex(v12, v31 % ElementsCount, 1);
      PrimitiveCount = C3DMeshElementGetPrimitiveCount(ElementAtIndex);
      v34 = 214013 * *a3 + 2531011;
      *a3 = v34;
      IndexCountPerPrimitive = C3DMeshElementGetIndexCountPerPrimitive(ElementAtIndex);
      if (IndexCountPerPrimitive >= 1)
      {
        v36 = 0;
        v37 = v34 % PrimitiveCount;
        do
        {
          Index = C3DMeshElementGetIndex(ElementAtIndex, v37, v36, 0);
          *&v39 = C3DMeshSourceGetValueAtIndexAsVector3(v14, Index);
          *(&v68 + v36) = v39;
          if (v18)
          {
            *&v40 = C3DMeshSourceGetValueAtIndexAsVector3(v18, Index);
            *(&v65 + v36) = v40;
          }

          ++v36;
        }

        while (IndexCountPerPrimitive != v36);
      }

      if (IndexCountPerPrimitive == 1)
      {
        v41 = v62;
        v61[v30] = v68;
        ElementsCount = v59;
        v12 = v60;
        if (v62)
        {
          v53 = v65;
          goto LABEL_54;
        }
      }

      else
      {
        v41 = v62;
        ElementsCount = v59;
        v12 = v60;
        if (IndexCountPerPrimitive != 2)
        {
          if (IndexCountPerPrimitive != 3)
          {
            goto LABEL_55;
          }

          v42 = 214013 * *a3 + 2531011;
          v43 = HIWORD(v42) * 0.000015259;
          v44 = 214013 * v42 + 2531011;
          v45 = HIWORD(v44) * 0.000015259;
          v46 = 214013 * v44 + 2531011;
          *a3 = v46;
          v47 = HIWORD(v46) * 0.000015259;
          v48 = 1.0 / ((v43 + v45) + v47);
          v49 = v45 * v48;
          v61[v30] = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v69, v49), v68, v43 * v48), v70, v47 * v48);
          if (!v62)
          {
            goto LABEL_55;
          }

          v50 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v66, v49), v65, v43 * v48), v67, v47 * v48);
          v51 = vmulq_f32(v50, v50);
          *&v52 = v51.f32[2] + vaddv_f32(*v51.f32);
          *v51.f32 = vrsqrte_f32(v52);
          *v51.f32 = vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32)));
          v53 = vmulq_n_f32(v50, vmul_f32(*v51.f32, vrsqrts_f32(v52, vmul_f32(*v51.f32, *v51.f32))).f32[0]);
          goto LABEL_54;
        }

        v54 = 214013 * *a3 + 2531011;
        *a3 = v54;
        v55 = HIWORD(v54) * 0.000015259;
        v61[v30] = vmlaq_n_f32(v68, vsubq_f32(v69, v68), v55);
        if (v62)
        {
          v56 = vmlaq_n_f32(v65, vsubq_f32(v66, v65), v55);
          v57 = vmulq_f32(v56, v56);
          *&v58 = v57.f32[2] + vaddv_f32(*v57.f32);
          *v57.f32 = vrsqrte_f32(v58);
          *v57.f32 = vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32)));
          v53 = vmulq_n_f32(v56, vmul_f32(*v57.f32, vrsqrts_f32(v58, vmul_f32(*v57.f32, *v57.f32))).f32[0]);
LABEL_54:
          v41[v30] = v53;
        }
      }

LABEL_55:
      if (++v30 == a2)
      {
        return;
      }
    }
  }

  if ((C3DGeometryGeneratePoints_done & 1) == 0)
  {
    C3DGeometryGeneratePoints_done = 1;
    v29 = scn_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      C3DGeometryGeneratePoints_cold_1();
    }
  }
}

BOOL C3DGeometryMeshElementsSupportsTessellation(uint64_t a1)
{
  v1 = *(a1 + 208);
  v2 = v1 & 3;
  if ((v1 & 3) == 0)
  {
    v2 = 1;
    MeshElements = C3DMeshGetMeshElements(*(a1 + 64), 1);
    Count = CFArrayGetCount(MeshElements);
    if (Count >= 1)
    {
      v6 = Count;
      v7 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MeshElements, v7);
        if (C3DMeshElementGetType(ValueAtIndex))
        {
          break;
        }

        if (v6 == ++v7)
        {
          v2 = 1;
          goto LABEL_8;
        }
      }

      v2 = 2;
    }

LABEL_8:
    *(a1 + 208) = v2 | v1;
  }

  return v2 == 1;
}

BOOL C3DGeometryGetWantsHardwareTessellation(__C3DGeometry *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (a1->var11.var0 - 1 < 3)
  {
    return C3DGeometryMeshElementsSupportsTessellation(a1);
  }

  if (a1->var11.var0)
  {
    return C3DGeometryOpenSubdivGPUIsActive(a1);
  }

  return 0;
}

BOOL C3DGeometryGetEffectiveDataKindForRendering(__C3DGeometry *a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return !C3DGeometryOsdGetWantsGPUSubdivision(a1);
}

__n128 C3DGeometryGetTessellator@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryGetName_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 184);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 200);
  return result;
}

uint64_t _C3DGeometryGetBoundingBox(uint64_t a1, uint64_t a2, _OWORD *a3, _OWORD *a4)
{
  v6 = *(a1 + 104);
  if (v6)
  {
    *a3 = vsubq_f32(*v6, v6[1]);
    *a4 = vaddq_f32(**(a1 + 104), *(*(a1 + 104) + 16));
    return 1;
  }

  else
  {
    result = C3DGeometryGetMesh(a1);
    if (result)
    {

      return C3DMeshGetBoundingBox(result, a3, a4);
    }
  }

  return result;
}

uint64_t _C3DGeometryGetBoundingSphere(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  result = C3DGeometryGetMesh(a1);
  if (result)
  {

    return C3DMeshGetBoundingSphere(result, a3);
  }

  return result;
}

void _C3DGeometryDidTransferFromScene(uint64_t a1)
{
  Mesh = C3DGeometryGetMesh(a1);
  if (Mesh)
  {
    Copy = C3DMeshCreateCopy(Mesh);
    C3DGeometrySetMesh(a1, Copy);
    if (Copy)
    {

      CFRelease(Copy);
    }
  }
}

uint64_t _C3DGeometrySearchByID(uint64_t a1, const void *a2)
{
  v3 = a1;
  ID = C3DEntityGetID(a1);
  if (C3DEqual(ID, a2))
  {
    return v3;
  }

  MaterialsCount = C3DGeometryGetMaterialsCount(v3);
  if (MaterialsCount >= 1)
  {
    v6 = MaterialsCount;
    v7 = 0;
    do
    {
      MaterialAtIndex = C3DGeometryGetMaterialAtIndex(v3, v7);
      v9 = C3DSearchByID(MaterialAtIndex, a2);
      if (v9)
      {
        return v9;
      }
    }

    while (v6 != ++v7);
  }

  Mesh = C3DGeometryGetMesh(v3);

  return C3DSearchByID(Mesh, a2);
}

uint64_t _C3DGeometryCreateCopy(uint64_t a1)
{
  v2 = C3DGeometryCreate();
  C3DGeometryCopy(a1, v2);
  return v2;
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

id _C3DImageToMDLTexture(__C3DImage *a1, char a2)
{
  if ((a2 & 1) == 0 && C3DImageIsCubeMap(a1))
  {
    VerticalStripCubemapWithImage = C3DImageCreateVerticalStripCubemapWithImage(a1);
    v4 = _C3DImageToMDLTexture(VerticalStripCubemapWithImage, 1);
    CFRelease(VerticalStripCubemapWithImage);
    return v4;
  }

  if (C3DImageGetImageType(a1) == 2)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      _C3DImageToMDLTexture(v6, v7, v8);
    }

    return 0;
  }

  v9 = C3DImageCopyBitmap(a1, 1);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  Data = CGBitmapContextGetData(v9);
  Size = C3DImageGetSize(a1);
  BitsPerComponent = CGBitmapContextGetBitsPerComponent(v10);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(v10);
  if (BitsPerComponent != 8)
  {
    CFRelease(v10);
    return 0;
  }

  v14 = BitsPerPixel >> 3;
  v15 = objc_alloc(MEMORY[0x277CD7B58]);
  v16 = [MEMORY[0x277CBEA90] dataWithBytes:Data length:{vmuls_lane_f32(CGBitmapContextGetBytesPerRow(v10), *&Size, 1)}];
  BytesPerRow = CGBitmapContextGetBytesPerRow(v10);
  LOBYTE(v19) = C3DImageGetImageType(a1) == 3;
  v18 = [v15 initWithData:v16 topLeftOrigin:1 name:0 dimensions:BytesPerRow rowStride:v14 channelCount:1 channelEncoding:COERCE_DOUBLE(vcvt_s32_f32(*&Size)) isCube:v19];
  CFRelease(v10);

  return v18;
}

uint64_t C3DImageCreateWithMDLTexture(void *a1)
{
  v2 = C3DImageCreateWithCGImage([a1 imageFromTexture]);
  if ([a1 isCube])
  {
    C3DImageChangeImageTypeToCubeMapIfSuitable(v2);
    if (!C3DImageIsCubeMap(v2))
    {
      v3 = scn_default_log();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *v5 = 0;
        _os_log_impl(&dword_21BEF7000, v3, OS_LOG_TYPE_DEFAULT, "Warning: Failed to create cubemap from Model I/O texture", v5, 2u);
      }
    }
  }

  return v2;
}

id flattenObjectInMeshes(simd_float4x4 a1, MDLObject *a2, NSMutableArray *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(MDLObject *)a2 transform])
  {
    [-[MDLObject transform](a2 "transform")];
    v5 = 0;
    v21[0] = v6;
    v21[1] = v7;
    v21[2] = v8;
    v21[3] = v9;
    do
    {
      v22.columns[v5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1.columns[0], COERCE_FLOAT(v21[v5])), a1.columns[1], *&v21[v5], 1), a1.columns[2], v21[v5], 2), a1.columns[3], v21[v5], 3);
      ++v5;
    }

    while (v5 != 4);
    a1 = v22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_alloc(MEMORY[0x277CD7B68]) initWithMatrix:{*a1.columns[0].i64, *a1.columns[1].i64, *a1.columns[2].i64, *a1.columns[3].i64}];
    [(MDLObject *)a2 setTransform:v10];

    return [(NSMutableArray *)a3 addObject:a2];
  }

  else
  {
    result = [(MDLObject *)a2 children];
    if (result)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = [(MDLObject *)a2 children];
      result = [v12 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (result)
      {
        v13 = result;
        v14 = *v18;
        do
        {
          v15 = 0;
          do
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v12);
            }

            flattenObjectInMeshes(a1, *(*(&v17 + 1) + 8 * v15), a3);
            v15 = v15 + 1;
          }

          while (v13 != v15);
          result = [v12 countByEnumeratingWithState:&v17 objects:v23 count:16];
          v13 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

NSMutableArray *FlattenedMDLMeshesFromMDLAsset(MDLAsset *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = *(MEMORY[0x277D860B8] + 16);
  v11 = *MEMORY[0x277D860B8];
  v8 = *(MEMORY[0x277D860B8] + 48);
  v9 = *(MEMORY[0x277D860B8] + 32);
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(MDLAsset *)a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v18.columns[1] = v10;
        v18.columns[0] = v11;
        v18.columns[3] = v8;
        v18.columns[2] = v9;
        flattenObjectInMeshes(v18, *(*(&v12 + 1) + 8 * v6++), v2);
      }

      while (v4 != v6);
      v4 = [(MDLAsset *)a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return v2;
}

id flattenLightsInMeshes(simd_float4x4 a1, MDLObject *a2, NSMutableArray *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(MDLObject *)a2 transform])
  {
    [-[MDLObject transform](a2 "transform")];
    v5 = 0;
    v21[0] = v6;
    v21[1] = v7;
    v21[2] = v8;
    v21[3] = v9;
    do
    {
      v22.columns[v5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1.columns[0], COERCE_FLOAT(v21[v5])), a1.columns[1], *&v21[v5], 1), a1.columns[2], v21[v5], 2), a1.columns[3], v21[v5], 3);
      ++v5;
    }

    while (v5 != 4);
    a1 = v22;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = [objc_alloc(MEMORY[0x277CD7B68]) initWithMatrix:{*a1.columns[0].i64, *a1.columns[1].i64, *a1.columns[2].i64, *a1.columns[3].i64}];
    [(MDLObject *)a2 setTransform:v10];

    return [(NSMutableArray *)a3 addObject:a2];
  }

  else
  {
    result = [(MDLObject *)a2 children];
    if (result)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = [(MDLObject *)a2 children];
      result = [v12 countByEnumeratingWithState:&v17 objects:v23 count:16];
      if (result)
      {
        v13 = result;
        v14 = *v18;
        do
        {
          v15 = 0;
          do
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v12);
            }

            flattenLightsInMeshes(a1, *(*(&v17 + 1) + 8 * v15), a3);
            v15 = v15 + 1;
          }

          while (v13 != v15);
          result = [v12 countByEnumeratingWithState:&v17 objects:v23 count:16];
          v13 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

NSMutableArray *FlattenedMDLLightsFromMDLAsset(MDLAsset *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v10 = *(MEMORY[0x277D860B8] + 16);
  v11 = *MEMORY[0x277D860B8];
  v8 = *(MEMORY[0x277D860B8] + 48);
  v9 = *(MEMORY[0x277D860B8] + 32);
  v2 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(MDLAsset *)a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v18.columns[1] = v10;
        v18.columns[0] = v11;
        v18.columns[3] = v8;
        v18.columns[2] = v9;
        flattenLightsInMeshes(v18, *(*(&v12 + 1) + 8 * v6++), v2);
      }

      while (v4 != v6);
      v4 = [(MDLAsset *)a1 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  return v2;
}

SCNScene *loadMDLAssetWithURL(void *a1, void *a2)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = [a2 objectForKeyedSubscript:@"kSceneSourcePreserveOriginalTopology"];
  if (v4)
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = C3DPreserveOriginalTopologyDefaultValue();
  }

  v6 = v5;
  if ([MEMORY[0x277CD7AD0] instancesRespondToSelector:sel_initThroughSCNKitBridgeWithURL_options_error_])
  {
    if (C3DWasLinkedBeforeMajorOSYear2023())
    {
      v19 = *MEMORY[0x277CD7A60];
      v20 = [MEMORY[0x277CCABB0] numberWithBool:v6];
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    else
    {
      v15 = 0;
      v16 = &v15;
      v17 = 0x2020000000;
      v9 = getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLoc(void)::ptr;
      v18 = getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLoc(void)::ptr;
      if (!getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLoc(void)::ptr)
      {
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = ___ZL53getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLocv_block_invoke;
        v14[3] = &unk_2782FB300;
        v14[4] = &v15;
        ___ZL53getMDLAssetLoadingOptionDefaultUSDColorSpaceSymbolLocv_block_invoke(v14);
        v9 = v16[3];
      }

      _Block_object_dispose(&v15, 8);
      if (!v9)
      {
        loadMDLAssetWithURL_cold_1();
      }

      if (*v9)
      {
        v10 = *v9;
      }

      else
      {
        v10 = @"kMDLAssetDefaultUSDColorSpace";
      }

      v21[0] = *MEMORY[0x277CD7A60];
      v22[0] = [MEMORY[0x277CCABB0] numberWithBool:v6];
      v21[1] = v10;
      v22[1] = C3DColorSpaceLinearDisplayP3();
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
    }

    v8 = [objc_alloc(MEMORY[0x277CD7AD0]) initThroughSCNKitBridgeWithURL:a1 options:v7 error:0];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x277CD7AD0]) initThroughSCNKitBridgeWithURL:a1 preserveTopology:v6 error:0];
  }

  v11 = v8;
  if (((C3DIsRunningInXcode() & 1) != 0 || [objc_msgSend(a2 valueForKey:{@"SCNSceneSourceLoadTexturesInCPUMemory", "BOOLValue"}]) && objc_msgSend(objc_msgSend(objc_msgSend(a1, "pathExtension"), "lowercaseString"), "isEqualToString:", @"usdz"))
  {
    [v11 loadTextures];
  }

  [objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
  if (!v11)
  {
    return 0;
  }

  v12 = [SCNScene sceneWithMDLAsset:v11 options:a2];
  [objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];

  return v12;
}

void sub_21BF151AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SCNNodesToMDLAsset(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  result = objc_alloc_init(MEMORY[0x277CD7AD0]);
  if (result)
  {
    v3 = result;
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(a1);
          }

          [v3 addObject:{objc_msgSend(MEMORY[0x277CD7B18], "objectWithSCNNode:", *(*(&v8 + 1) + 8 * v7++))}];
        }

        while (v5 != v7);
        v5 = [a1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    return v3;
  }

  return result;
}

id jointNodesFromMDLSkinDeformer(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [a1 jointPaths];
  v4 = objc_opt_new();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [a2 objectForKeyedSubscript:v9];
        if (!v10)
        {
          NSLog(&cfstr_WhileCreatingS.isa, v9);
          [v4 removeAllObjects];
          return v4;
        }

        [v4 addObject:v10];
      }

      v6 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v4;
}

id boneInverseTransformsFromMDLSkinDeformer(void *a1)
{
  v2 = objc_opt_new();
  v3 = [objc_msgSend(a1 "jointBindTransforms")];
  v4 = [objc_msgSend(a1 "jointBindTransforms")];
  [a1 meshBindTransform];
  v15 = v6;
  v16 = v5;
  v13 = v8;
  v14 = v7;
  if (v4 >= 0x40)
  {
    v9 = 0;
    v10 = v4 >> 6;
    do
    {
      v19 = __invert_f4(*(v3 + (v9 << 6)));
      v11 = 0;
      v17[0] = v16;
      v17[1] = v15;
      v17[2] = v14;
      v17[3] = v13;
      do
      {
        *(&v18 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19.columns[0], COERCE_FLOAT(v17[v11])), v19.columns[1], *&v17[v11], 1), v19.columns[2], v17[v11], 2), v19.columns[3], v17[v11], 3);
        ++v11;
      }

      while (v11 != 4);
      [v2 addObject:{objc_msgSend(MEMORY[0x277CCAE60], "valueWithSCNMatrix4:", &v18)}];
      ++v9;
    }

    while (v9 != v10);
  }

  return v2;
}

void *createFloatAnimation(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = v3 - *a2;
  if (v3 == *a2)
  {
    return 0;
  }

  v6 = *v4;
  v7 = *(v3 - 8) - *v4;
  if (v7 < 2.22044605e-16)
  {
    return 0;
  }

  v12 = v5 >> 3;
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:v5 >> 3];
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:v12];
  v15 = 0;
  if (v12 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v12;
  }

  do
  {
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:(*(*a2 + 8 * v15) - v6) / v7];
    LODWORD(v18) = *(*a3 + 4 * v15);
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    [v13 addObject:v17];
    [v14 addObject:v19];
    ++v15;
  }

  while (v16 != v15);
  v8 = [MEMORY[0x277CD9EC8] animationWithKeyPath:a1];
  [v8 setValues:v14];
  [v8 setKeyTimes:v13];
  [v8 setDuration:v7];
  [v8 setBeginTime:v6];
  [v8 setAdditive:0];
  [v8 setRemovedOnCompletion:0];
  return v8;
}

id morpherFromMDLMorphDeformer(void *a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v29 = objc_opt_new();
  v2 = objc_opt_new();
  v3 = [objc_msgSend(a1 "shapeSetTargetCounts")];
  v4 = [objc_msgSend(a1 "targetShapes")];
  if (v4)
  {
    v5 = v4;
    for (i = 0; i != v5; ++i)
    {
      v7 = [objc_msgSend(a1 "targetShapes")];
      v8 = [SCNGeometry geometryWithMDLMesh:v7];
      -[SCNGeometry setName:](v8, "setName:", [v7 name]);
      [(SCNGeometry *)v8 setEdgeCreasesSource:0];
      [(SCNGeometry *)v8 setEdgeCreasesElement:0];
      [v2 addObject:v8];
    }
  }

  if (v3)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:0];
    v10 = 0;
    for (j = 0; j != v3; ++j)
    {
      v12 = [objc_msgSend(objc_msgSend(a1 "shapeSetTargetCounts")];
      v13 = v12 - 1;
      if (v12 != 1)
      {
        v14 = v13 + v10;
        do
        {
          v15 = [objc_msgSend(a1 "shapeSetTargetWeights")];
          [v9 addObject:v15];
          [v15 floatValue];
          if (v16 >= 1.0)
          {
            v17 = scn_default_log();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
            {
              [v15 floatValue];
              *buf = 136315394;
              *&buf[4] = "influenceWeightNumber.floatValue < 1.f";
              *&buf[12] = 2048;
              *&buf[14] = v18;
              _os_log_fault_impl(&dword_21BEF7000, v17, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. Found in-between morph target with influence weight of %f", buf, 0x16u);
            }
          }

          ++v10;
          --v13;
        }

        while (v13);
        v10 = v14;
      }

      ++v10;
    }

    [v29 setTargets:v2 withInBetweenTargetCounts:objc_msgSend(a1 inBetweenWeights:{"shapeSetTargetCounts"), v9}];
  }

  else
  {
    [v29 setTargets:v2];
  }

  v19 = [a1 weights];
  v20 = [v19 elementCount];
  memset(buf, 0, sizeof(buf));
  if (v20)
  {
    std::vector<float>::__vallocate[abi:nn200100](buf, v20);
  }

  if ([objc_msgSend(v19 "keyTimes")])
  {
    v21 = *buf;
    v22 = [v19 elementCount];
    [objc_msgSend(objc_msgSend(v19 "keyTimes")];
    [v19 getFloatArray:v21 maxCount:v22 atTime:?];
  }

  v23 = objc_opt_new();
  v25 = *buf;
  for (k = *&buf[8]; v25 != k; ++v25)
  {
    LODWORD(v24) = *v25;
    [v23 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithFloat:", v24)}];
  }

  [v29 setWeights:v23];

  v27 = v29;
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  return v27;
}

void sub_21BF15A20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void addMorphAnimation(void *a1, void *a2, void *a3)
{
  if ([a2 morpher])
  {
    v4 = [a1 weights];
    if ([v4 isAnimated])
    {
      v5 = [v4 timeSampleCount];
      v6 = [v4 elementCount];
      v28 = 0;
      v29 = 0;
      v30 = 0;
      if (v5)
      {
        std::vector<double>::__vallocate[abi:nn200100](&v28, v5);
      }

      [v4 getTimes:0 maxCount:0];
      v25 = 0;
      v26 = 0;
      v27 = 0;
      if (v6)
      {
        [v4 getFloatArray:v25 maxCount:0];
      }

      __p = 0;
      v23 = 0;
      v24 = 0;
      if (v6)
      {
        v7 = 0;
        for (i = 0; i != v6; ++i)
        {
          v9 = createFloatAnimation([MEMORY[0x277CCACA8] stringWithFormat:@"morpher.weights[%d]", i], &v28, &__p);
          v10 = v9;
          if (v9)
          {
            [v9 duration];
            if (v11 != 0.0)
            {
              v12 = [a3 valueForKey:@"kSceneSourceAnimationLoadingMode"];
              v14 = v12;
              if (v12)
              {
                [v10 setUsesSceneTimeBase:{objc_msgSend(v12, "isEqualToString:", @"playUsingSceneTime"}];
                [v10 setRemovedOnCompletion:{objc_msgSend(v14, "isEqualToString:", @"playUsingSceneTime"}];
                v15 = [v14 isEqualToString:@"playRepeatedly"];
                LODWORD(v13) = 2139095040;
                if (!v15)
                {
                  *&v13 = 0.0;
                }
              }

              else
              {
                LODWORD(v13) = 2139095040;
              }

              [v10 setRepeatCount:v13];
              if (([v10 usesSceneTimeBase] & 1) == 0)
              {
                [v10 beginTime];
                if (v16 != 0.0)
                {
                  C3DTransactionGetAtomicTime();
                  v18 = v17;
                  [v10 beginTime];
                  [v10 setBeginTime:v18 + v19];
                }
              }

              [a2 addAnimation:v10 forKey:0];
            }
          }

          v7 += 4;
        }
      }

      if (__p)
      {
        v23 = __p;
        operator delete(__p);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      if (v28)
      {
        v29 = v28;
        operator delete(v28);
      }
    }
  }
}

void sub_21BF15D3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::_loadAnimations(_anonymous_namespace_ *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  *(&v97 + 1) = a4;
  v143 = *MEMORY[0x277D85DE8];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v117 = 0u;
  v94 = a1;
  v8 = [(_anonymous_namespace_ *)a1 children];
  v9 = [v8 countByEnumeratingWithState:&v114 objects:v130 count:16];
  if (v9)
  {
    v10 = *v115;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v115 != v10)
        {
          objc_enumerationMutation(v8);
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v114 objects:v130 count:16];
    }

    while (v9);
  }

  v13 = [(_anonymous_namespace_ *)v94 componentConformingToProtocol:&unk_282E4E338];
  if (v13)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  v113 = BoundSkeleton;
  if (BoundSkeleton)
  {
    v16 = objc_opt_new();
    __p = 0;
    v111 = 0;
    v112 = 0;
    if ([v16 count])
    {
      v88 = a5;
      *&v97 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(objc_msgSend(BoundSkeleton, "jointPaths"), "count")}];
      v17 = [v14 skeleton];
      v126 = v17;
      if ([v14 jointPaths])
      {
        v19 = v14;
      }

      else
      {
        v19 = v17;
      }

      v20 = [v19 jointPaths];
      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v21 = [v20 countByEnumeratingWithState:&v122 objects:&v135 count:16];
      obj = v16;
      v92 = v14;
      v86 = a3;
      v22 = 0;
      if (v21)
      {
        v23 = *v123;
        do
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v123 != v23)
            {
              objc_enumerationMutation(v20);
            }

            v25 = *(*(&v122 + 1) + 8 * j);
            v26 = [*v18 objectForKeyedSubscript:v25];
            if (v26)
            {
              [v97 addObject:v26];
            }

            else
            {
              if (!v22)
              {
                v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v20, "count")}];
              }

              [v22 addObject:v25];
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v122 objects:&v135 count:16];
        }

        while (v21);
        if (v22)
        {
          a3 = v86;
          v16 = obj;
          v14 = v92;
          if ([v22 count])
          {
            v120 = 0u;
            v121 = 0u;
            v118 = 0u;
            v119 = 0u;
            v27 = [v22 countByEnumeratingWithState:&v118 objects:&v131 count:16];
            if (v27)
            {
              v28 = *v119;
              do
              {
                for (k = 0; k != v27; ++k)
                {
                  if (*v119 != v28)
                  {
                    objc_enumerationMutation(v22);
                  }

                  NSLog(&cfstr_BadJointPathDe.isa, *(*(&v118 + 1) + 8 * k));
                }

                v27 = [v22 countByEnumeratingWithState:&v118 objects:&v131 count:16];
              }

              while (v27);
            }
          }
        }

        else
        {
          a3 = v86;
          v16 = obj;
          v14 = v92;
        }
      }

      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v38 = [v16 countByEnumeratingWithState:&v106 objects:v129 count:16];
      if (v38)
      {
        v39 = *v107;
        do
        {
          for (m = 0; m != v38; ++m)
          {
            if (*v107 != v39)
            {
              objc_enumerationMutation(obja);
            }

            v41 = *(*(&v106 + 1) + 8 * m);
            v42 = [a2 objectForKeyedSubscript:{-[_anonymous_namespace_ path](v41, "path")}];
            v43 = [v42 geometry];
            v48 = [(_anonymous_namespace_ *)v41 componentConformingToProtocol:&unk_282E4E338];
            if (v41 != v94 && (v50 = v48) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              [v50 geometryBindTransform];
              v131 = v52;
              v132 = v53;
              v133 = v54;
              v134 = v55;
              [(SCNSkinner *)v47 setBaseGeometryBindTransform:&v131];
            }

            else
            {
              if (v93)
              {
                [v93 geometryBindTransform];
              }

              else
              {
                v141 = 0u;
                v142 = 0u;
                v139 = 0u;
                v140 = 0u;
                v137 = 0u;
                v138 = 0u;
                v135 = 0u;
                v136 = 0u;
              }

              v131 = v56;
              v132 = v57;
              v133 = v58;
              v134 = v59;
              [(SCNSkinner *)v47 setBaseGeometryBindTransform:&v131];
            }

            [(SCNSkinner *)v47 setSkeleton:v96];
            [v42 setSkinner:v47];
          }

          v16 = obja;
          v38 = [obja countByEnumeratingWithState:&v106 objects:v129 count:16];
        }

        while (v38);
        a3 = v87;
        a5 = v89;
        v14 = v93;
      }

      else
      {
        a5 = v89;
      }
    }

    else
    {
      v96 = 0;
    }

    if (__p)
    {
      v111 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v96 = 0;
  }

  if (v14)
  {
    v60 = [v14 jointAnimation];
    if (v60)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (!v96)
        {
          v96 = [a2 objectForKeyedSubscript:{-[_anonymous_namespace_ path](v94, "path")}];
        }

        v61 = [*(&v97 + 1) objectForKeyedSubscript:{-[_anonymous_namespace_ name](v60, "name")}];
        v62 = v61 != 0;
        if (v61)
        {
          [v96 addAnimation:v61 forKey:{-[_anonymous_namespace_ name](v60, "name")}];
        }

        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v63 = [a3 animations];
        v64 = [v63 countByEnumeratingWithState:&v102 objects:v128 count:16];
        if (v64)
        {
          v65 = *v103;
          do
          {
            for (n = 0; n != v64; ++n)
            {
              if (*v103 != v65)
              {
                objc_enumerationMutation(v63);
              }

              v67 = *(*(&v102 + 1) + 8 * n);
              if (v67 != v60)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  if (RootNodeName)
                  {
                    if (v71)
                    {
                      if ([RootNodeName isEqualToString:v71])
                      {
                        v72 = [*(&v97 + 1) objectForKeyedSubscript:{-[_anonymous_namespace_ name](v67, "name")}];
                        if (v72)
                        {
                          [v96 addAnimation:v72 forKey:{-[_anonymous_namespace_ name](v67, "name")}];
                          v62 = 1;
                        }
                      }
                    }
                  }
                }
              }
            }

            v64 = [v63 countByEnumeratingWithState:&v102 objects:v128 count:16];
          }

          while (v64);
        }

        v73 = v113;
        if (v113)
        {
          if (v62)
          {
            v100 = 0u;
            v101 = 0u;
            v98 = 0u;
            v99 = 0u;
            v75 = [v73 jointPaths];
            v76 = [v75 countByEnumeratingWithState:&v98 objects:v127 count:16];
            if (v76)
            {
              v77 = *v99;
              v78 = MEMORY[0x277D860B8];
              do
              {
                for (ii = 0; ii != v76; ++ii)
                {
                  if (*v99 != v77)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v80 = [*v74 objectForKeyedSubscript:*(*(&v98 + 1) + 8 * ii)];
                  if (v80)
                  {
                    v81 = *(v78 + 16);
                    v82 = *(v78 + 32);
                    v83 = *(v78 + 48);
                    v135 = *v78;
                    v136 = v81;
                    v137 = v82;
                    v138 = v83;
                    [v80 setTransform:&v135];
                  }
                }

                v76 = [v75 countByEnumeratingWithState:&v98 objects:v127 count:16];
              }

              while (v76);
            }
          }
        }
      }
    }
  }
}

void sub_21BF17284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::push_back[abi:nn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

id uniqueIndexBufferWithSCNGeometryElements(void *a1, uint64_t a2, std::vector<int> *a3, uint64_t a4, _DWORD *a5)
{
  *a5 = 1;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([a1 count])
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [a1 objectAtIndexedSubscript:v10];
      if ([v11 indicesChannelCount] >= 2)
      {
        *a5 = [v11 indicesChannelCount];
        v8 = 1;
      }

      v12 = [objc_msgSend(v11 "data")];
      v9 += v12 / [v11 bytesPerIndex];
      ++v10;
    }

    while (v10 < [a1 count]);
    if (v8)
    {
      __u = -1;
      std::vector<int>::assign(a3, v9, &__u);
      if ([a1 count])
      {
        v13 = [a1 objectAtIndexedSubscript:0];
        [v13 hasInterleavedIndicesChannels];
        v14 = [v13 indicesChannelCount];
        v15 = [v13 bytesPerIndex];
        v16 = [v13 primitiveCount];
        [objc_msgSend(v13 "data")];
        v17 = [objc_msgSend(v13 "data")];
        if ([v13 primitiveType] == 1 || objc_msgSend(v13, "primitiveType") != 4)
        {
          [objc_msgSend(v13 "data")];
        }

        else
        {
          v18 = [objc_msgSend(v13 "data")];
          [v18 bytes];
          v17 = [v18 length];
        }

        malloc_type_malloc((v17 / v15) / v14 * v15, 0x100004077774924uLL);
        UniqueVertices();
      }
    }
  }

  return v7;
}

void std::vector<int>::assign(std::vector<int> *this, std::vector<int>::size_type __n, std::vector<int>::const_reference __u)
{
  value = this->__end_cap_.__value_;
  begin = this->__begin_;
  if (__n > (value - begin) >> 2)
  {
    if (begin)
    {
      this->__end_ = begin;
      operator delete(begin);
      value = 0;
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    if (!(__n >> 62))
    {
      v7 = value >> 1;
      if (value >> 1 <= __n)
      {
        v7 = __n;
      }

      if (value >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v8 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = v7;
      }

      std::vector<float>::__vallocate[abi:nn200100](this, v8);
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  end = this->__end_;
  v10 = end - begin;
  if (v10 >= __n)
  {
    v11 = __n;
  }

  else
  {
    v11 = end - begin;
  }

  if (v11)
  {
    v12 = 0;
    v13 = *__u;
    v14 = (v11 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v15 = vdupq_n_s64(v11 - 1);
    v16 = begin + 2;
    do
    {
      v17 = vdupq_n_s64(v12);
      v18 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_21C27F640)));
      if (vuzp1_s16(v18, *v15.i8).u8[0])
      {
        *(v16 - 2) = v13;
      }

      if (vuzp1_s16(v18, *&v15).i8[2])
      {
        *(v16 - 1) = v13;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v17, xmmword_21C27F630)))).i32[1])
      {
        *v16 = v13;
        v16[1] = v13;
      }

      v12 += 4;
      v16 += 4;
    }

    while (v14 != v12);
  }

  v19 = __n >= v10;
  v20 = __n - v10;
  if (v20 != 0 && v19)
  {
    v21 = 0;
    v22 = &end[v20];
    v23 = *__u;
    v24 = (4 * __n - (end - begin) - 4) >> 2;
    v25 = vdupq_n_s64(v24);
    v26 = end + 2;
    do
    {
      v27 = vdupq_n_s64(v21);
      v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_21C27F640)));
      if (vuzp1_s16(v28, *v25.i8).u8[0])
      {
        *(v26 - 2) = v23;
      }

      if (vuzp1_s16(v28, *&v25).i8[2])
      {
        *(v26 - 1) = v23;
      }

      if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_21C27F630)))).i32[1])
      {
        *v26 = v23;
        v26[1] = v23;
      }

      v21 += 4;
      v26 += 4;
    }

    while (((v24 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v21);
    this->__end_ = v22;
  }

  else
  {
    this->__end_ = &begin[__n];
  }
}

void flip_UVs(MDLVertexFormat a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == MDLVertexFormatFloat2)
  {
    if (a5)
    {
      v5 = &a2[a3 + 4];
      do
      {
        *v5 = 1.0 - *v5;
        v5 = (v5 + a4);
        --a5;
      }

      while (a5);
    }
  }

  else
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_21BEF7000, v6, OS_LOG_TYPE_DEFAULT, "Warning: Warning: unable to flip non-float2 texture coordinates, skipping\n", v7, 2u);
    }
  }
}

void *remapVertexAttributeBuffer(void *a1, int a2, void *a3, void *a4, int a5, int a6, int a7, char *a8)
{
  v10 = [a1 dataStride];
  result = [a1 dataOffset];
  v12 = result;
  if (a6 >= 1)
  {
    v13 = 0;
    v14 = 4 * a2 - 4;
    v15 = a8;
    do
    {
      if (a2)
      {
        v16 = *(*a3 + v14);
      }

      else
      {
        v16 = v13;
      }

      result = memcpy(v15, ([objc_msgSend(a1 "data")] + v12 + (v16 * v10)), v10);
      ++v13;
      v15 += v10;
      v14 += 4 * a5;
    }

    while (a6 != v13);
  }

  if (a7 >= 1)
  {
    v17 = a7;
    v18 = &a8[v10 * a6];
    v19 = 4 * a2;
    do
    {
      result = memcpy(v18, ([objc_msgSend(a1 "data")] + v12 + (*(*a4 + v19) * v10)), v10);
      v18 += v10;
      v19 += 4 * a5 + 4;
      --v17;
    }

    while (v17);
  }

  return result;
}

void setupMDLMaterialProperty(MDLMaterial *a1, NSString *a2, SCNMaterialProperty *a3, MDLMaterialSemantic a4)
{
  v7 = [(MDLMaterial *)a1 propertyNamed:a2];
  v8 = v7;
  if (!v7)
  {
    v8 = [objc_alloc(MEMORY[0x277CD7AF8]) initWithName:a2 semantic:a4];
  }

  [(SCNMaterialProperty *)a3 contents];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v10 = [(SCNMaterialProperty *)a3 contents];
  if (isKindOfClass)
  {
    [v10 scn_colorComponentsForModelIO];
    v42 = v11;
    v11.i32[0] = v11.i32[3];
    if (v11.f32[3] == 1.0)
    {
      [(MDLMaterialProperty *)v8 setType:7, *v11.i64];
      [(SCNMaterialProperty *)a3 intensity];
      *&v12 = v12;
      [(MDLMaterialProperty *)v8 setFloat3Value:*vmulq_n_f32(v42, *&v12).i64];
    }

    else
    {
      [(MDLMaterialProperty *)v8 setType:8, *v11.i64];
      [(SCNMaterialProperty *)a3 intensity];
      *&v22 = v22;
      [(MDLMaterialProperty *)v8 setFloat4Value:*vmulq_n_f32(v42, *&v22).i64];
    }
  }

  else
  {
    objc_opt_class();
    v13 = objc_opt_isKindOfClass();
    v14 = [(SCNMaterialProperty *)a3 contents];
    v15 = v14;
    if (v13)
    {
      if (v14)
      {
        [(MDLMaterialProperty *)v8 setType:5];
        [(SCNMaterialProperty *)a3 intensity];
        v17 = v16;
        [v15 floatValue];
        v19 = v17 * v18;
        *&v19 = v19;
        [(MDLMaterialProperty *)v8 setFloatValue:v19];
      }
    }

    else
    {
      objc_opt_class();
      v20 = objc_opt_isKindOfClass();
      v21 = [(SCNMaterialProperty *)a3 contents];
      if (v20)
      {
        if (![objc_msgSend(v21 "pathExtension")])
        {
          [(MDLMaterialProperty *)v8 setType:2];
          [(MDLMaterialProperty *)v8 setURLValue:[(SCNMaterialProperty *)a3 contents]];
          goto LABEL_21;
        }
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MDLMaterialProperty *)v8 setType:1];
          [(MDLMaterialProperty *)v8 setStringValue:[(SCNMaterialProperty *)a3 contents]];
          goto LABEL_21;
        }
      }

      v23 = [(SCNMaterialProperty *)a3 getC3DImageRef];
      if (v23)
      {
        v24 = _C3DImageToMDLTexture(v23, 0);
        if (a3)
        {
          [(SCNMaterialProperty *)a3 contentsTransform];
          v27 = v43;
          v26.i32[0] = v44.i32[0];
          v28 = v43.i32[3];
          v29 = v44.i32[1];
          v31 = v45.i32[0];
          v30 = v46;
          v32 = vextq_s8(v46, vtrn2q_s32(v45, v46), 4uLL);
          v33 = vzip2q_s64(v45, v44);
          v25 = vextq_s8(v27, v27, 8uLL);
          *v25.i8 = vext_s8(*v43.i8, *v25.i8, 4uLL);
        }

        else
        {
          v30 = 0uLL;
          v25.i64[0] = 0;
          v29 = 0;
          v31 = 0;
          v26.i32[0] = 0;
          v28 = 0;
          v27 = 0uLL;
          v32 = 0uLL;
          v33 = 0uLL;
        }

        v34 = vextq_s8(vextq_s8(v27, v27, 4uLL), v25, 0xCuLL);
        v34.i32[3] = v28;
        v26.i32[1] = v29;
        v26.i64[1] = v33.i64[1];
        v35 = vextq_s8(v32, v33, 8uLL);
        v35.i32[0] = v31;
        v47.columns[0] = v34;
        v47.columns[1] = v26;
        v47.columns[2] = v35;
        v47.columns[3] = vextq_s8(vextq_s8(v30, v30, 4uLL), v32, 0xCuLL);
        if (v24)
        {
          v36 = convertUVTranformForModelIO(&v47);
          v40 = [objc_alloc(MEMORY[0x277CD7B68]) initWithMatrix:{v36, v37, v38, v39}];
          v41 = objc_alloc_init(MEMORY[0x277CD7B60]);
          [v41 setTransform:v40];
          [v41 setTexture:v24];
          [(MDLMaterialProperty *)v8 setType:3];
          [(MDLMaterialProperty *)v8 setTextureSamplerValue:v41];
        }
      }
    }
  }

LABEL_21:
  if (!v7)
  {
    if (v8)
    {
    }
  }
}

void *anonymous namespace::_makeSkelNodes(void *a1, void *a2, uint64_t a3)
{
  v44 = a3;
  v45 = a1;
  v65 = *MEMORY[0x277D85DE8];
  v61 = a2;
  v4 = objc_opt_new();
  v5 = [objc_msgSend(a2 "jointPaths")];
  MEMORY[0x28223BE20]();
  v6 = [a2 jointRestTransforms];
  v46 = &v42 - 8 * v5;
  if ([v6 getFloat4x4Array:v46 maxCount:v5] < v5)
  {
    v7 = MEMORY[0x277D860B8];
    v8 = v46;
    do
    {
      v9 = v7[1];
      *v8 = *v7;
      *(v8 + 1) = v9;
      v10 = v7[3];
      *(v8 + 2) = v7[2];
      *(v8 + 3) = v10;
      v8 += 8;
      --v5;
    }

    while (v5);
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v43 = a2;
  v47 = [a2 jointPaths];
  v11 = [v47 countByEnumeratingWithState:&v57 objects:v64 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v58;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v58 != v14)
        {
          objc_enumerationMutation(v47);
        }

        v16 = *(*(&v57 + 1) + 8 * i);
        v17 = [v16 rangeOfString:@"/" options:4];
        v18 = v16;
        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v18 = [v16 substringFromIndex:v17 + 1];
        }

        if (v18)
        {
          v19 = objc_opt_new();
          [v19 setName:v18];
          if (v19)
          {
            [v4 setObject:v19 forKeyedSubscript:v16];
            v20 = &v46[8 * v13];
            v21 = *(v20 + 1);
            v22 = *(v20 + 2);
            v23 = *(v20 + 3);
            v56[0] = *v20;
            v56[1] = v21;
            v56[2] = v22;
            v56[3] = v23;
            [v19 setTransform:v56];
          }
        }

        ++v13;
      }

      v12 = [v47 countByEnumeratingWithState:&v57 objects:v64 count:16];
    }

    while (v12);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v24 = [v43 jointPaths];
  v25 = [v24 countByEnumeratingWithState:&v52 objects:v63 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v53;
    do
    {
      v28 = 0;
      do
      {
        if (*v53 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v52 + 1) + 8 * v28);
        v30 = [v29 rangeOfString:@"/" options:4];
        if (v30)
        {
          v31 = v30 == 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = 1;
        }

        if (!v31)
        {
          v32 = [v29 substringToIndex:v30];
          if (v32)
          {
            v33 = v32;
            if ([v4 valueForKey:v32])
            {
              [objc_msgSend(v4 objectForKeyedSubscript:{v33), "addChildNode:", objc_msgSend(v4, "objectForKeyedSubscript:", v29)}];
            }
          }
        }

        ++v28;
      }

      while (v26 != v28);
      v34 = [v24 countByEnumeratingWithState:&v52 objects:v63 count:16];
      v26 = v34;
    }

    while (v34);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v35 = [v4 countByEnumeratingWithState:&v48 objects:v62 count:16];
  v36 = v45;
  if (v35)
  {
    v37 = v35;
    v38 = *v49;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v49 != v38)
        {
          objc_enumerationMutation(v4);
        }

        v40 = [v4 objectForKeyedSubscript:*(*(&v48 + 1) + 8 * j)];
        if (![v40 parentNode])
        {
          [v36 addChildNode:v40];
        }
      }

      v37 = [v4 countByEnumeratingWithState:&v48 objects:v62 count:16];
    }

    while (v37);
  }

  *result = v4;
  result[1] = v36;
  return result;
}

SCNGeometrySource *anonymous namespace::boneWeightsFromMDL(_anonymous_namespace_ *this, MDLMesh *a2)
{
  v3 = [(_anonymous_namespace_ *)this vertexCount];
  v4 = [(_anonymous_namespace_ *)this vertexAttributeDataForAttributeNamed:*MEMORY[0x277CD7A90]];
  v5 = [v4 dataStart];
  v6 = [v4 format] & 0xFFF;
  return +[SCNGeometrySource geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:](SCNGeometrySource, "geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytes:v5 length:4 * v6 * v3], @"kGeometrySourceSemanticBoneWeights", v3, 1, v6, 4, 0, 4 * v6);
}

SCNGeometrySource *anonymous namespace::boneIndicesFromMDL(_anonymous_namespace_ *this, MDLMesh *a2)
{
  v3 = [(_anonymous_namespace_ *)this vertexCount];
  v4 = [(_anonymous_namespace_ *)this vertexAttributeDataForAttributeNamed:*MEMORY[0x277CD7A88]];
  v5 = [v4 dataStart];
  v6 = [v4 format] & 0xFFF;
  return +[SCNGeometrySource geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:](SCNGeometrySource, "geometrySourceWithData:semantic:vectorCount:floatComponents:componentsPerVector:bytesPerComponent:dataOffset:dataStride:", [MEMORY[0x277CBEA90] dataWithBytes:v5 length:2 * v6 * v3], @"kGeometrySourceSemanticBoneIndices", v3, 0, v6, 2, 0, 2 * v6);
}

void sub_21BF1BCB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a49, 8);
  _Unwind_Resume(a1);
}

void sub_21BF1C59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<float>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<float>::__append(this, __sz - v2);
  }
}

void sub_21BF1C7D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void *a12, uint64_t a13, char a14, void *a15)
{
  std::__tree<char>::destroy(&a11, a12);
  std::__tree<char>::destroy(&a14, a15);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::build_crease_map(void *a1, uint64_t a2, uint64_t a3)
{
  result = [a1 topology];
  if (result)
  {
    if ([objc_msgSend(a1 "topology")])
    {
      if ([objc_msgSend(a1 "topology")])
      {
        v7 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 "topology")];
        v8 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 "topology")];
        v9 = [objc_msgSend(a1 "topology")];
        if (v9 >= 1)
        {
          v10 = v9 & 0x7FFFFFFF;
          v11 = (v7 + 4);
          do
          {
            v17 = *v11 | (*(v11 - 1) << 32);
            v12 = *v8++;
            v18 = &v17;
            *(std::__tree<std::__value_type<unsigned long long,float>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,float>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,float>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(a2, &v17) + 10) = v12;
            v11 += 2;
            --v10;
          }

          while (v10);
        }
      }
    }

    result = [objc_msgSend(a1 "topology")];
    if (result)
    {
      result = [objc_msgSend(a1 "topology")];
      if (result)
      {
        v13 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 "topology")];
        v14 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 "topology")];
        result = [objc_msgSend(a1 "topology")];
        if (result >= 1)
        {
          v15 = result & 0x7FFFFFFF;
          do
          {
            v16 = *v14++;
            v18 = v13;
            result = std::__tree<std::__value_type<unsigned int,float>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,float>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,float>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a3, v13);
            *(result + 32) = v16;
            ++v13;
            --v15;
          }

          while (v15);
        }
      }
    }
  }

  return result;
}

unint64_t anonymous namespace::add_geometry_sources(_anonymous_namespace_ *this, NSMutableArray *a2, NSMutableArray *a3, MDLMesh *a4, NSDictionary *a5)
{
  v6 = [(NSMutableArray *)a3 vertexDescriptor];
  result = [objc_msgSend(v6 "attributes")];
  if (result)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = *MEMORY[0x277CD7AB0];
    v12 = *MEMORY[0x277CD7AA0];
    v13 = *MEMORY[0x277CD7A88];
    v14 = *MEMORY[0x277CD7A90];
    do
    {
      v15 = [objc_msgSend(v6 "attributes")];
      if ([v15 format])
      {
        v16 = [objc_msgSend(v15 "name")];
        if (v8 & v16)
        {
          v8 = 1;
        }

        else
        {
          v8 |= v16;
          v17 = [objc_msgSend(v15 "name")];
          if (v9 & v17)
          {
            v9 = 1;
          }

          else
          {
            v9 |= v17;
            if (([objc_msgSend(v15 "name")] & 1) == 0 && (objc_msgSend(objc_msgSend(v15, "name"), "containsString:", v14) & 1) == 0 && (objc_msgSend(objc_msgSend(v15, "name"), "hasSuffix:", @"UVi") & 1) == 0)
            {
              v18 = [SCNGeometrySource geometrySourceWithMDLVertexAttribute:v15 mesh:a3];
              if (v18)
              {
                [(_anonymous_namespace_ *)this addObject:v18];
                -[NSMutableArray addObject:](a2, "addObject:", [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v10]);
              }
            }
          }
        }
      }

      ++v10;
      result = [objc_msgSend(v6 "attributes")];
    }

    while (v10 < result);
  }

  return result;
}

SCNGeometrySource *anonymous namespace::add_corners(SCNGeometrySource *result, void *a2, void *a3)
{
  if (a2[2])
  {
    v5 = result;
    v6 = [a3 vertexDescriptor];
    v7 = [v6 attributeNamed:*MEMORY[0x277CD7AB0]];
    if (!v7)
    {
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
      }
    }

    v9 = [objc_msgSend(objc_msgSend(a3 "vertexBuffers")];
    v10 = v9 / [objc_msgSend(objc_msgSend(objc_msgSend(a3 "vertexDescriptor")];
    v11 = [MEMORY[0x277CBEB28] dataWithLength:4 * v10];
    [v11 setLength:4 * v10];
    v12 = [v11 mutableBytes];
    bzero(v12, 4 * v10);
    v15 = *a2;
    v14 = a2 + 1;
    v13 = v15;
    if (v15 != v14)
    {
      do
      {
        *(v12 + *(v13 + 7)) = *(v13 + 8);
        v16 = v13[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v13[2];
            v18 = *v17 == v13;
            v13 = v17;
          }

          while (!v18);
        }

        v13 = v17;
      }

      while (v17 != v14);
    }

    result = [SCNGeometrySource geometrySourceWithData:v11 semantic:@"kGeometrySourceSemanticVertexCrease" vectorCount:v10 floatComponents:1 componentsPerVector:1 bytesPerComponent:4 dataOffset:0 dataStride:4];
    if (result)
    {
      return [(SCNGeometrySource *)v5 addObject:result];
    }
  }

  return result;
}

SCNGeometryElement *anonymous namespace::add_creases(SCNGeometryElement *result, void *a2, SCNGeometryElement **a3)
{
  elementData = result->_elementData;
  if (elementData)
  {
    v6 = result;
    v7 = 4 * elementData;
    v8 = [MEMORY[0x277CBEB28] dataWithLength:4 * elementData];
    [v8 setLength:v7];
    v9 = [v8 mutableBytes];
    v10 = 8 * v6->_elementData;
    v11 = [MEMORY[0x277CBEB28] dataWithLength:v10];
    [v11 setLength:v10];
    v12 = [v11 mutableBytes];
    isa = v6->super.isa;
    if (v6->super.isa != &v6->_meshElement)
    {
      v14 = 0;
      do
      {
        var3 = isa->var0.var3;
        *(v12 + 8 * v14) = HIDWORD(var3);
        *(v12 + 4 * ((2 * v14) | 1)) = var3;
        *(v9 + 4 * v14) = isa->var0.var4;
        var1 = isa->var0.var0.var1;
        if (var1)
        {
          do
          {
            v17 = var1;
            var1 = var1->var0.var0.var0;
          }

          while (var1);
        }

        else
        {
          do
          {
            v17 = isa->var0.var1;
            v18 = *v17 == isa;
            isa = v17;
          }

          while (!v18);
        }

        ++v14;
        isa = v17;
      }

      while (v17 != &v6->_meshElement);
    }

    *a2 = [SCNGeometrySource geometrySourceWithData:v8 semantic:@"kGeometrySourceSemanticEdgeCrease" vectorCount:v6->_elementData floatComponents:1 componentsPerVector:1 bytesPerComponent:4 dataOffset:0 dataStride:4];
    result = [SCNGeometryElement geometryElementWithData:v11 primitiveType:2 primitiveCount:v6->_elementData bytesPerIndex:4];
    *a3 = result;
  }

  return result;
}

void sub_21BF1D2B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, void *a32, uint64_t a33, char a34, void *a35)
{
  std::__tree<char>::destroy(&a31, a32);
  std::__tree<char>::destroy(&a34, a35);
  _Unwind_Resume(a1);
}

SCNGeometryElement *_indexedGeometryElement(MDLSubmesh *a1)
{
  if (!-[MDLSubmesh faceIndexing](a1, "faceIndexing") || -[MDLSubmesh geometryType](a1, "geometryType") != MDLGeometryTypeVariableTopology || !-[MDLSubmeshTopology faceTopology](-[MDLSubmesh topology](a1, "topology"), "faceTopology") || ![-[MDLSubmesh indexBuffer](a1 "indexBuffer")])
  {
    return 0;
  }

  v2 = [(MDLSubmesh *)a1 indexType]>> 3;
  switch(v2)
  {
    case 4uLL:

      return _createIndexedGeometryElement<unsigned int>(a1);
    case 2uLL:

      return _createIndexedGeometryElement<unsigned short>(a1);
    case 1uLL:

      return _createIndexedGeometryElement<unsigned char>(a1);
    default:
      return 0;
  }
}

SCNGeometryElement *_createIndexedGeometryElement<unsigned char>(void *a1)
{
  v2 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 "topology")];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_msgSend(objc_msgSend(a1 "indexBuffer")];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [objc_msgSend(a1 "topology")];
  v7 = [objc_msgSend(a1 "indexBuffer")];
  __p = 0;
  v32 = 0;
  v33 = 0;
  std::vector<unsigned char>::reserve(&__p, v7 + v6);
  v29 = v6;
  if (v6)
  {
    v8 = v32;
    do
    {
      v10 = *v3++;
      v9 = v10;
      if (v8 >= v33)
      {
        v11 = __p;
        v12 = (v8 - __p);
        v13 = v8 - __p + 1;
        if (v13 < 0)
        {
LABEL_44:
          std::string::__throw_length_error[abi:nn200100]();
        }

        v14 = v33 - __p;
        if (2 * (v33 - __p) > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          operator new();
        }

        v16 = v8 - __p;
        *v12 = v9;
        v8 = v12 + 1;
        memcpy(0, v11, v16);
        __p = 0;
        v32 = v12 + 1;
        v33 = 0;
        if (v11)
        {
          operator delete(v11);
        }
      }

      else
      {
        *v8++ = v9;
      }

      v32 = v8;
      --v6;
    }

    while (v6);
  }

  if (v7)
  {
    v17 = v32;
    do
    {
      if (v17 >= v33)
      {
        v18 = __p;
        v19 = (v17 - __p);
        v20 = v17 - __p + 1;
        if (v20 < 0)
        {
          goto LABEL_44;
        }

        v21 = v33 - __p;
        if (2 * (v33 - __p) > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v22 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          operator new();
        }

        v23 = v17 - __p;
        *v19 = *v5;
        v17 = v19 + 1;
        memcpy(0, v18, v23);
        __p = 0;
        v32 = v19 + 1;
        v33 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      else
      {
        *v17++ = *v5;
      }

      v32 = v17;
      ++v5;
      --v7;
    }

    while (v7);
  }

  else
  {
    v17 = v32;
  }

  v25 = [MEMORY[0x277CBEA90] dataWithBytes:__p length:{v17 - __p, v29}];
  v26 = 0;
  for (i = 0; i < [objc_msgSend(a1 "faceIndexing")]; ++i)
  {
    if (v26 < [objc_msgSend(objc_msgSend(a1 "faceIndexing")])
    {
      v26 = [objc_msgSend(objc_msgSend(a1 "faceIndexing")];
    }
  }

  v24 = [SCNGeometryElement geometryElementWithData:v25 primitiveType:4 primitiveCount:v30 indicesChannelCount:v26 + 1 interleavedIndicesChannels:1 bytesPerIndex:1];
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

  return v24;
}

void sub_21BF1DB90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

SCNGeometryElement *_createIndexedGeometryElement<unsigned short>(void *a1)
{
  v2 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 "topology")];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_msgSend(objc_msgSend(a1 "indexBuffer")];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [objc_msgSend(a1 "topology")];
  __src = 0;
  v36 = 0;
  v37 = 0;
  v33 = [objc_msgSend(a1 "indexBuffer")];
  std::vector<unsigned short>::reserve(&__src, v6 + (v33 >> 1));
  v34 = v6;
  if (v6)
  {
    v7 = v36;
    v8 = v34;
    do
    {
      v10 = *v3++;
      v9 = v10;
      if (v7 >= v37)
      {
        v11 = __src;
        v12 = v7 - __src;
        v13 = (v7 - __src) >> 1;
        if (v13 <= -2)
        {
LABEL_45:
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v37 - __src <= v13 + 1)
        {
          v14 = v13 + 1;
        }

        else
        {
          v14 = v37 - __src;
        }

        if (v37 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(&__src, v15);
        }

        v16 = v13;
        v17 = (2 * v13);
        v18 = &v17[-v16];
        *v17 = v9;
        v7 = (v17 + 1);
        memcpy(v18, v11, v12);
        v19 = __src;
        __src = v18;
        v36 = v7;
        v37 = 0;
        if (v19)
        {
          operator delete(v19);
        }
      }

      else
      {
        *v7 = v9;
        v7 += 2;
      }

      v36 = v7;
      --v8;
    }

    while (v8);
  }

  if (v33 > 1)
  {
    v22 = v33 >> 1;
    v20 = v36;
    do
    {
      if (v20 >= v37)
      {
        v23 = __src;
        v24 = v20 - __src;
        v25 = (v20 - __src) >> 1;
        if (v25 <= -2)
        {
          goto LABEL_45;
        }

        if (v37 - __src <= v25 + 1)
        {
          v26 = v25 + 1;
        }

        else
        {
          v26 = v37 - __src;
        }

        if (v37 - __src >= 0x7FFFFFFFFFFFFFFELL)
        {
          v27 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned short>>(&__src, v27);
        }

        *(2 * v25) = *v5;
        v20 = (2 * v25 + 2);
        memcpy(0, v23, v24);
        v28 = __src;
        __src = 0;
        v36 = v20;
        v37 = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        *v20 = *v5;
        v20 += 2;
      }

      v36 = v20;
      ++v5;
      --v22;
    }

    while (v22);
  }

  else
  {
    v20 = v36;
  }

  v29 = [MEMORY[0x277CBEA90] dataWithBytes:__src length:v20 - __src];
  v30 = 0;
  for (i = 0; i < [objc_msgSend(a1 "faceIndexing")]; ++i)
  {
    if (v30 < [objc_msgSend(objc_msgSend(a1 "faceIndexing")])
    {
      v30 = [objc_msgSend(objc_msgSend(a1 "faceIndexing")];
    }
  }

  v21 = [SCNGeometryElement geometryElementWithData:v29 primitiveType:4 primitiveCount:v34 indicesChannelCount:v30 + 1 interleavedIndicesChannels:1 bytesPerIndex:2];
  if (__src)
  {
    v36 = __src;
    operator delete(__src);
  }

  return v21;
}

void sub_21BF1DEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

SCNGeometryElement *_createIndexedGeometryElement<unsigned int>(void *a1)
{
  v2 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 "topology")];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_msgSend(objc_msgSend(a1 "indexBuffer")];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [objc_msgSend(a1 "topology")];
  memset(&v37, 0, sizeof(v37));
  v35 = [objc_msgSend(a1 "indexBuffer")];
  std::vector<unsigned int>::reserve(&v37, v6 + (v35 >> 2));
  v36 = v6;
  if (v6)
  {
    end = v37.__end_;
    v8 = v36;
    do
    {
      v10 = *v3++;
      v9 = v10;
      if (end >= v37.__end_cap_.__value_)
      {
        begin = v37.__begin_;
        v12 = end - v37.__begin_;
        v13 = end - v37.__begin_;
        v14 = v13 + 1;
        if ((v13 + 1) >> 62)
        {
LABEL_43:
          std::string::__throw_length_error[abi:nn200100]();
        }

        v15 = v37.__end_cap_.__value_ - v37.__begin_;
        if ((v37.__end_cap_.__value_ - v37.__begin_) >> 1 > v14)
        {
          v14 = v15 >> 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v16 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v16 = v14;
        }

        if (v16)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&v37, v16);
        }

        v17 = v13;
        v18 = (4 * v13);
        v19 = &v18[-v17];
        *v18 = v9;
        end = v18 + 1;
        memcpy(v19, begin, v12);
        v20 = v37.__begin_;
        v37.__begin_ = v19;
        v37.__end_ = end;
        v37.__end_cap_.__value_ = 0;
        if (v20)
        {
          operator delete(v20);
        }
      }

      else
      {
        *end++ = v9;
      }

      v37.__end_ = end;
      --v8;
    }

    while (v8);
  }

  if (v35 > 3)
  {
    v23 = v35 >> 2;
    v21 = v37.__end_;
    do
    {
      if (v21 >= v37.__end_cap_.__value_)
      {
        v24 = v37.__begin_;
        v25 = v21 - v37.__begin_;
        v26 = v21 - v37.__begin_;
        v27 = v26 + 1;
        if ((v26 + 1) >> 62)
        {
          goto LABEL_43;
        }

        v28 = v37.__end_cap_.__value_ - v37.__begin_;
        if ((v37.__end_cap_.__value_ - v37.__begin_) >> 1 > v27)
        {
          v27 = v28 >> 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v29 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<float>>(&v37, v29);
        }

        *(4 * v26) = *v5;
        v21 = (4 * v26 + 4);
        memcpy(0, v24, v25);
        v30 = v37.__begin_;
        v37.__begin_ = 0;
        v37.__end_ = v21;
        v37.__end_cap_.__value_ = 0;
        if (v30)
        {
          operator delete(v30);
        }
      }

      else
      {
        *v21++ = *v5;
      }

      v37.__end_ = v21;
      ++v5;
      --v23;
    }

    while (v23);
  }

  else
  {
    v21 = v37.__end_;
  }

  v31 = [MEMORY[0x277CBEA90] dataWithBytes:v37.__begin_ length:v21 - v37.__begin_];
  v32 = 0;
  for (i = 0; i < [objc_msgSend(a1 "faceIndexing")]; ++i)
  {
    if (v32 < [objc_msgSend(objc_msgSend(a1 "faceIndexing")])
    {
      v32 = [objc_msgSend(objc_msgSend(a1 "faceIndexing")];
    }
  }

  v22 = [SCNGeometryElement geometryElementWithData:v31 primitiveType:4 primitiveCount:v36 indicesChannelCount:v32 + 1 interleavedIndicesChannels:1 bytesPerIndex:4];
  if (v37.__begin_)
  {
    v37.__end_ = v37.__begin_;
    operator delete(v37.__begin_);
  }

  return v22;
}

void sub_21BF1E1F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

MDLTextureSampler *setupSCNMaterialProperty(MDLTextureSampler *result, MDLMaterial *a2, MDLMaterialSemantic a3, int a4, NSDictionary *a5)
{
  if (!result)
  {
    return result;
  }

  v7 = result;
  v8 = [(MDLMaterial *)a2 propertyWithSemantic:a3];
  if ([(MDLMaterialProperty *)v8 type]== MDLMaterialPropertyTypeURL && [(MDLMaterialProperty *)v8 URLValue])
  {
    v9 = [(MDLMaterialProperty *)v8 URLValue];
LABEL_32:
    [(MDLTextureSampler *)v7 setContents:v9];
    goto LABEL_33;
  }

  if ([(MDLMaterialProperty *)v8 type]== MDLMaterialPropertyTypeString && [(MDLMaterialProperty *)v8 stringValue])
  {
    if (![(MDLMaterialProperty *)v8 URLValue])
    {
      v9 = [(MDLMaterialProperty *)v8 stringValue];
      goto LABEL_32;
    }

    v10 = [(NSURL *)[(MDLMaterialProperty *)v8 URLValue] path];
    if ([(MDLMaterialProperty *)v8 stringValue])
    {
      if ([[(NSString *)v10 pathExtension] isEqualToString:@"usdz"])
      {
        v11 = [objc_msgSend(objc_msgSend(MEMORY[0x277CCACC8] "currentThread")];
        if (v11)
        {
          v12 = v11;
          if (objc_opt_respondsToSelector())
          {
            v13 = [v12 resolveInsideArchiveWithAssetNamed:{-[MDLMaterialProperty stringValue](v8, "stringValue")}];
            if ([v13 count] >= 2)
            {
              v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
              v15 = [objc_alloc(MEMORY[0x277CCACE0]) initWithURL:v14 resolvingAgainstBaseURL:0];
              v16 = 1;
              [v15 setQuery:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"offset=%d&size=%d", objc_msgSend(objc_msgSend(v13, "objectAtIndexedSubscript:", 0), "intValue"), objc_msgSend(objc_msgSend(v13, "objectAtIndexedSubscript:", 1), "intValue"))}];
              -[MDLTextureSampler setContents:](v7, "setContents:", [v15 URL]);

              goto LABEL_34;
            }
          }
        }
      }
    }

    [(MDLTextureSampler *)v7 _setImagePath:[(MDLMaterialProperty *)v8 stringValue] withResolvedPath:[(NSURL *)[(MDLMaterialProperty *)v8 URLValue] absoluteString]];
LABEL_33:
    v16 = 1;
    goto LABEL_34;
  }

  if ([(MDLMaterialProperty *)v8 type]!= MDLMaterialPropertyTypeTexture)
  {
    if ([(MDLMaterialProperty *)v8 type]== MDLMaterialPropertyTypeFloat4)
    {
      [(MDLMaterialProperty *)v8 float4Value];
      v17 = MEMORY[0x277D75348];
      v19 = v18;
      v21 = v20;
      v23 = v22;
      v25 = v24;
    }

    else
    {
      if ([(MDLMaterialProperty *)v8 type]!= MDLMaterialPropertyTypeFloat3)
      {
        if ([(MDLMaterialProperty *)v8 type]== MDLMaterialPropertyTypeFloat)
        {
          [(MDLMaterialProperty *)v8 floatValue];
          v9 = [MEMORY[0x277CCABB0] numberWithFloat:?];
          goto LABEL_32;
        }

        if ([(MDLMaterialProperty *)v8 type]== MDLMaterialPropertyTypeColor)
        {
          v9 = [MEMORY[0x277D75348] colorWithCGColor:{-[MDLMaterialProperty color](v8, "color")}];
          goto LABEL_32;
        }

        goto LABEL_33;
      }

      [(MDLMaterialProperty *)v8 float3Value];
      v17 = MEMORY[0x277D75348];
      v19 = v26;
      v21 = v27;
      v23 = v28;
      v25 = 1.0;
    }

    v9 = [v17 scn_colorWithModelIORed:a5 green:v19 blue:v21 alpha:v23 options:v25];
    goto LABEL_32;
  }

  if ([(MDLMaterialProperty *)v8 textureSamplerValue]&& [(MDLTextureSampler *)[(MDLMaterialProperty *)v8 textureSamplerValue] texture])
  {
    [(MDLTextureSampler *)v7 setContents:[(MDLTextureSampler *)[(MDLMaterialProperty *)v8 textureSamplerValue] texture]];
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  if (C3DWasLinkedBeforeMajorOSYear2018())
  {
    memset(&a.m22, 0, 40);
    *&a.m12 = 0u;
    a.m11 = 1.0;
    a.m22 = -1.0;
    a.m33 = 1.0;
    a.m44 = 1.0;
    *&b.m14 = 0;
    *&b.m12 = 0;
    b.m11 = 1.0;
    b.m22 = 1.0;
    *&b.m23 = 0;
    *&b.m31 = 0;
    *&b.m33 = xmmword_21C27F7E0;
    *&b.m43 = 0x3F80000000000000;
    SCNMatrix4Mult(&v69, &a, &b);
    a = v69;
    [(MDLTextureSampler *)v7 setContentsTransform:&a];
  }

LABEL_34:
  if (v16)
  {
    if (a4)
    {
      [(MDLTextureSampler *)v7 setWrapS:2];
      [(MDLTextureSampler *)v7 setWrapT:2];
      if (C3DWasLinkedBeforeMajorOSYear2018())
      {
        memset(&a.m22, 0, 40);
        *&a.m12 = 0u;
        a.m11 = 1.0;
        a.m22 = -1.0;
        a.m33 = 1.0;
        a.m44 = 1.0;
        *&b.m14 = 0;
        *&b.m12 = 0;
        b.m11 = 1.0;
        b.m22 = 1.0;
        *&b.m23 = 0;
        *&b.m31 = 0;
        *&b.m33 = xmmword_21C27F7E0;
        *&b.m43 = 0x3F80000000000000;
        SCNMatrix4Mult(&v68, &a, &b);
        a = v68;
        [(MDLTextureSampler *)v7 setContentsTransform:&a];
      }
    }
  }

  result = [(MDLMaterialProperty *)v8 textureSamplerValue];
  if (!result)
  {
    return result;
  }

  [(MDLTextureSampler *)v7 setTextureComponents:__rbit32([(MDLTextureSampler *)[(MDLMaterialProperty *)v8 textureSamplerValue] textureComponents]) >> 28];
  [(MDLTextureSampler *)v7 setMappingChannel:[(MDLTextureSampler *)[(MDLMaterialProperty *)v8 textureSamplerValue] mappingChannel]];
  if ([(MDLTextureSampler *)[(MDLMaterialProperty *)v8 textureSamplerValue] transform])
  {
    if (C3DWasLinkedBeforeMajorOSYear2018())
    {
      memset(&a, 0, sizeof(a));
      memset(&b.m22, 0, 40);
      *&b.m12 = 0u;
      b.m11 = 1.0;
      b.m22 = -1.0;
      b.m33 = 1.0;
      b.m44 = 1.0;
      v67.m11 = 1.0;
      *&v67.m14 = 0;
      *&v67.m12 = 0;
      v67.m22 = 1.0;
      *&v67.m23 = 0;
      *&v67.m31 = 0;
      *&v67.m33 = xmmword_21C27F7E0;
      *&v67.m43 = 0x3F80000000000000;
      SCNMatrix4Mult(&a, &b, &v67);
      [(MDLTransform *)[(MDLTextureSampler *)[(MDLMaterialProperty *)v8 textureSamplerValue] transform] matrix];
      *&b.m11 = v29;
      *&b.m21 = v30;
      *&b.m31 = v31;
      *&b.m41 = v32;
      v67 = a;
      SCNMatrix4Mult(&v66, &b, &v67);
      b = v66;
      p_b = &b;
    }

    else
    {
      [(MDLTransform *)[(MDLTextureSampler *)[(MDLMaterialProperty *)v8 textureSamplerValue] transform] matrix];
      v35 = 0;
      v37 = vmulq_f32(v36, v36);
      v38 = vextq_s8(v37, v37, 8uLL).u64[0];
      v38.f32[0] = sqrtf(vaddv_f32(vadd_f32(*v37.i8, v38)));
      v40 = vmulq_f32(v39, v39);
      v41 = vextq_s8(v40, v40, 8uLL).u64[0];
      v41.f32[0] = sqrtf(vaddv_f32(vadd_f32(*v40.i8, v41)));
      v42 = vmulq_f32(v34, v34);
      v43 = vextq_s8(v42, v42, 8uLL).u64[0];
      v43.f32[0] = sqrtf(vaddv_f32(vadd_f32(*v42.i8, v43)));
      v44 = vdivq_f32(v36, vdupq_lane_s32(v38, 0));
      v45 = vdivq_f32(v39, vdupq_lane_s32(v41, 0));
      v46 = *MEMORY[0x277D860B8];
      v47 = *(MEMORY[0x277D860B8] + 16);
      v48 = *(MEMORY[0x277D860B8] + 32);
      v49 = *(MEMORY[0x277D860B8] + 48);
      LODWORD(v51) = v50.i32[0];
      DWORD1(v51) = vnegq_f32(v50).i32[1];
      *(&v51 + 1) = __PAIR64__(1.0, v50.u32[2]);
      *&b.m11 = *MEMORY[0x277D860B8];
      *&b.m21 = v47;
      *&b.m31 = v48;
      *&b.m41 = v51;
      do
      {
        *(&a.m11 + v35) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, COERCE_FLOAT(*(&b.m11 + v35))), v47, *(&b.m11 + v35), 1), v48, *(&b.m11 + v35), 2), xmmword_21C27F7F0, *(&b.m11 + v35), 3);
        v35 += 16;
      }

      while (v35 != 64);
      v52 = 0;
      v53 = vdivq_f32(v34, vdupq_lane_s32(v43, 0));
      v44.i32[1] = vnegq_f32(v44).i32[1];
      v45.f32[0] = -v45.f32[0];
      b = a;
      do
      {
        *(&a.m11 + v52) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v44, COERCE_FLOAT(*(&b.m11 + v52))), v45, *(&b.m11 + v52), 1), v53, *(&b.m11 + v52), 2), v49, *(&b.m11 + v52), 3);
        v52 += 16;
      }

      while (v52 != 64);
      v54 = 0;
      v55.i32[0] = 0;
      v55.i64[1] = 0;
      v55.i32[1] = v41.i32[0];
      v56.i64[0] = 0;
      v56.i64[1] = v43.u32[0];
      b = a;
      do
      {
        *(&a.m11 + v54) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38.u32[0], COERCE_FLOAT(*(&b.m11 + v54))), v55, *(&b.m11 + v54), 1), v56, *(&b.m11 + v54), 2), xmmword_21C27F610, *(&b.m11 + v54), 3);
        v54 += 16;
      }

      while (v54 != 64);
      v57 = 0;
      b = a;
      do
      {
        *(&a.m11 + v57) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v46, COERCE_FLOAT(*(&b.m11 + v57))), v47, *(&b.m11 + v57), 1), v48, *(&b.m11 + v57), 2), xmmword_21C27F800, *(&b.m11 + v57), 3);
        v57 += 16;
      }

      while (v57 != 64);
      p_b = &a;
    }

    [(MDLTextureSampler *)v7 setContentsTransform:p_b];
  }

  result = [(MDLTextureSampler *)[(MDLMaterialProperty *)v8 textureSamplerValue] hardwareFilter];
  if (!result)
  {
    return result;
  }

  v58 = result;
  v59 = [(MDLTextureSampler *)result sWrapMode];
  if (v59 <= 2)
  {
    [(MDLTextureSampler *)v7 setWrapS:qword_21C27F860[v59]];
  }

  v60 = [(MDLTextureSampler *)v58 tWrapMode];
  if (v60 <= 2)
  {
    [(MDLTextureSampler *)v7 setWrapT:qword_21C27F860[v60]];
  }

  v61 = [(MDLTextureSampler *)v58 minFilter];
  if (v61)
  {
    if (v61 != 1)
    {
      goto LABEL_62;
    }

    v62 = 2;
  }

  else
  {
    v62 = 1;
  }

  [(MDLTextureSampler *)v7 setMinificationFilter:v62];
LABEL_62:
  v63 = [(MDLTextureSampler *)v58 magFilter];
  if (!v63)
  {
    v64 = 1;
    goto LABEL_66;
  }

  if (v63 == 1)
  {
    v64 = 2;
LABEL_66:
    [(MDLTextureSampler *)v7 setMagnificationFilter:v64];
  }

  result = [(MDLTextureSampler *)v58 mipFilter];
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v65 = 2;
  }

  else
  {
    v65 = 1;
  }

  return [(MDLTextureSampler *)v7 setMipFilter:v65];
}