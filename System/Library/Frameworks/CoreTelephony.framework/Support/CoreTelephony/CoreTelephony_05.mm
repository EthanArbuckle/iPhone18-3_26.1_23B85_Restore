void rest::read_rest_value(uint64_t a1, void *a2)
{
  v4 = *a2;
  v5 = MEMORY[0x277D86440];
  if (*a2 && MEMORY[0x2383CC760](*a2) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760](v4) == v5)
  {
    __p = 0;
    v40 = 0;
    v41 = 0;
    v6 = *a2;
    if (*a2 && MEMORY[0x2383CC760](*a2) == v5)
    {
      xpc_retain(v6);
    }

    else
    {
      v6 = xpc_null_create();
    }

    v40 = __p;
    if (MEMORY[0x2383CC760](v6) == v5)
    {
      object = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        object = xpc_null_create();
      }

      xpc::array::iterator::iterator(&v44, &object, 0);
      xpc_release(object);
      object = v6;
      if (v6)
      {
        xpc_retain(v6);
      }

      else
      {
        object = xpc_null_create();
      }

      v38 = v4;
      if (MEMORY[0x2383CC760](v6) == v5)
      {
        count = xpc_array_get_count(v6);
      }

      else
      {
        count = 0;
      }

      v37 = a1;
      xpc::array::iterator::iterator(v43, &object, count);
      xpc_release(object);
      for (i = v45; i != v43[1] || v44 != v43[0]; i = ++v45)
      {
        v42[0] = &v44;
        v42[1] = i;
        v9 = v40;
        if (v40 >= v41)
        {
          v11 = __p;
          v12 = (v40 - __p) >> 5;
          v13 = v12 + 1;
          if ((v12 + 1) >> 59)
          {
            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v14 = v41 - __p;
          if ((v41 - __p) >> 4 > v13)
          {
            v13 = v14 >> 4;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFE0)
          {
            v15 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<rest::PairedDevice>>(v15);
          }

          v16 = (v40 - __p) >> 5;
          v17 = (32 * v12);
          *v17 = 0u;
          v17[1] = 0u;
          v18 = (32 * v12 - 32 * v16);
          v50 = &v17[-2 * v16];
          v51 = v50;
          object = &__p;
          v47 = &v50;
          v48 = &v51;
          v49 = 0;
          v19 = v11;
          v20 = v50;
          if (v11 == v9)
          {
            LOBYTE(v49) = 1;
          }

          else
          {
            do
            {
              v21 = *v19;
              *(v20 + 2) = v19[2];
              *v20 = v21;
              v19[1] = 0;
              v19[2] = 0;
              *v19 = 0;
              v22 = *(v19 + 12);
              *(v20 + 26) = *(v19 + 26);
              *(v20 + 12) = v22;
              v19 += 4;
              v20 += 2;
            }

            while (v19 != v9);
            v51 = v20;
            LOBYTE(v49) = 1;
            do
            {
              if (*(v11 + 23) < 0)
              {
                operator delete(*v11);
              }

              v11 += 4;
            }

            while (v11 != v9);
          }

          v10 = (v17 + 2);
          std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<rest::PairedDevice>,rest::PairedDevice*>>::~__exception_guard_exceptions[abi:ne200100](&object);
          v23 = __p;
          __p = v18;
          v40 = (v17 + 2);
          v41 = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v40 = 0u;
          *(v9 + 1) = 0u;
          v10 = v9 + 32;
        }

        v40 = v10;
        xpc::array::object_proxy::operator xpc::object(v42, &object);
        rest::read_rest_value((v10 - 32), &object);
        xpc_release(object);
      }

      xpc_release(v43[0]);
      xpc_release(v44);
      v4 = v38;
      a1 = v37;
    }

    xpc_release(v6);
    if (*(a1 + 24) == 1)
    {
      if (&__p != a1)
      {
        v25 = __p;
        v24 = v40;
        v26 = v40 - __p;
        v27 = *(a1 + 16);
        v28 = *a1;
        if (v27 - *a1 < (v40 - __p))
        {
          v29 = v26 >> 5;
          if (v28)
          {
            std::vector<rest::PairedDevice>::clear[abi:ne200100](a1);
            operator delete(*a1);
            v27 = 0;
            *a1 = 0;
            *(a1 + 8) = 0;
            *(a1 + 16) = 0;
          }

          if (!(v29 >> 59))
          {
            v30 = v27 >> 4;
            if (v27 >> 4 <= v29)
            {
              v30 = v29;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFE0)
            {
              v31 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v31 = v30;
            }

            std::vector<rest::PairedDevice>::__vallocate[abi:ne200100](a1, v31);
          }

          std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
        }

        v32 = *(a1 + 8);
        if (v32 - v28 >= v26)
        {
          if (__p != v40)
          {
            do
            {
              std::string::operator=(v28, v25);
              data = v25[1].__r_.__value_.__l.__data_;
              *(v28 + 26) = v25[1].__r_.__value_.__s.__data_[2];
              *(v28 + 12) = data;
              v25 = (v25 + 32);
              v28 += 4;
            }

            while (v25 != v24);
            v32 = *(a1 + 8);
          }

          while (v32 != v28)
          {
            v36 = v32[-1].__r_.__value_.__s.__data_[15];
            v32 = (v32 - 32);
            if (v36 < 0)
            {
              operator delete(v32->__r_.__value_.__l.__data_);
            }
          }

          *(a1 + 8) = v28;
        }

        else
        {
          v33 = (__p + v32 - v28);
          if (v32 != v28)
          {
            do
            {
              std::string::operator=(v28, v25);
              v34 = v25[1].__r_.__value_.__l.__data_;
              *(v28 + 26) = v25[1].__r_.__value_.__s.__data_[2];
              *(v28 + 12) = v34;
              v25 = (v25 + 32);
              v28 += 4;
            }

            while (v25 != v33);
            v32 = *(a1 + 8);
          }

          *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<rest::PairedDevice>,rest::PairedDevice*,rest::PairedDevice*,rest::PairedDevice*>(a1, v33, v24, v32);
        }
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      object = a1;
      if (v40 != __p)
      {
        v47 = 0;
        std::vector<rest::PairedDevice>::__vallocate[abi:ne200100](a1, (v40 - __p) >> 5);
      }

      *(a1 + 24) = 1;
    }

    object = &__p;
    std::vector<rest::PairedDevice>::__destroy_vector::operator()[abi:ne200100](&object);
  }

  else if (*(a1 + 24) == 1)
  {
    object = a1;
    std::vector<rest::PairedDevice>::__destroy_vector::operator()[abi:ne200100](&object);
    *(a1 + 24) = 0;
  }

  xpc_release(v4);
}

void sub_23740F6F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17, uint64_t a18, char *a19, uint64_t a20, xpc_object_t a21)
{
  *(v23 + 8) = v21;
  a19 = &a12;
  std::vector<rest::PairedDevice>::__destroy_vector::operator()[abi:ne200100](&a19);
  xpc_release(v22);
  _Unwind_Resume(a1);
}

void rest::write_rest_value(uint64_t *a1@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v4) == MEMORY[0x277D86440])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v6 = *a1;
  v7 = a1[1];
  while (v6 != v7)
  {
    rest::write_rest_value(v6, &value);
    v8 = value;
    xpc_array_append_value(v5, value);
    xpc_release(v8);
    v6 += 32;
  }

  *a2 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v5);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v11 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v11 = v6;
LABEL_9:
  xpc_release(v5);
  ctu::rest::write_rest_value<std::string>(a1, &v9);
  v8[0] = &v11;
  v8[1] = "recordIDs";
  xpc::dict::object_proxy::operator=(v8, &v9, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v9);
  v9 = 0;
  v7 = v11;
  *a2 = v11;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v11);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v24 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v24 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) != MEMORY[0x277D86468])
  {
    v6 = xpc_null_create();
LABEL_8:
    v24 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  v7 = xpc_array_create(0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v7) == MEMORY[0x277D86440])
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  v9 = *a1;
  v10 = a1[1];
  if (*a1 != v10)
  {
    do
    {
      v39[0] = 0;
      v11 = xpc_dictionary_create(0, 0, 0);
      v12 = v11;
      if (v11)
      {
        v39[0] = v11;
      }

      else
      {
        v12 = xpc_null_create();
        v39[0] = v12;
        if (!v12)
        {
          v13 = xpc_null_create();
          v12 = 0;
          goto LABEL_23;
        }
      }

      if (MEMORY[0x2383CC760](v12) != MEMORY[0x277D86468])
      {
        v13 = xpc_null_create();
LABEL_23:
        v39[0] = v13;
        goto LABEL_24;
      }

      xpc_retain(v12);
LABEL_24:
      xpc_release(v12);
      if (*(v9 + 23) >= 0)
      {
        v14 = v9;
      }

      else
      {
        v14 = *v9;
      }

      v37 = xpc_string_create(v14);
      if (!v37)
      {
        v37 = xpc_null_create();
      }

      v35 = v39;
      v36 = "iccid";
      xpc::dict::object_proxy::operator=(&v35, &v37, &v38);
      xpc_release(v38);
      v38 = 0;
      xpc_release(v37);
      v37 = 0;
      if (*(v9 + 47) >= 0)
      {
        v15 = (v9 + 24);
      }

      else
      {
        v15 = *(v9 + 24);
      }

      v33 = xpc_string_create(v15);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      v35 = v39;
      v36 = "mcc";
      xpc::dict::object_proxy::operator=(&v35, &v33, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v33);
      v33 = 0;
      if (*(v9 + 71) >= 0)
      {
        v16 = (v9 + 48);
      }

      else
      {
        v16 = *(v9 + 48);
      }

      v31 = xpc_string_create(v16);
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      v35 = v39;
      v36 = "mnc";
      xpc::dict::object_proxy::operator=(&v35, &v31, &v32);
      xpc_release(v32);
      v32 = 0;
      xpc_release(v31);
      v31 = 0;
      if (*(v9 + 95) >= 0)
      {
        v17 = (v9 + 72);
      }

      else
      {
        v17 = *(v9 + 72);
      }

      v29 = xpc_string_create(v17);
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      v35 = v39;
      v36 = "gid1";
      xpc::dict::object_proxy::operator=(&v35, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
      if (*(v9 + 119) >= 0)
      {
        v18 = (v9 + 96);
      }

      else
      {
        v18 = *(v9 + 96);
      }

      v27 = xpc_string_create(v18);
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      v35 = v39;
      v36 = "gid2";
      xpc::dict::object_proxy::operator=(&v35, &v27, &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v27);
      v27 = 0;
      if (*(v9 + 143) >= 0)
      {
        v19 = (v9 + 120);
      }

      else
      {
        v19 = *(v9 + 120);
      }

      v25 = xpc_string_create(v19);
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      v35 = v39;
      v36 = "imsi";
      xpc::dict::object_proxy::operator=(&v35, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v20 = v39[0];
      if (v39[0])
      {
        xpc_retain(v39[0]);
      }

      else
      {
        v20 = xpc_null_create();
      }

      xpc_release(v39[0]);
      xpc_array_append_value(v8, v20);
      xpc_release(v20);
      v9 += 144;
    }

    while (v9 != v10);
  }

  v22 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v22 = xpc_null_create();
  }

  xpc_release(v8);
  v35 = &v24;
  v36 = "carrier-identifiers";
  xpc::dict::object_proxy::operator=(&v35, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  v21 = v24;
  *a2 = v24;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v24);
}

void sub_23740F930(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

void std::vector<rest::PairedDevice>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<rest::PairedDevice>>(a2);
  }

  std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<rest::PairedDevice>,rest::PairedDevice*,rest::PairedDevice*,rest::PairedDevice*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v13 = this;
  v14 = this;
  v11[0] = a1;
  v11[1] = &v13;
  v11[2] = &v14;
  v12 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v8 = v14;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
        v8 = v4;
      }

      v9 = *(v6 + 12);
      v4[1].__r_.__value_.__s.__data_[2] = *(v6 + 26);
      LOWORD(v4[1].__r_.__value_.__l.__data_) = v9;
      v6 += 2;
      v4 = (v8 + 32);
      v14 = (v8 + 32);
    }

    while (v6 != a3);
  }

  LOBYTE(v12) = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<rest::PairedDevice>,rest::PairedDevice*>>::~__exception_guard_exceptions[abi:ne200100](v11);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<rest::PairedDevice>,rest::PairedDevice*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 8);
    v4 = **(a1 + 16);
    while (v4 != v3)
    {
      v5 = *(v4 - 9);
      v4 -= 4;
      if (v5 < 0)
      {
        operator delete(*v4);
      }
    }
  }

  return a1;
}

void std::vector<rest::PairedDevice>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<rest::PairedDevice>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<rest::PairedDevice>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<rest::PairedDevice>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void C2KProvisioningInfo::C2KProvisioningInfo(C2KProvisioningInfo *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 24) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 56) = 0;
  *(this + 8) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
  *(this + 24) = 0;
  *(this + 2) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 4) = 0;
  *(this + 56) = 0;
  *(this + 8) = 0;
}

void C2KProvisioningInfo::dumpState(ctu **this, NSObject **a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  v11[0] = 0;
  v11[1] = 0;
  v12 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v10 = 0;
  if (*(this + 24) == 1)
  {
    ctu::hex(*this, (this[1] - *this));
    *v13 = *buf;
    v14 = *&buf[16];
  }

  if (*(this + 56) == 1)
  {
    ctu::hex(this[4], (this[5] - this[4]));
    *v11 = *buf;
    v12 = *&buf[16];
  }

  if (*(this + 71) == 1)
  {
    ctu::hex((this + 8), 7);
    *__p = *buf;
    v10 = *&buf[16];
  }

  v4 = *a2;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v13;
    if (v14 < 0)
    {
      v5 = v13[0];
    }

    v6 = v11;
    if (v12 < 0)
    {
      v6 = v11[0];
    }

    v7 = __p;
    if (v10 < 0)
    {
      v7 = __p[0];
    }

    *buf = 136315650;
    *&buf[4] = v5;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    *&buf[22] = 2080;
    v16 = v7;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I fKeyHash = %s, fFactoryKeyHash = %s, fMeid = %s", buf, 0x20u);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_23740FDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

__n128 RequestDumpStatePayload::RequestDumpStatePayload(__n128 *a1, __n128 *a2, unsigned __int8 a3, unint64_t a4, unsigned __int8 a5, unsigned __int8 a6, unsigned __int32 a7)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  a1[1].n128_u8[8] = a3;
  a1[2].n128_u64[0] = a4;
  a1[2].n128_u8[8] = a5;
  a1[2].n128_u8[9] = a6;
  a1[2].n128_u32[3] = a7;
  return result;
}

{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  a1[1].n128_u8[8] = a3;
  a1[2].n128_u64[0] = a4;
  a1[2].n128_u8[8] = a5;
  a1[2].n128_u8[9] = a6;
  a1[2].n128_u32[3] = a7;
  return result;
}

uint64_t codec::setItem(codec *this, objc_object *a2, NSString *a3, NSMutableDictionary *a4)
{
  v6 = this;
  v7 = a2;
  v8 = a3;
  v9 = v8;
  v10 = 0;
  if (v7 && v8)
  {
    if ([(objc_object *)v7 length])
    {
      if (v6)
      {
        if ((objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [(codec *)v6 count])
        {
          [(NSString *)v9 setObject:v6 forKey:v7];
        }
      }

      v10 = 1;
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

void CTDebounceTimerImpl::~CTDebounceTimerImpl(CTDebounceTimerImpl *this)
{
  *this = &unk_284A65430;
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 96);
  v3 = *(this + 9);
  if (v3)
  {
    *(this + 10) = v3;
    operator delete(v3);
  }

  v4 = *(this + 8);
  if (v4)
  {
    dispatch_release(v4);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v5 = *(this + 4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  CTDebounceTimerImpl::~CTDebounceTimerImpl(this);

  JUMPOUT(0x2383CBEF0);
}

uint64_t CTDebounceTimerImpl::startDebounceTimer(dispatch_queue_t *this)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = (this + 8);
  dispatch_assert_queue_V2(this[8]);
  dispatch_assert_queue_V2(*v2);
  if (*(v2 + 10))
  {
    v3 = 1;
    v4 = 1;
  }

  else
  {
    dispatch_assert_queue_V2(this[8]);
    v5 = this[17];
    if (v5 < this[16])
    {
      v6 = this[9];
      v7 = this[10] - v6;
      if (v5 >= v7 >> 3)
      {
        v5 = (v7 >> 3) - 1;
      }

      isa = v6[v5].isa;
      v8 = this[3][3].isa;
      v9 = *(v8 + 5);
      v14 = *(v8 + 4);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = this[1];
      v10 = this[2];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10[2], 1uLL, memory_order_relaxed);
      }

      operator new();
    }

    v3 = 0;
    v4 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v3 | (v4 << 8);
}

void sub_237410C78(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  _Unwind_Resume(a1);
}

void CTDebounceTimer::create(__int128 *a1@<X3>, uint64_t a2@<X4>, void *a3@<X8>)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = *a1;
  if (*a1 != v5 && *(a2 + 24))
  {
    while (*v6)
    {
      if (++v6 == v5)
      {
        operator new();
      }
    }
  }

  *a3 = 0;
  a3[1] = 0;
  v7 = *MEMORY[0x277D85DE8];
}

void *std::__function::__func<CTDebounceTimerImpl::startDebounceTimer(void)::$_0,std::allocator<CTDebounceTimerImpl::startDebounceTimer(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284A65518;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<CTDebounceTimerImpl::startDebounceTimer(void)::$_0,std::allocator<CTDebounceTimerImpl::startDebounceTimer(void)::$_0>,void ()(void)>::~__func(void *a1)
{
  *a1 = &unk_284A65518;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<CTDebounceTimerImpl::startDebounceTimer(void)::$_0,std::allocator<CTDebounceTimerImpl::startDebounceTimer(void)::$_0>,void ()(void)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284A65518;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CTDebounceTimerImpl::startDebounceTimer(void)::$_0,std::allocator<CTDebounceTimerImpl::startDebounceTimer(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<CTDebounceTimerImpl::startDebounceTimer(void)::$_0,std::allocator<CTDebounceTimerImpl::startDebounceTimer(void)::$_0>,void ()(void)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<CTDebounceTimerImpl::startDebounceTimer(void)::$_0,std::allocator<CTDebounceTimerImpl::startDebounceTimer(void)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        v6 = v3[19];
        v3[18] = 0;
        v3[19] = 0;
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v7 = v3[15];
        if (!v7)
        {
          std::__throw_bad_function_call[abi:ne200100]();
        }

        (*(*v7 + 48))(v7);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

uint64_t std::__function::__func<CTDebounceTimerImpl::startDebounceTimer(void)::$_0,std::allocator<CTDebounceTimerImpl::startDebounceTimer(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<CTDebounceTimerImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A655A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

void rest::getDefaultDataConnectionTypeMaskStates(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  operator new();
}

void std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void sub_23741225C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13, xpc_object_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_237412910(_Unwind_Exception *a1)
{
  xpc_release(v1);
  xpc_release(v2);
  xpc_release(*(v3 - 56));
  _Unwind_Resume(a1);
}

void read_rest_value(VinylInfo *a1, const object *a2)
{
  v58 = *MEMORY[0x277D85DE8];
  fObj = a2->fObj;
  xdict = fObj;
  v4 = MEMORY[0x277D86468];
  if (fObj && MEMORY[0x2383CC760](fObj) == v4)
  {
    xpc_retain(fObj);
  }

  else
  {
    xdict = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v4)
  {
    __p[0] = &xdict;
    __p[1] = "kSlotId";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    v5 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    __p[0] = &xdict;
    __p[1] = "kCardType";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    v6 = MEMORY[0x2383CC760](object[0]);
    v8 = MEMORY[0x277D864C0];
    v9 = MEMORY[0x277D86448];
    if (v6 == MEMORY[0x277D864C0])
    {
      LODWORD(p_xdict) = *a1;
      ctu::rest::detail::read_enum_string_value(&p_xdict, object, v7);
      *a1 = p_xdict;
    }

    else if (v6 == MEMORY[0x277D86448] || v6 == MEMORY[0x277D86498] || v6 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default(object, 0);
    }

    xpc_release(object[0]);
    if (v5 == 2)
    {
      v10 = 2;
    }

    else
    {
      v10 = 1;
    }

    if (!v5)
    {
      v10 = 0;
    }

    *(a1 + 1) = v10;
    __p[0] = &xdict;
    __p[1] = "kPairedState";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    v11 = MEMORY[0x2383CC760](object[0]);
    if (v11 == v8)
    {
      LODWORD(p_xdict) = *(a1 + 2);
      ctu::rest::detail::read_enum_string_value(&p_xdict, object, v12);
      *(a1 + 2) = p_xdict;
    }

    else if (v11 == v9 || v11 == MEMORY[0x277D86498] || v11 == MEMORY[0x277D864C8])
    {
      *(a1 + 2) = xpc::dyn_cast_or_default(object, 0);
    }

    xpc_release(object[0]);
    __p[0] = &xdict;
    __p[1] = "kAvailability";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    v13 = MEMORY[0x2383CC760](object[0]);
    if (v13 == v8)
    {
      LODWORD(p_xdict) = *(a1 + 3);
      ctu::rest::detail::read_enum_string_value(&p_xdict, object, v14);
      *(a1 + 3) = p_xdict;
    }

    else if (v13 == v9 || v13 == MEMORY[0x277D86498] || v13 == MEMORY[0x277D864C8])
    {
      *(a1 + 3) = xpc::dyn_cast_or_default(object, 0);
    }

    xpc_release(object[0]);
    __p[0] = &xdict;
    __p[1] = "kCSN";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    ctu::rest::detail::read_raw_binary_value((a1 + 16), 0x10, object, v15);
    xpc_release(object[0]);
    if (xpc_dictionary_get_value(xdict, "kProfiles"))
    {
      v46[0] = &xdict;
      v46[1] = "kProfiles";
      xpc::dict::object_proxy::operator xpc::object(v46, &v47);
      v16 = (a1 + 56);
      if (MEMORY[0x2383CC760](v47) == MEMORY[0x277D864B0])
      {
        if (*(a1 + 80))
        {
          __p[0] = a1 + 56;
          std::vector<VinylProfileDetails>::__destroy_vector::operator()[abi:ne200100](__p);
          *(a1 + 80) = 0;
        }
      }

      else
      {
        if ((*(a1 + 80) & 1) == 0)
        {
          __p[0] = 0;
          __p[1] = 0;
          *&v55 = 0;
          *(a1 + 80) = 1;
          *(a1 + 8) = 0;
          *(a1 + 9) = 0;
          *v16 = 0;
          object[0] = __p;
          std::vector<VinylProfileDetails>::__destroy_vector::operator()[abi:ne200100](object);
        }

        v17 = v47;
        v18 = MEMORY[0x277D86440];
        if (v47 && MEMORY[0x2383CC760](v47) == v18)
        {
          xpc_retain(v17);
        }

        else
        {
          v17 = xpc_null_create();
        }

        v20 = *(a1 + 7);
          ;
        }

        *(a1 + 8) = v20;
        if (MEMORY[0x2383CC760](v17) == v18)
        {
          object[0] = v17;
          if (v17)
          {
            xpc_retain(v17);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          xpc::array::iterator::iterator(__p, object, 0);
          xpc_release(object[0]);
          p_xdict = v17;
          if (v17)
          {
            xpc_retain(v17);
          }

          else
          {
            p_xdict = xpc_null_create();
          }

          if (MEMORY[0x2383CC760](v17) == v18)
          {
            count = xpc_array_get_count(v17);
          }

          else
          {
            count = 0;
          }

          xpc::array::iterator::iterator(object, &p_xdict, count);
          xpc_release(p_xdict);
          for (j = __p[1]; j != object[1] || __p[0] != object[0]; j = ++__p[1])
          {
            p_xdict = __p;
            v53 = j;
            v24 = *(a1 + 8);
            v23 = *(a1 + 9);
            if (v24 >= v23)
            {
              v26 = *v16;
              v27 = v24 - *v16;
              v28 = 0x84BDA12F684BDA13 * (v27 >> 3) + 1;
              if (v28 > 0x12F684BDA12F684)
              {
                std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
              }

              v29 = 0x84BDA12F684BDA13 * ((v23 - v26) >> 3);
              if (2 * v29 > v28)
              {
                v28 = 2 * v29;
              }

              if (v29 >= 0x97B425ED097B42)
              {
                v30 = 0x12F684BDA12F684;
              }

              else
              {
                v30 = v28;
              }

              if (v30)
              {
                if (v30 <= 0x12F684BDA12F684)
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v31 = 8 * (v27 >> 3);
              *(v31 + 208) = 0;
              *(v31 + 176) = 0u;
              *(v31 + 192) = 0u;
              *(v31 + 144) = 0u;
              *(v31 + 160) = 0u;
              *(v31 + 112) = 0u;
              *(v31 + 128) = 0u;
              *(v31 + 80) = 0u;
              *(v31 + 96) = 0u;
              *(v31 + 48) = 0u;
              *(v31 + 64) = 0u;
              *(v31 + 16) = 0u;
              *(v31 + 32) = 0u;
              v32 = v31 - v27;
              *v31 = 0u;
              if (v26 != v24)
              {
                v33 = v26;
                v34 = v32;
                do
                {
                  *v34 = *v33;
                  v35 = *(v33 + 1);
                  *(v34 + 32) = v33[4];
                  *(v34 + 16) = v35;
                  v33[3] = 0;
                  v33[4] = 0;
                  v33[2] = 0;
                  v36 = *(v33 + 5);
                  *(v34 + 56) = v33[7];
                  *(v34 + 40) = v36;
                  v33[6] = 0;
                  v33[7] = 0;
                  v33[5] = 0;
                  v37 = *(v33 + 4);
                  *(v34 + 80) = v33[10];
                  *(v34 + 64) = v37;
                  v33[8] = 0;
                  v33[9] = 0;
                  v33[10] = 0;
                  v38 = *(v33 + 22);
                  *(v34 + 92) = *(v33 + 92);
                  *(v34 + 88) = v38;
                  v39 = *(v33 + 6);
                  *(v34 + 112) = v33[14];
                  *(v34 + 96) = v39;
                  v33[12] = 0;
                  v33[13] = 0;
                  v33[14] = 0;
                  v40 = *(v33 + 15);
                  *(v34 + 136) = v33[17];
                  *(v34 + 120) = v40;
                  v33[15] = 0;
                  v33[16] = 0;
                  v33[17] = 0;
                  v41 = *(v33 + 9);
                  *(v34 + 160) = v33[20];
                  *(v34 + 144) = v41;
                  v33[18] = 0;
                  v33[19] = 0;
                  v33[20] = 0;
                  v42 = *(v33 + 21);
                  *(v34 + 184) = v33[23];
                  *(v34 + 168) = v42;
                  v33[21] = 0;
                  v33[22] = 0;
                  v33[23] = 0;
                  v43 = *(v33 + 12);
                  *(v34 + 208) = v33[26];
                  *(v34 + 192) = v43;
                  v33[24] = 0;
                  v33[25] = 0;
                  v33[26] = 0;
                  v33 += 27;
                  v34 += 216;
                }

                while (v33 != v24);
                do
                {
                  VinylProfileDetails::~VinylProfileDetails(v26);
                  v26 = (v44 + 216);
                }

                while (v26 != v24);
                v26 = *v16;
              }

              v25 = v31 + 216;
              *(a1 + 7) = v32;
              *(a1 + 8) = v31 + 216;
              *(a1 + 9) = 0;
              if (v26)
              {
                operator delete(v26);
              }
            }

            else
            {
              *(v24 + 208) = 0;
              *(v24 + 176) = 0u;
              *(v24 + 192) = 0u;
              *(v24 + 144) = 0u;
              *(v24 + 160) = 0u;
              *(v24 + 112) = 0u;
              *(v24 + 128) = 0u;
              *(v24 + 80) = 0u;
              *(v24 + 96) = 0u;
              *(v24 + 48) = 0u;
              *(v24 + 64) = 0u;
              *(v24 + 16) = 0u;
              *(v24 + 32) = 0u;
              *v24 = 0u;
              v25 = v24 + 216;
            }

            *(a1 + 8) = v25;
            xpc::array::object_proxy::operator xpc::object(&p_xdict, &v51);
            read_rest_value((v25 - 216), &v51);
            xpc_release(v51);
          }

          xpc_release(object[0]);
          xpc_release(__p[0]);
        }

        xpc_release(v17);
      }

      xpc_release(v47);
    }

    else if (*(a1 + 80) == 1)
    {
      __p[0] = a1 + 56;
      std::vector<VinylProfileDetails>::__destroy_vector::operator()[abi:ne200100](__p);
      *(a1 + 80) = 0;
    }

    p_xdict = &xdict;
    v53 = "kVersion";
    xpc::dict::object_proxy::operator xpc::object(&p_xdict, v46);
    __p[0] = 0;
    __p[1] = 0;
    *&v55 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v55) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 4));
    }

    *(a1 + 2) = *object;
    *(a1 + 6) = v50;
    xpc_release(v46[0]);
  }

  else
  {
    v57 = 0;
    v55 = 0u;
    v56 = 0u;
    *__p = 0u;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 4));
    }

    *(a1 + 2) = v56;
    *(a1 + 6) = v57;
    if (*(a1 + 80))
    {
      object[0] = a1 + 56;
      std::vector<VinylProfileDetails>::__destroy_vector::operator()[abi:ne200100](object);
      *(a1 + 80) = 0;
    }
  }

  xpc_release(xdict);
  v45 = *MEMORY[0x277D85DE8];
}

void sub_237413178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, xpc_object_t object, uint64_t a20, xpc_object_t __p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_237413F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t object, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, xpc_object_t a26, xpc_object_t a27)
{
  xpc_release(*(v27 - 104));
  *(v27 - 104) = 0;
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a13);
  xpc_release(a26);
  _Unwind_Resume(a1);
}

void VinylProfileDetails::~VinylProfileDetails(void **this)
{
  if (*(this + 215) < 0)
  {
    operator delete(this[24]);
  }

  if (*(this + 191) < 0)
  {
    operator delete(this[21]);
  }

  if (*(this + 167) < 0)
  {
    operator delete(this[18]);
  }

  if (*(this + 143) < 0)
  {
    operator delete(this[15]);
  }

  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void std::vector<VinylProfileDetails>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        VinylProfileDetails::~VinylProfileDetails(v4 - 27);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<VinylInfo>::__vdeallocate(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 88;
        std::__destroy_at[abi:ne200100]<VinylInfo,0>(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::__destroy_at[abi:ne200100]<VinylInfo,0>(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    v2 = (a1 + 56);
    std::vector<VinylProfileDetails>::__destroy_vector::operator()[abi:ne200100](&v2);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void std::vector<VinylInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 88;
        std::__destroy_at[abi:ne200100]<VinylInfo,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void ActivationInfo::ActivationInfo(ActivationInfo *this)
{
  *this = 0x300000002;
  *(this + 4) = 0;
  *(this + 12) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 40) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 72) = 0;
  *(this + 10) = 0;
  *(this + 88) = 0;
  *(this + 48) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 16) = 0;
  *(this + 152) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 184) = 0;
  *(this + 22) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 216) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *(this + 248) = 0;
  *(this + 64) = 0;
  *(this + 260) = 0;
  *(this + 30) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 262) = 0;
  *(this + 272) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 328) = 0;
  *(this + 40) = 0;
  *(this + 360) = 0;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 392) = 0;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 48) = 0;
  *(this + 424) = 0;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 436) = 0;
  *(this + 108) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 74) = 0;
  *(this + 438) = 0;
  *(this + 448) = 0;
  *(this + 456) = 0;
  *(this + 122) = 0;
  *(this + 492) = 0;
  *(this + 124) = 0;
  *(this + 500) = 0;
  *(this + 126) = 0;
  *(this + 508) = 0;
  *(this + 128) = 0;
  *(this + 516) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 479) = 0;
  *(this + 525) = 0;
  *(this + 65) = 0;
}

void ActivationInfo::dumpState(uint64_t a1, int a2, os_log_t *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  ActivationStatus::dumpState(a1, a3);
  C2KProvisioningInfo::dumpState((a1 + 16), a3);
  UMTSProvisioningInfo::dumpState((a1 + 96), a3);
  __p = 0uLL;
  v22 = 0;
  if (*(a1 + 472) == 1)
  {
    *v20 = createActivationStringFromData((a1 + 464), 8);
    ctu::cf::assign();
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v20);
  }

  v5 = *a3;
  v6 = os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    p_p = &__p;
    if (v22 < 0)
    {
      p_p = __p;
    }

    *v20 = 136315138;
    *&v20[4] = p_p;
    _os_log_impl(&dword_2373EA000, v5, OS_LOG_TYPE_DEFAULT, "#I fImei = %s", v20, 0xCu);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p);
  }

  if (capabilities::ct::supportsGemini(v6))
  {
    __p = 0uLL;
    v22 = 0;
    if (*(a1 + 481) == 1)
    {
      *v20 = createActivationStringFromData((a1 + 473), 8);
      ctu::cf::assign();
      ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(v20);
    }

    v8 = *a3;
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
    {
      v9 = &__p;
      if (v22 < 0)
      {
        v9 = __p;
      }

      *v20 = 136315138;
      *&v20[4] = v9;
      _os_log_impl(&dword_2373EA000, v8, OS_LOG_TYPE_DEFAULT, "#I fImei2 = %s", v20, 0xCu);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p);
    }
  }

  if (*(a1 + 486) == 1)
  {
    v10 = *a3;
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p) = 136315138;
      *(&__p + 4) = a1 + 482;
      _os_log_impl(&dword_2373EA000, v10, OS_LOG_TYPE_DEFAULT, "#I TicketVersion = %s", &__p, 0xCu);
    }
  }

  if (*(a1 + 521) == 1)
  {
    v11 = *a3;
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 520))
      {
        v12 = "true";
      }

      else
      {
        v12 = "false";
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v12;
      _os_log_impl(&dword_2373EA000, v11, OS_LOG_TYPE_DEFAULT, "#I Gemini supported = %s", &__p, 0xCu);
    }
  }

  if (*(a1 + 523) == 1)
  {
    v13 = *a3;
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 522))
      {
        v14 = "true";
      }

      else
      {
        v14 = "false";
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v14;
      _os_log_impl(&dword_2373EA000, v13, OS_LOG_TYPE_DEFAULT, "#I 5G supported = %s", &__p, 0xCu);
    }
  }

  if (*(a1 + 516) == 1)
  {
    v15 = *a3;
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 512);
      if (v16 > 2)
      {
        v17 = "???";
      }

      else
      {
        v17 = off_278A2EC88[v16];
      }

      LODWORD(__p) = 136315138;
      *(&__p + 4) = v17;
      _os_log_impl(&dword_2373EA000, v15, OS_LOG_TYPE_DEFAULT, "#I ActivationTicketType = %s", &__p, 0xCu);
    }
  }

  if (*(a1 + 532) == 1)
  {
    v18 = *a3;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__p) = 136315138;
      *(&__p + 4) = a1 + 528;
      _os_log_impl(&dword_2373EA000, v18, OS_LOG_TYPE_DEFAULT, "#I Bootstrap Version = %s", &__p, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_2374148B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 ActivationInfo::clear(ActivationInfo *this)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = *(this + 61);
  v12.n128_u64[1] = 0;
  *(v12.n128_u64 + 3) = 0;
  *this = 0x300000002;
  *(this + 4) = 0;
  *(this + 12) = 0;
  v4 = this + 16;
  v3 = *(this + 2);
  if (v3)
  {
    *(this + 3) = v3;
    operator delete(v3);
  }

  v5 = *(this + 6);
  *v4 = 0;
  *(v4 + 1) = 0;
  v4[24] = 0;
  *(v4 + 2) = 0;
  if (v5)
  {
    *(this + 7) = v5;
    operator delete(v5);
  }

  v6 = *(this + 16);
  *(this + 10) = 0;
  *(this + 88) = 0;
  *(this + 48) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 72) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 30) = 0;
  if (v6)
  {
    *(this + 17) = v6;
    operator delete(v6);
  }

  v7 = *(this + 20);
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 152) = 0;
  *(this + 18) = 0;
  if (v7)
  {
    *(this + 21) = v7;
    operator delete(v7);
  }

  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 184) = 0;
  *(this + 22) = 0;
  if (*(this + 215) < 0)
  {
    operator delete(*(this + 24));
  }

  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 216) = 0;
  *(this + 26) = 0;
  if (*(this + 247) < 0)
  {
    operator delete(*(this + 28));
  }

  *(this + 260) = 0;
  *(this + 64) = 0;
  *(this + 262) = 0;
  *(this + 272) = 0;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 74) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = 0;
  *(this + 248) = 0;
  v8 = *(this + 38);
  if (v8)
  {
    *(this + 39) = v8;
    operator delete(v8);
  }

  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 328) = 0;
  *(this + 40) = 0;
  v9 = *(this + 42);
  if (v9)
  {
    *(this + 43) = v9;
    operator delete(v9);
  }

  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 360) = 0;
  *(this + 44) = 0;
  if (*(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 392) = 0;
  *(this + 48) = 0;
  if (*(this + 423) < 0)
  {
    operator delete(*(this + 50));
  }

  *(this + 436) = 0;
  *(this + 108) = 0;
  *(this + 438) = 0;
  *(this + 448) = 0;
  *(this + 456) = 0;
  *(this + 58) = 0;
  *(this + 59) = 0;
  *(this + 479) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 50) = 0;
  *(this + 424) = 0;
  *(this + 124) = 0;
  *(this + 500) = 0;
  *(this + 126) = 0;
  *(this + 508) = 0;
  *(this + 128) = 0;
  *(this + 516) = 0;
  result = v12;
  *(this + 517) = v12;
  *(this + 492) = BYTE4(v2);
  *(this + 122) = v2;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

__n128 std::vector<unsigned char>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x2383CBE70](a1 + 128);
  return a1;
}

BOOL operator!=(void *a1, void *a2)
{
  return !operator==(a1, a2);
}

{
  return !operator==(a1, a2);
}

{
  return !operator==(a1, a2);
}

{
  return !operator==(a1, a2);
}

{
  return !operator==(a1, a2);
}

{
  return !operator==(a1, a2);
}

{
  return !operator==(a1, a2);
}

uint64_t rest::asString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v33 = 0;
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  *__p = 0u;
  v30 = 0u;
  v27 = 0u;
  memset(v28, 0, sizeof(v28));
  v26 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v26);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Phone number: ", 14);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, " Qualified: ", 12);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, " QualifiedSrc: ", 15);
  v13 = *(a1 + 48) - 1;
  if (v13 > 4)
  {
    v14 = "Unknown";
  }

  else
  {
    v14 = off_278A2ECA0[v13];
  }

  v15 = strlen(v14);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, " Trusted: ", 10);
  v17 = *(a1 + 79);
  if (v17 >= 0)
  {
    v18 = a1 + 56;
  }

  else
  {
    v18 = *(a1 + 56);
  }

  if (v17 >= 0)
  {
    v19 = *(a1 + 79);
  }

  else
  {
    v19 = *(a1 + 64);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, v19);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, " (read attempted: ", 18);
  if (*(a1 + 80))
  {
    v21 = "yes";
  }

  else
  {
    v21 = "no";
  }

  if (*(a1 + 80))
  {
    v22 = 3;
  }

  else
  {
    v22 = 2;
  }

  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v21, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ")", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v26, a2);
  *&v26 = *MEMORY[0x277D82818];
  v24 = *(MEMORY[0x277D82818] + 72);
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v27 = v24;
  *(&v27 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v27 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v28);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v32);
}

void sub_2374158E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t rest::operator!=(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && *(a1 + 3) == *(a2 + 3))
  {
    v2 = *(a1 + 1);
    if (v2 == a1 + 16)
    {
      return 0;
    }

    if (*(a2 + 2))
    {
      while (1)
      {
        v3 = *(v2 + 7);
        v4 = a2 + 16;
        v5 = *(a2 + 2);
        do
        {
          if (*(v5 + 28) >= v3)
          {
            v4 = v5;
          }

          v5 = *(v5 + 8 * (*(v5 + 28) < v3));
        }

        while (v5);
        if (v4 == a2 + 16 || v3 < *(v4 + 7))
        {
          break;
        }

        v6 = *(v2 + 1);
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = *(v2 + 2);
            v8 = *v7 == v2;
            v2 = v7;
          }

          while (!v8);
        }

        v2 = v7;
        if (v7 == a1 + 16)
        {
          return 0;
        }
      }
    }
  }

  return 1;
}

void sub_23741624C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(v16);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_23741664C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17, xpc_object_t a18, xpc_object_t a19, xpc_object_t object, uint64_t a21, xpc_object_t a22)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a10);
  xpc_release(a17);
  xpc_release(a18);
  _Unwind_Resume(a1);
}

void _GLOBAL__sub_I_SettingsRestResources_cpp()
{
  qword_280CE8D18 = 0;
  qword_280CE8D10 = 0;
  rest::kDefaultDeviceTypes = &qword_280CE8D10;
  operator new();
}

void write_rest_value(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  object = xpc_string_create(v7);
  if (!object)
  {
    object = xpc_null_create();
  }

  v17 = a2;
  v18 = "card_id";
  xpc::dict::object_proxy::operator=(&v17, &object, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(object);
  object = 0;
  if (*(a1 + 47) >= 0)
  {
    v8 = (a1 + 24);
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v15 = xpc_string_create(v8);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v17 = a2;
  v18 = "real_iccid";
  xpc::dict::object_proxy::operator=(&v17, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  v11 = *(a1 + 48);
  v10 = a1 + 48;
  v9 = v11;
  if (*(v10 + 23) >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v13 = xpc_string_create(v12);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v17 = a2;
  v18 = "eff_iccid";
  xpc::dict::object_proxy::operator=(&v17, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
}

{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  if ((a1 & 0xFFFFFFFC) != 0)
  {
    v8 = "???";
  }

  else
  {
    v8 = off_278A31630[a1 & 3];
  }

  ctu::rest::detail::write_enum_string_value(&object, a1, v8, v7);
  v13 = a2;
  v14 = "mode";
  xpc::dict::object_proxy::operator=(&v13, &object, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(object);
  object = 0;
  v11 = xpc_BOOL_create(a1 & 0x100000000);
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v13 = a2;
  v14 = "inReset";
  xpc::dict::object_proxy::operator=(&v13, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_BOOL_create(a1 & 0x10000000000);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v13 = a2;
  v14 = "cmasCampOnly";
  xpc::dict::object_proxy::operator=(&v13, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
}

void read_rest_value(uint64_t a1, void *a2)
{
  if (MEMORY[0x2383CC760](*a2) == MEMORY[0x277D86468])
  {
    v4 = a2;
    v5 = "card_id";
    xpc::dict::object_proxy::operator xpc::object(&v4, &object);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v9);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v7;
    *(a1 + 16) = v8;
    xpc_release(object);
    v4 = a2;
    v5 = "real_iccid";
    xpc::dict::object_proxy::operator xpc::object(&v4, &object);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v9);
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 24) = v7;
    *(a1 + 40) = v8;
    xpc_release(object);
    v4 = a2;
    v5 = "eff_iccid";
    xpc::dict::object_proxy::operator xpc::object(&v4, &object);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v11) < 0)
    {
      operator delete(v9);
    }

    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    *(a1 + 48) = v7;
    *(a1 + 64) = v8;
    xpc_release(object);
  }

  else
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }
}

void sub_237416CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (*(v12 - 17) < 0)
  {
    operator delete(*(v12 - 40));
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void asString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v9, ", fetched from vinyl sim: ", 0x1AuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 24))
  {
    v6 = "true";
  }

  else
  {
    v6 = "false";
  }

  if (*(a1 + 24))
  {
    v7 = 4;
  }

  else
  {
    v7 = 5;
  }

  v8 = std::string::append(&v10, v6, v7);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

{
  v2 = HIDWORD(a1);
  if (a1 > 4)
  {
    v4 = "???";
  }

  else
  {
    v4 = off_278A31268[a1 & 7];
  }

  v5 = strlen(v4);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  __dst = 0;
  v16 = 0;
  v17 = 0;
  if (v5 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v17) = v5;
  if (v5)
  {
    memcpy(&__dst, v4, v5);
  }

  *(&__dst + v6) = 0;
  v7 = SHIBYTE(v17);
  if (v17 >= 0)
  {
    v8 = HIBYTE(v17);
  }

  else
  {
    v8 = v16;
  }

  memset(&v14, 0, sizeof(v14));
  v9 = &v14;
  std::string::basic_string[abi:ne200100](&v14, v8 + 1);
  if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = v14.__r_.__value_.__r.__words[0];
  }

  if (v8)
  {
    if (v7 >= 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst;
    }

    memmove(v9, p_dst, v8);
  }

  *(&v9->__r_.__value_.__l.__data_ + v8) = 43;
  v11 = asString(v2);
  v12 = strlen(v11);
  v13 = std::string::append(&v14, v11, v12);
  *a2 = *v13;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(__dst);
    return;
  }

  operator delete(v14.__r_.__value_.__l.__data_);
  if (v7 < 0)
  {
    goto LABEL_24;
  }
}

{
  std::operator+<char>();
  v4 = std::string::append(&v32, ", ", 2uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v33.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v33.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = *(a1 + 47);
  if (v6 >= 0)
  {
    v7 = (a1 + 24);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 47);
  }

  else
  {
    v8 = *(a1 + 32);
  }

  v9 = std::string::append(&v33, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v34, ", ", 2uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (*(a1 + 64))
  {
    v13 = "true";
  }

  else
  {
    v13 = "false";
  }

  if (*(a1 + 64))
  {
    v14 = 4;
  }

  else
  {
    v14 = 5;
  }

  v15 = std::string::append(&v35, v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v36.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v36.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v36, ", ", 2uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v31, *(a1 + 48));
  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v31;
  }

  else
  {
    v19 = v31.__r_.__value_.__r.__words[0];
  }

  if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v31.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v31.__r_.__value_.__l.__size_;
  }

  v21 = std::string::append(&v37, v19, size);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v38, ", ", 2uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v30, *(a1 + 56));
  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v30;
  }

  else
  {
    v25 = v30.__r_.__value_.__r.__words[0];
  }

  if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v26 = HIBYTE(v30.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v26 = v30.__r_.__value_.__l.__size_;
  }

  v27 = std::string::append(&v39, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  v29 = std::string::append(&v40, "]", 1uLL);
  *a2 = *v29;
  v29->__r_.__value_.__l.__size_ = 0;
  v29->__r_.__value_.__r.__words[2] = 0;
  v29->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }
}

void sub_2374173BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sub_2374176D0(_Unwind_Exception *a1)
{
  xpc_release(*(v1 - 48));
  xpc_release(*(v1 - 40));
  _Unwind_Resume(a1);
}

void rest::asString(rest *this@<X0>, std::string *a2@<X8>)
{
  asString(this, &v13);
  v5 = std::string::insert(&v13, 0, "Effective: ", 0xBuLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v14, "Real: ", 6uLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v15.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v15.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  asString(this + 32, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v11 = std::string::append(&v15, p_p, size);
  *a2 = *v11;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

void sub_2374178F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_237417BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_237418020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_237418508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void rest::SubscriberDataIdState::~SubscriberDataIdState(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::pair<subscriber::SimSlot const,rest::MccMncComputedInfo>::~pair(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<subscriber::SimSlot const,rest::MccMncComputedInfo>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<subscriber::SimSlot const,rest::MccMncComputedInfo>,0>(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void std::__tree<std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>>>::destroy(a1[1]);
    std::__destroy_at[abi:ne200100]<std::pair<subscriber::SimSlot const,rest::MccMncComputedInfo>,0>((a1 + 4));

    operator delete(a1);
  }
}

void _GLOBAL__sub_I_SubscriberTrackerResource_cpp()
{
  v0 = *MEMORY[0x277D85DE8];
  qword_280CE8CD0 = 0;
  qword_280CE8CC8 = 0;
  rest::kDefaultMccMncComputedInfos = &qword_280CE8CC8;
  operator new();
}

void sub_237418A04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::__tree<std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,rest::MccMncComputedInfo>>>::destroy(qword_280CE8CB0);
  std::pair<subscriber::SimSlot const,rest::MccMncComputedInfo>::~pair(va1);
  SimLabelContent::~SimLabelContent(va);
  _Unwind_Resume(a1);
}

uint64_t gsmToCsiErrorWithCode(int a1, int a2)
{
  if (a1 == 1)
  {
    if (a2 > 98)
    {
      if (a2 <= 160)
      {
        if (a2 > 129)
        {
          if (a2 <= 143)
          {
            if (a2 != 130)
            {
              if (a2 == 143)
              {
                return 49;
              }

              return 1;
            }

            return 48;
          }

          else
          {
            switch(a2)
            {
              case 144:
                return 50;
              case 159:
                return 51;
              case 160:
                return 23;
              default:
                return 1;
            }
          }
        }

        else if (a2 <= 126)
        {
          if (a2 != 99)
          {
            if (a2 == 111)
            {
              return 16;
            }

            return 1;
          }

          return 15;
        }

        else if (a2 == 127)
        {
          return 21;
        }

        else if (a2 == 128)
        {
          return 22;
        }

        else
        {
          return 47;
        }
      }

      if (a2 <= 310)
      {
        if (a2 <= 175)
        {
          if (a2 != 161)
          {
            if (a2 == 175)
            {
              return 53;
            }

            return 1;
          }

          return 52;
        }

        if (a2 == 176)
        {
          return 54;
        }

        if (a2 == 192)
        {
          return 55;
        }

        if (a2 != 310)
        {
          return 1;
        }

        return 37;
      }

      if (a2 <= 314)
      {
        if (a2 != 311 && a2 != 312)
        {
          if (a2 != 313)
          {
            return 1;
          }

          return 40;
        }

        return 38;
      }

      if (a2 == 315)
      {
        return 40;
      }

      if (a2 != 525)
      {
        if (a2 == 543)
        {
          return 56;
        }

        return 1;
      }
    }

    else
    {
      if (a2 <= 37)
      {
        if (a2 <= 21)
        {
          if (a2 <= 9)
          {
            if (a2 != 1)
            {
              if (a2 == 8)
              {
                return 26;
              }

              return 1;
            }

            return 25;
          }

          else
          {
            switch(a2)
            {
              case 10:
                return 27;
              case 17:
                return 4;
              case 21:
                return 45;
              default:
                return 1;
            }
          }
        }

        if (a2 > 27)
        {
          if (a2 == 28)
          {
            return 6;
          }

          if (a2 != 29)
          {
            if (a2 == 30)
            {
              return 8;
            }

            return 1;
          }

          return 7;
        }

        if (a2 != 22)
        {
          if (a2 == 27)
          {
            return 46;
          }

          return 1;
        }

        return 5;
      }

      if (a2 > 68)
      {
        if (a2 > 95)
        {
          if (a2 == 96)
          {
            return 12;
          }

          else if (a2 == 97)
          {
            return 13;
          }

          else
          {
            return 14;
          }
        }

        else
        {
          switch(a2)
          {
            case 'E':
              return 20;
            case 'Q':
              return 10;
            case '_':
              return 11;
            default:
              return 1;
          }
        }
      }

      if (a2 > 41)
      {
        if (a2 != 42)
        {
          if (a2 != 47)
          {
            if (a2 == 50)
            {
              return 19;
            }

            return 1;
          }

          return 18;
        }

        return 5;
      }

      if (a2 == 38)
      {
        return 9;
      }

      if (a2 != 41)
      {
        return 1;
      }
    }

    return 17;
  }

  if (a1)
  {
    return 1;
  }

  if (a2 <= 106)
  {
    if (a2 > 15)
    {
      if (a2 > 29)
      {
        if (a2 == 30)
        {
          return 24;
        }

        if (a2 != 103)
        {
          if (a2 == 106)
          {
            return 58;
          }

          return 1;
        }

        return 57;
      }

      switch(a2)
      {
        case 16:
          return 44;
        case 23:
          return 41;
        case 29:
          return 67;
      }

      return 1;
    }

    if (a2 > 11)
    {
      if (a2 == 12)
      {
        return 39;
      }

      if (a2 != 13 && a2 != 15)
      {
        return 1;
      }

      return 40;
    }

    if (a2 != 10)
    {
      if (a2 != 11)
      {
        return 1;
      }

      return 38;
    }

    return 37;
  }

  if (a2 > 132)
  {
    if (a2 <= 148)
    {
      if (a2 == 133)
      {
        return 65;
      }

      if (a2 != 134)
      {
        if (a2 == 148)
        {
          return 69;
        }

        return 1;
      }

      return 66;
    }

    if (a2 != 149)
    {
      if (a2 != 150)
      {
        if (a2 == 1279)
        {
          return 43;
        }

        return 1;
      }

      return 68;
    }

    return 67;
  }

  if (a2 > 112)
  {
    switch(a2)
    {
      case 113:
        return 62;
      case 127:
        return 63;
      case 132:
        return 64;
      default:
        return 1;
    }
  }

  else
  {
    switch(a2)
    {
      case 'k':
        return 59;
      case 'o':
        return 60;
      case 'p':
        return 61;
      default:
        return 1;
    }
  }
}

uint64_t isT3402CSIError(int a1)
{
  result = 1;
  if ((a1 - 4) > 0x3F || ((1 << (a1 - 4)) & 0x9000000000400081) == 0)
  {
    v3 = a1 - 69;
    if (v3 > 0x17 || ((1 << v3) & 0xA80001) == 0)
    {
      return 0;
    }
  }

  return result;
}

uint64_t isEmergencyEpsFbError(int a1)
{
  result = 1;
  if ((a1 - 4) > 0x3F || ((1 << (a1 - 4)) & 0x9800000000404081) == 0)
  {
    v3 = a1 - 69;
    if (v3 > 0x23 || ((1 << v3) & 0x800A80001) == 0)
    {
      return 0;
    }
  }

  return result;
}

void asExternalCSIErrorString(unsigned int a1@<W0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = CSIErrorString(a1);
  std::string::basic_string[abi:ne200100]<0>(a2, v4);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::string::basic_string[abi:ne200100]<0>(&v15, "kCT");
  __p = 0;
  v13 = 0;
  v14 = 0;
  std::string::basic_string[abi:ne200100]<0>(&__p, "kCTError");
  if (a1 <= 0x2A && ((1 << a1) & 0x40000000003) != 0)
  {
    v5 = HIBYTE(v17);
    v6 = v15;
    v7 = v16;
    v8 = v17 < 0;
    p_p = &v15;
  }

  else
  {
    v5 = HIBYTE(v14);
    v6 = __p;
    v7 = v13;
    v8 = v14 < 0;
    p_p = &__p;
  }

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = p_p;
  }

  if (v8)
  {
    v11 = v7;
  }

  else
  {
    v11 = v5;
  }

  std::string::replace(a2, 0, 1uLL, v10, v11);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(v15);
  }
}

void sub_2374190C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_23741939C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(*v12);
  _Unwind_Resume(a1);
}

uint64_t std::function<char const* const ()(subscriber::HardwareSimSlot)>::operator()(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void std::vector<subscriber::HardwareSimSlot>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<RegisteredNetworkInfoChange>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,ctu::OsLogLogger>>>::destroy(a1[1]);
    MEMORY[0x2383CB6D0](a1 + 5);

    operator delete(a1);
  }
}

void rest::read_rest_value(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v10 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CC760](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v10 = v3;
  }

  if (MEMORY[0x2383CC760](v3) == v4)
  {
    v7 = &v10;
    v8 = "forSlot";
    xpc::dict::object_proxy::operator xpc::object(&v7, &object);
    v5 = MEMORY[0x2383CC760](object);
    if (v5 == MEMORY[0x277D864C0])
    {
      v11 = *a1;
      ctu::rest::detail::read_enum_string_value(&v11, &object, v6);
      *a1 = v11;
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0);
    }

    xpc_release(object);
    v7 = &v10;
    v8 = "is5GSAEnabled";
    xpc::dict::object_proxy::operator xpc::object(&v7, &object);
    *(a1 + 4) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v3 = v10;
  }

  else
  {
    *a1 = 0;
    *(a1 + 4) = 0;
  }

  xpc_release(v3);
}

{
  v34 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v34 && MEMORY[0x2383CC760](v34) == v3)
  {
    xpc_retain(v34);
  }

  else
  {
    v34 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v3)
  {
    *&v15 = &v34;
    *(&v15 + 1) = "slot";
    xpc::dict::object_proxy::operator xpc::object(&v15, &object);
    v8 = MEMORY[0x2383CC760](object);
    if (v8 == MEMORY[0x277D864C0])
    {
      v35 = *a1;
      ctu::rest::detail::read_enum_string_value(&v35, &object, v9);
      *a1 = v35;
    }

    else if (v8 == MEMORY[0x277D86448] || v8 == MEMORY[0x277D86498] || v8 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0);
    }

    xpc_release(object);
    *&v15 = &v34;
    *(&v15 + 1) = "session_id";
    xpc::dict::object_proxy::operator xpc::object(&v15, &object);
    a1[1] = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    *&v15 = &v34;
    *(&v15 + 1) = "address";
    xpc::dict::object_proxy::operator xpc::object(&v15, &object);
    read_rest_value(a1 + 1, &object);
    xpc_release(object);
    *&v15 = &v34;
    *(&v15 + 1) = "payload";
    xpc::dict::object_proxy::operator xpc::object(&v15, &object);
    if (MEMORY[0x2383CC760](object) == MEMORY[0x277D86458])
    {
      length = xpc_data_get_length(object);
      v12 = *(a1 + 21);
      v13 = *(a1 + 22);
      if (length <= v13 - v12)
      {
        if (length < v13 - v12)
        {
          v13 = v12 + length;
          *(a1 + 22) = v12 + length;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(a1 + 21, length - (v13 - v12));
        v12 = *(a1 + 21);
        v13 = *(a1 + 22);
      }

      ctu::rest::detail::read_raw_binary_value(v12, (v13 - v12), &object, v10);
    }

    xpc_release(object);
    *&v15 = &v34;
    *(&v15 + 1) = "is_cdma";
    xpc::dict::object_proxy::operator xpc::object(&v15, &object);
    *(a1 + 192) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    *&v15 = &v34;
    *(&v15 + 1) = "packing_required";
    xpc::dict::object_proxy::operator xpc::object(&v15, &object);
    *(a1 + 193) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  else
  {
    *&v15 = 0;
    CSIPhoneNumber::CSIPhoneNumber((&v15 + 8), &str_2_5);
    v31 = 0uLL;
    v33 = 0;
    v32 = 0;
    *a1 = v15;
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 2));
    }

    *(a1 + 1) = v16;
    *(a1 + 4) = v17;
    HIBYTE(v17) = 0;
    LOBYTE(v16) = 0;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 5));
    }

    *(a1 + 10) = v18;
    *(a1 + 7) = v19;
    HIBYTE(v19) = 0;
    LOBYTE(v18) = 0;
    a1[16] = v20;
    *(a1 + 68) = v21;
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 9));
    }

    *(a1 + 18) = v22;
    v4 = v23;
    HIBYTE(v23) = 0;
    LOBYTE(v22) = 0;
    v5 = v24;
    *(a1 + 11) = v4;
    *(a1 + 12) = v5;
    *(a1 + 52) = v25;
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 14));
    }

    *(a1 + 7) = v26;
    *(a1 + 16) = v27;
    HIBYTE(v27) = 0;
    LOBYTE(v26) = 0;
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 17));
    }

    *(a1 + 34) = __p;
    *(a1 + 19) = v29;
    HIBYTE(v29) = 0;
    LOBYTE(__p) = 0;
    v6 = *(a1 + 21);
    a1[40] = v30;
    if (v6)
    {
      *(a1 + 22) = v6;
      operator delete(v6);
      *(a1 + 21) = 0;
      *(a1 + 22) = 0;
      *(a1 + 23) = 0;
      v7 = SHIBYTE(v29);
      *(a1 + 42) = v31;
      *(a1 + 23) = v32;
      v32 = 0;
      v31 = 0uLL;
      *(a1 + 96) = v33;
      if (v7 < 0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *(a1 + 42) = v31;
      *(a1 + 23) = v32;
      v32 = 0;
      v31 = 0uLL;
      *(a1 + 96) = v33;
    }

    if (SHIBYTE(v27) < 0)
    {
      operator delete(v26);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(v22);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v17) < 0)
    {
      operator delete(v16);
    }
  }

  xpc_release(v34);
}

{
  v28 = *a2;
  v3 = MEMORY[0x277D86468];
  if (v28 && MEMORY[0x2383CC760](v28) == v3)
  {
    xpc_retain(v28);
  }

  else
  {
    v28 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v3)
  {
    *&v11 = &v28;
    *(&v11 + 1) = "slot";
    xpc::dict::object_proxy::operator xpc::object(&v11, &object);
    v8 = MEMORY[0x2383CC760](object);
    if (v8 == MEMORY[0x277D864C0])
    {
      v29 = *a1;
      ctu::rest::detail::read_enum_string_value(&v29, &object, v9);
      *a1 = v29;
    }

    else if (v8 == MEMORY[0x277D86448] || v8 == MEMORY[0x277D86498] || v8 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0);
    }

    xpc_release(object);
    *&v11 = &v28;
    *(&v11 + 1) = "session_id";
    xpc::dict::object_proxy::operator xpc::object(&v11, &object);
    a1[1] = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    *&v11 = &v28;
    *(&v11 + 1) = "address";
    xpc::dict::object_proxy::operator xpc::object(&v11, &object);
    read_rest_value(a1 + 1, &object);
    xpc_release(object);
    *&v11 = &v28;
    *(&v11 + 1) = "call_type";
    xpc::dict::object_proxy::operator xpc::object(&v11, &object);
    a1[42] = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  else
  {
    *&v11 = 0;
    CSIPhoneNumber::CSIPhoneNumber((&v11 + 8), &str_2_5);
    v27 = 0;
    *a1 = v11;
    if (*(a1 + 39) < 0)
    {
      operator delete(*(a1 + 2));
    }

    *(a1 + 1) = v12;
    *(a1 + 4) = v13;
    HIBYTE(v13) = 0;
    LOBYTE(v12) = 0;
    if (*(a1 + 63) < 0)
    {
      operator delete(*(a1 + 5));
    }

    *(a1 + 10) = v14;
    *(a1 + 7) = v15;
    HIBYTE(v15) = 0;
    LOBYTE(v14) = 0;
    a1[16] = v16;
    *(a1 + 68) = v17;
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 9));
    }

    *(a1 + 18) = v18;
    v4 = v19;
    HIBYTE(v19) = 0;
    LOBYTE(v18) = 0;
    v5 = v20;
    *(a1 + 11) = v4;
    *(a1 + 12) = v5;
    *(a1 + 52) = v21;
    if (*(a1 + 135) < 0)
    {
      operator delete(*(a1 + 14));
    }

    v6 = 0;
    *(a1 + 7) = __p;
    *(a1 + 16) = v23;
    HIBYTE(v23) = 0;
    LOBYTE(__p) = 0;
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 17));
      v6 = v23 < 0;
    }

    *(a1 + 34) = v24;
    *(a1 + 19) = v25;
    HIBYTE(v25) = 0;
    LOBYTE(v24) = 0;
    v7 = v27;
    a1[40] = v26;
    a1[42] = v7;
    if (v6)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v15) < 0)
    {
      operator delete(v14);
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12);
    }
  }

  xpc_release(v28);
}

void sub_237419924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void rest::read_rest_value(rest *this, void **a2, const object *a3)
{
  v4 = *a2;
  v17 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v17 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v5)
  {
    v14 = &v17;
    v15 = "recommendedSlot";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    v6 = MEMORY[0x2383CC760](object);
    v8 = MEMORY[0x277D864C0];
    v9 = MEMORY[0x277D86448];
    if (v6 == MEMORY[0x277D864C0])
    {
      v18 = *this;
      ctu::rest::detail::read_enum_string_value(&v18, &object, v7);
      *this = v18;
    }

    else if (v6 == MEMORY[0x277D86448] || v6 == MEMORY[0x277D86498] || v6 == MEMORY[0x277D864C8])
    {
      *this = xpc::dyn_cast_or_default(&object, 0);
    }

    xpc_release(object);
    v14 = &v17;
    v15 = "currentSubStatus";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    v10 = MEMORY[0x2383CC760](object);
    if (v10 == v8)
    {
      v18 = *(this + 1);
      ctu::rest::detail::read_enum_string_value(&v18, &object, v11);
      *(this + 1) = v18;
    }

    else if (v10 == v9 || v10 == MEMORY[0x277D86498] || v10 == MEMORY[0x277D864C8])
    {
      *(this + 1) = xpc::dyn_cast_or_default(&object, 0);
    }

    xpc_release(object);
    v14 = &v17;
    v15 = "callStatus";
    xpc::dict::object_proxy::operator xpc::object(&v14, &object);
    v12 = MEMORY[0x2383CC760](object);
    if (v12 == v8)
    {
      v18 = *(this + 2);
      ctu::rest::detail::read_enum_string_value(&v18, &object, v13);
      *(this + 2) = v18;
    }

    else if (v12 == v9 || v12 == MEMORY[0x277D86498] || v12 == MEMORY[0x277D864C8])
    {
      *(this + 2) = xpc::dyn_cast_or_default(&object, 0);
    }

    xpc_release(object);
  }

  else
  {
    *this = 0;
    *(this + 2) = 0;
  }

  xpc_release(v17);
}

{
  v4 = *a2;
  v14 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v14 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v5)
  {
    v12[0] = &v14;
    v12[1] = "CodecPath";
    xpc::dict::object_proxy::operator xpc::object(v12, &object);
    __p = 0;
    v18 = 0;
    v19 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = *xdata;
    *(this + 2) = v16;
    xpc_release(object);
    __p = &v14;
    v18 = "CompressedInput";
    xpc::dict::object_proxy::operator xpc::object(&__p, xdata);
    if (MEMORY[0x2383CC760](xdata[0]) == MEMORY[0x277D86458])
    {
      length = xpc_data_get_length(xdata[0]);
      v10 = *(this + 3);
      v11 = *(this + 4);
      if (length <= v11 - v10)
      {
        if (length < v11 - v10)
        {
          v11 = v10 + length;
          *(this + 4) = v10 + length;
        }
      }

      else
      {
        std::vector<unsigned char>::__append(this + 3, length - (v11 - v10));
        v10 = *(this + 3);
        v11 = *(this + 4);
      }

      ctu::rest::detail::read_raw_binary_value(v10, (v11 - v10), xdata, v8);
    }

    xpc_release(xdata[0]);
    __p = &v14;
    v18 = "MaxDecodedSize";
    xpc::dict::object_proxy::operator xpc::object(&__p, xdata);
    *(this + 6) = xpc::dyn_cast_or_default(xdata, 0);
    xpc_release(xdata[0]);
  }

  else
  {
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    v7 = (this + 24);
    v6 = *(this + 3);
    *this = 0;
    *(this + 1) = 0;
    *(this + 2) = 0;
    if (v6)
    {
      *(this + 4) = v6;
      operator delete(v6);
      *v7 = 0;
      *(this + 4) = 0;
      *(this + 5) = 0;
    }

    *v7 = 0u;
    *(this + 40) = 0u;
  }

  xpc_release(v14);
}

uint64_t rest::asString@<X0>(rest *this@<X0>, _BYTE *a2@<X8>)
{
  v36 = 0;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  *__p = 0u;
  v33 = 0u;
  v30 = 0u;
  *__src = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v27);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v28, "recommendedSlot:[", 17);
  v6 = *this - 1;
  if (v6 > 2)
  {
    v7 = "kUnknown";
  }

  else
  {
    v7 = off_278A2F0E8[v6];
  }

  v8 = strlen(v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "], currentSubStatus:[", 21);
  v11 = *(this + 1);
  v12 = "kCurrentDataSlotQualityUnknown";
  if (v11 == 1)
  {
    v12 = "kCurrentDataSlotQualityBad";
  }

  if (v11 == 2)
  {
    v13 = "kCurrentDataSlotQualityGood";
  }

  else
  {
    v13 = v12;
  }

  v14 = strlen(v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v13, v14);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "], callStatus:[", 15);
  v17 = *(this + 2);
  v18 = "kAnyCallStateUnknown";
  if (v17 == 1)
  {
    v18 = "kAnyCallStateActive";
  }

  if (v17 == 2)
  {
    v19 = "kAnyCallStateInactive";
  }

  else
  {
    v19 = v18;
  }

  v20 = strlen(v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v19, v20);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "]", 1);
  if ((BYTE8(v34) & 0x10) != 0)
  {
    v23 = v34;
    if (v34 < __src[1])
    {
      *&v34 = __src[1];
      v23 = __src[1];
    }

    v24 = __src[0];
  }

  else
  {
    if ((BYTE8(v34) & 8) == 0)
    {
      v22 = 0;
      a2[23] = 0;
      goto LABEL_27;
    }

    v24 = *(&v29 + 1);
    v23 = *(&v30 + 1);
  }

  v22 = v23 - v24;
  if ((v23 - v24) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v22 >= 0x17)
  {
    operator new();
  }

  a2[23] = v22;
  if (v22)
  {
    memmove(a2, v24, v22);
  }

LABEL_27:
  a2[v22] = 0;
  *&v27 = *MEMORY[0x277D82818];
  v25 = *(MEMORY[0x277D82818] + 72);
  *(&v27 + *(v27 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v28 = v25;
  *(&v28 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v28 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v29);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v35);
}

void sub_23741A200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x2383CBE70](v9 + 128);
  _Unwind_Resume(a1);
}

void sub_23741A560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t EnhancedLQMInterface::query(uint64_t result, int a2, uint64_t *a3)
{
  v9[4] = *MEMORY[0x277D85DE8];
  if (a2 == 17)
  {
    v6 = *a3;
    v5 = a3[1];
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    v8[0] = &unk_284A662F8;
    v8[1] = v6;
    v8[2] = v5;
    v8[3] = v8;
    (*(*result + 16))(result, v8);
    result = std::__function::__value_func<void ()(int,std::set<EnhancedLQMIndication>)>::~__value_func[abi:ne200100](v8);
  }

  else if (a2 == 16)
  {
    v4 = *a3;
    v3 = a3[1];
    if (v3)
    {
      atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    }

    v9[0] = &unk_284A66268;
    v9[1] = v4;
    v9[2] = v3;
    v9[3] = v9;
    (*(*result + 24))(result, 1, v9);
    result = std::__function::__value_func<void ()(int,std::vector<unsigned char>)>::~__value_func[abi:ne200100](v9);
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23741A848(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(int,std::set<EnhancedLQMIndication>)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t EnhancedLQMInterface::registerForNotifications(EnhancedLQMInterface *this, int a2, int a3, int a4, int a5, int a6, int a7, int a8, BOOL a9)
{
  v27[4] = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = 0;
  v24 = &v25;
  if (a2)
  {
    v23 = 16;
    std::__tree<EnhancedLQMIndication>::__emplace_unique_key_args<EnhancedLQMIndication,EnhancedLQMIndication>(&v24, 16);
  }

  if (a3)
  {
    v23 = 17;
    std::__tree<EnhancedLQMIndication>::__emplace_unique_key_args<EnhancedLQMIndication,EnhancedLQMIndication>(&v24, 17);
  }

  if (a4)
  {
    v23 = 18;
    std::__tree<EnhancedLQMIndication>::__emplace_unique_key_args<EnhancedLQMIndication,EnhancedLQMIndication>(&v24, 18);
  }

  if (a5)
  {
    v23 = 19;
    std::__tree<EnhancedLQMIndication>::__emplace_unique_key_args<EnhancedLQMIndication,EnhancedLQMIndication>(&v24, 19);
  }

  if (a6)
  {
    v23 = 21;
    std::__tree<EnhancedLQMIndication>::__emplace_unique_key_args<EnhancedLQMIndication,EnhancedLQMIndication>(&v24, 21);
  }

  if (a7)
  {
    v23 = 22;
    std::__tree<EnhancedLQMIndication>::__emplace_unique_key_args<EnhancedLQMIndication,EnhancedLQMIndication>(&v24, 22);
  }

  if (a8)
  {
    v23 = 23;
    std::__tree<EnhancedLQMIndication>::__emplace_unique_key_args<EnhancedLQMIndication,EnhancedLQMIndication>(&v24, 23);
  }

  if (a9)
  {
    v23 = 24;
    std::__tree<EnhancedLQMIndication>::__emplace_unique_key_args<EnhancedLQMIndication,EnhancedLQMIndication>(&v24, 24);
  }

  v16 = dispatch_semaphore_create(0);
  v17 = v16;
  LOBYTE(v23) = 0;
  v21 = v24;
  v22[0] = v25;
  v22[1] = v26;
  if (v26)
  {
    v25[2] = v22;
    v24 = &v25;
    v25 = 0;
    v26 = 0;
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v21 = v22;
  if (v16)
  {
LABEL_19:
    dispatch_retain(v16);
  }

LABEL_20:
  v27[0] = &unk_284A66388;
  v27[1] = v17;
  v27[2] = &v23;
  v27[3] = v27;
  (*(*this + 32))(this, &v21, v27);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v27);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(v22[0]);
  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  v18 = v23;
  if (v17)
  {
    dispatch_release(v17);
  }

  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(v25);
  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

void sub_23741AAF4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](va);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(a2);
  if (v7)
  {
    dispatch_release(v7);
  }

  JUMPOUT(0x23741AAE4);
}

void *std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0>,void ()(int,std::vector<unsigned char>)>::~__func(void *a1)
{
  *a1 = &unk_284A66268;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0>,void ()(int,std::vector<unsigned char>)>::~__func(void *a1)
{
  *a1 = &unk_284A66268;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0>,void ()(int,std::vector<unsigned char>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A66268;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0>,void ()(int,std::vector<unsigned char>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0>,void ()(int,std::vector<unsigned char>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0>,void ()(int,std::vector<unsigned char>)>::operator()(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(a3 + 8);
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (v4)
  {
    v11 = xpc_int64_create(v4);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v9 = *(a1 + 8);
    v10 = "kError";
    xpc::dict::object_proxy::operator=(&v9, &v11, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v11);
  }

  else
  {
    v11 = xpc_BOOL_create(1);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    v9 = *(a1 + 8);
    v10 = "kDidSucceed";
    xpc::dict::object_proxy::operator=(&v9, &v11, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v11);
    v11 = 0;
    v7 = xpc_data_create(v5, v6 - v5);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    v9 = *(a1 + 8);
    v10 = "kRadioEnhancedLQMResult";
    xpc::dict::object_proxy::operator=(&v9, &v7, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(v7);
  }

  if (v5)
  {
    operator delete(v5);
  }
}

uint64_t std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_0>,void ()(int,std::vector<unsigned char>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(int,std::vector<unsigned char>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1>,void ()(int,std::set<EnhancedLQMIndication>)>::~__func(void *a1)
{
  *a1 = &unk_284A662F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1>,void ()(int,std::set<EnhancedLQMIndication>)>::~__func(void *a1)
{
  *a1 = &unk_284A662F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1>,void ()(int,std::set<EnhancedLQMIndication>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A662F8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1>,void ()(int,std::set<EnhancedLQMIndication>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1>,void ()(int,std::set<EnhancedLQMIndication>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1>,void ()(int,std::set<EnhancedLQMIndication>)>::operator()(uint64_t a1, int *a2, void *a3)
{
  v4 = *a2;
  v5 = a3 + 1;
  v6 = a3[1];
  v7 = *a3;
  v8 = v6;
  if (a3[2])
  {
    v6[2] = &v8;
    *a3 = v5;
    *v5 = 0;
    a3[2] = 0;
    if (v4)
    {
LABEL_3:
      v14 = xpc_int64_create(v4);
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      v12 = *(a1 + 8);
      v13 = "kPosixError";
      xpc::dict::object_proxy::operator=(&v12, &v14, &v15);
      xpc_release(v15);
      v15 = 0;
      xpc_release(v14);
      goto LABEL_10;
    }
  }

  else
  {
    v7 = &v8;
    if (v4)
    {
      goto LABEL_3;
    }
  }

  sCreateSupportedIndicationDict(&v7, &v14);
  v12 = *(a1 + 8);
  v13 = "kRadioEnhancedLQMSupportedMetrics";
  xpc::dict::object_proxy::operator=(&v12, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v10 = xpc_BOOL_create(1);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v12 = *(a1 + 8);
  v13 = "kDidSucceed";
  xpc::dict::object_proxy::operator=(&v12, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
LABEL_10:
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(v8);
}

uint64_t std::__function::__func<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1,std::allocator<EnhancedLQMInterface::query(EnhancedLQMQuery,xpc::auto_reply)::$_1>,void ()(int,std::set<EnhancedLQMIndication>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(int,std::set<EnhancedLQMIndication>)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__tree<EnhancedLQMIndication>::__emplace_unique_key_args<EnhancedLQMIndication,EnhancedLQMIndication>(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void *std::__function::__func<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0,std::allocator<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A66388;
  v2 = a1[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0,std::allocator<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A66388;
  v1 = a1[1];
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__function::__func<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0,std::allocator<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0>,void ()(BOOL)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_284A66388;
  a2[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  a2[2] = *(a1 + 16);
}

void std::__function::__func<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0,std::allocator<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0,std::allocator<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

intptr_t std::__function::__func<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0,std::allocator<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0>,void ()(BOOL)>::operator()(uint64_t a1, _BYTE *a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  **(v3 + 8) = *a2;
  return dispatch_semaphore_signal(v2);
}

uint64_t std::__function::__func<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0,std::allocator<EnhancedLQMInterface::registerForNotifications(BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL,BOOL)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<EnhancedLQMInterface::sendTrafficInfo(unsigned short,ctu::cf::CFSharedRef<__CFData const>,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::sendTrafficInfo(unsigned short,ctu::cf::CFSharedRef<__CFData const>,xpc::auto_reply)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A66418;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<EnhancedLQMInterface::sendTrafficInfo(unsigned short,ctu::cf::CFSharedRef<__CFData const>,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::sendTrafficInfo(unsigned short,ctu::cf::CFSharedRef<__CFData const>,xpc::auto_reply)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A66418;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__function::__func<EnhancedLQMInterface::sendTrafficInfo(unsigned short,ctu::cf::CFSharedRef<__CFData const>,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::sendTrafficInfo(unsigned short,ctu::cf::CFSharedRef<__CFData const>,xpc::auto_reply)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<EnhancedLQMInterface::sendTrafficInfo(unsigned short,ctu::cf::CFSharedRef<__CFData const>,xpc::auto_reply)::$_0,std::allocator<EnhancedLQMInterface::sendTrafficInfo(unsigned short,ctu::cf::CFSharedRef<__CFData const>,xpc::auto_reply)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *desenseClientAsString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_278A2F130[a1];
  }
}

void InputThresholds::dumpThresholds(InputThresholds *this, os_log_t *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  v3 = this + 16;
  if (v2 != this + 16)
  {
    do
    {
      v5 = *a2;
      if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(v2 + 8);
        v7 = "???";
        if (v6 <= 4)
        {
          v7 = off_278A2F168[v6];
        }

        v8 = asString(*(v2 + 9));
        v9 = *(v2 + 6);
        *buf = 136315650;
        v15 = v7;
        v16 = 2080;
        v17 = v8;
        v18 = 2048;
        v19 = v9;
        _os_log_impl(&dword_2373EA000, v5, OS_LOG_TYPE_DEFAULT, "#I (%s, %s) => %.2f", buf, 0x20u);
      }

      v10 = *(v2 + 1);
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = *(v2 + 2);
          v12 = *v11 == v2;
          v2 = v11;
        }

        while (!v12);
      }

      v2 = v11;
    }

    while (v11 != v3);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void SignalStrengthModel::SignalStrengthModel(uint64_t a1, int a2, OsLogContext *a3)
{
  ctu::OsLogLogger::OsLogLogger(v4, a3);
  MEMORY[0x2383CB6C0](a1 + 8, v4);
  MEMORY[0x2383CB6D0](v4);
  *a1 = &unk_284A66A08;
  *(a1 + 16) = 0;
  operator new();
}

void sub_23741BB74(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MEMORY[0x2383CB6D0](v1 + 8);
  _Unwind_Resume(a1);
}

void SignalStrengthModel::~SignalStrengthModel(SignalStrengthModel *this)
{
  *this = &unk_284A66A08;
  v2 = *(this + 12);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 10);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  MEMORY[0x2383CB6D0](this + 8);
}

void SignalStrengthModel::setImmediateMode(SignalStrengthModel *this)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(this + 1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136315138;
    v5 = "true";
    _os_log_impl(&dword_2373EA000, v2, OS_LOG_TYPE_DEFAULT, "#I setImmediateMode to %s", &v4, 0xCu);
  }

  *(this + 60) = 1;
  v3 = *MEMORY[0x277D85DE8];
}

void SignalStrengthModel::reset(SignalStrengthModel *this, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = *(this + 1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "false";
    if (a2)
    {
      v5 = "true";
    }

    v7 = 136315138;
    v8 = v5;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I reset with clearSystemState %s", &v7, 0xCu);
  }

  *(this + 40) = 0;
  *(this + 14) = 0;
  if (a2)
  {
    *(this + 6) &= 0xFFFFFFFFFFFFFFF6;
  }

  v6 = *MEMORY[0x277D85DE8];
}

void SignalStrengthModel::setForceNotificationOnNextHeartbeat(SignalStrengthModel *this, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (*(this + 62) != a2)
  {
    v4 = *(this + 1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "false";
      if (a2)
      {
        v5 = "true";
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I Setting the force notification flag to: %s", &v7, 0xCu);
    }
  }

  *(this + 62) = a2;
  v6 = *MEMORY[0x277D85DE8];
}

void SignalStrengthModel::setDelegate(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 96);
  *(a1 + 88) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t SignalStrengthModel::getLinkQualityMetric(SignalStrengthModel *this)
{
  if ((*(*this + 48))(this) == 1)
  {
    return 50;
  }

  else
  {
    return 100;
  }
}

void std::__shared_ptr_emplace<InputThresholds>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A66AC0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

BOOL USSDServiceInterface::processRFExposureProcedure(capabilities::ct *a1, uint64_t *a2, void *a3, uint64_t a4)
{
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  memset(&v42, 0, sizeof(v42));
  capabilities::ct::SARValue(&v42, a1);
  size = HIBYTE(v42.__r_.__value_.__r.__words[2]);
  if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v42.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    std::string::basic_string[abi:ne200100]<0>(v33, "");
    goto LABEL_46;
  }

  v9 = *a2;
  Registry::throwIfNotInitialized(v9);
  v10 = *(v9 + 24);
  v11 = off_284A757B8;
  if ((off_284A757B8 & 0x8000000000000000) != 0)
  {
    v12 = (off_284A757B8 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(v10 + 3);
  v45.__r_.__value_.__r.__words[0] = v11;
  v15 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v10[4].__m_.__sig, &v45);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10 + 3);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      v18 = 0;
      if (!v17)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10 + 3);
  v16 = 0;
  v18 = 1;
  if (!v17)
  {
LABEL_10:
    std::string::basic_string[abi:ne200100]<0>(v33, "");
    if (v18)
    {
      goto LABEL_46;
    }

LABEL_45:
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    goto LABEL_46;
  }

LABEL_15:
  v41 = 0;
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v42;
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v44, v40.__r_.__value_.__l.__data_, v40.__r_.__value_.__l.__size_);
  }

  else
  {
    v44 = v40;
  }

  v43 = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v45 = v44;
  }

  __p.__r_.__value_.__r.__words[0] = 0;
  v19 = *MEMORY[0x277CBECE8];
  if (ctu::cf::convert_copy())
  {
    v20 = v43;
    v43 = __p.__r_.__value_.__r.__words[0];
    v36.__r_.__value_.__r.__words[0] = v20;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v36.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v41 = v43;
  v43 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v43);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v43 = 0;
  (*(*v17 + 16))(&v43, v17, @"AlertDialog", @"MAX_SAR_VALUE", 1);
  v39 = 0;
  MutableCopy = CFStringCreateMutableCopy(v19, 0, v43);
  v39 = MutableCopy;
  v22 = v41;
  v46.length = CFStringGetLength(MutableCopy);
  v46.location = 0;
  CFStringFindAndReplace(MutableCopy, @"%@", v22, v46, 0);
  theString = 0;
  (*(*v17 + 16))(&theString, v17, @"AlertDialog", @"FOR_MORE_INFO_SEE_WEBSITE", 1);
  v37 = 0;
  v23 = CFStringCreateMutableCopy(v19, 0, theString);
  v37 = v23;
  v47.length = CFStringGetLength(v23);
  v47.location = 0;
  CFStringFindAndReplace(v23, @"%@", @"www.apple.com/legal/rfexposure/", v47, 0);
  memset(&v45, 0, sizeof(v45));
  ctu::cf::assign();
  v36 = v45;
  v24 = std::string::append(&v36, "\n\n", 2uLL);
  v25 = *&v24->__r_.__value_.__l.__data_;
  v44.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
  *&v44.__r_.__value_.__l.__data_ = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  memset(&v45, 0, sizeof(v45));
  ctu::cf::assign();
  __p = v45;
  if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v27 = __p.__r_.__value_.__l.__size_;
  }

  v28 = std::string::append(&v44, p_p, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v34 = v28->__r_.__value_.__r.__words[2];
  *v33 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  ctu::SharedRef<__CFString,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString>::~SharedRef(&v37);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&theString);
  ctu::SharedRef<__CFString,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString>::~SharedRef(&v39);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v43);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v41);
  if ((v18 & 1) == 0)
  {
    goto LABEL_45;
  }

LABEL_46:
  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (v34 >= 0)
  {
    v30 = HIBYTE(v34);
  }

  else
  {
    v30 = v33[1];
  }

  if (v30)
  {
    (*(**a3 + 56))(*a3);
    (*(**a3 + 72))(*a3, 1, 0, v33, a4);
    (*(**a3 + 48))(*a3);
  }

  else
  {
    v31 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v45.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_2373EA000, v31, OS_LOG_TYPE_DEFAULT, "#I Can't process SAR command *#07# as USSD notification. Empty RF message", &v45, 2u);
    }
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  return v30 != 0;
}

void sub_23741C508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, void *__p, uint64_t a39, int a40, __int16 a41, char a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef((v52 - 152));
  if (*(v52 - 121) < 0)
  {
    operator delete(*(v52 - 144));
  }

  if (a43 < 0)
  {
    operator delete(__p);
  }

  if ((v51 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  _Unwind_Resume(a1);
}

const void **ctu::SharedRef<__CFString,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void TMClientInfo::~TMClientInfo(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void TMRouterServiceInfo::~TMRouterServiceInfo(char **this)
{
  std::__tree<std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>>>::destroy(this[1]);
}

{
  std::__tree<std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>>>::destroy(this[1]);
}

void std::__tree<std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,TMRouterServiceInfo::State>>>::destroy(*(a1 + 1));
    std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(*(a1 + 34));
    if (a1[255] < 0)
    {
      operator delete(*(a1 + 29));
    }

    if (a1[223] < 0)
    {
      operator delete(*(a1 + 25));
    }

    if (a1[199] < 0)
    {
      operator delete(*(a1 + 22));
    }

    if (a1[175] < 0)
    {
      operator delete(*(a1 + 19));
    }

    if (a1[151] < 0)
    {
      operator delete(*(a1 + 16));
    }

    if (a1[119] < 0)
    {
      operator delete(*(a1 + 12));
    }

    if (a1[95] < 0)
    {
      operator delete(*(a1 + 9));
    }

    if (a1[71] < 0)
    {
      operator delete(*(a1 + 6));
    }

    operator delete(a1);
  }
}

const void **CarrierEntitlements::setServiceToken(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = 0;
  v8 = *MEMORY[0x277CBECE8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v10 = v30;
    v30 = Mutable;
    valuePtr.__r_.__value_.__r.__words[0] = v10;
    ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&valuePtr.__r_.__value_.__l.__data_);
  }

  v11 = v30;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v32, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v32 = __p;
  }

  v31 = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&valuePtr, v32.__r_.__value_.__l.__data_, v32.__r_.__value_.__l.__size_);
  }

  else
  {
    valuePtr = v32;
  }

  v34 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v31;
    v31 = v34;
    v35 = v12;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v35);
  }

  if (SHIBYTE(valuePtr.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(valuePtr.__r_.__value_.__l.__data_);
  }

  value = v31;
  v31 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v31);
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  CFDictionarySetValue(v11, @"token", value);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&value);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(a4 + 8) == 1)
  {
    v13 = v30;
    v14 = *a4;
    v32.__r_.__value_.__r.__words[0] = 0;
    valuePtr.__r_.__value_.__r.__words[0] = v14;
    v15 = CFNumberCreate(v8, kCFNumberLongLongType, &valuePtr);
    if (v15)
    {
      v32.__r_.__value_.__r.__words[0] = v15;
      valuePtr.__r_.__value_.__r.__words[0] = 0;
      ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&valuePtr.__r_.__value_.__l.__data_);
      v16 = v32.__r_.__value_.__r.__words[0];
    }

    else
    {
      v16 = 0;
    }

    v35 = v16;
    v32.__r_.__value_.__r.__words[0] = 0;
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v32.__r_.__value_.__l.__data_);
    CFDictionarySetValue(v13, @"type", v16);
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v35);
  }

  v17 = *a1;
  Registry::throwIfNotInitialized(v17);
  v18 = *(v17 + 24);
  v19 = off_284A69B18;
  if ((off_284A69B18 & 0x8000000000000000) != 0)
  {
    v20 = (off_284A69B18 & 0x7FFFFFFFFFFFFFFFLL);
    v21 = 5381;
    do
    {
      v19 = v21;
      v22 = *v20++;
      v21 = (33 * v21) ^ v22;
    }

    while (v22);
  }

  std::mutex::lock(v18 + 3);
  valuePtr.__r_.__value_.__r.__words[0] = v19;
  v23 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v18[4].__m_.__sig, &valuePtr);
  if (v23)
  {
    v25 = v23[3];
    v24 = v23[4];
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v18 + 3);
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v24);
      v26 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v25 = 0;
  }

  std::mutex::unlock(v18 + 3);
  v24 = 0;
  v26 = 1;
LABEL_33:
  (*(*v25 + 16))(v25, a2, @"service_token", v30, @"CarrierEntitlements", 0, 4, 0);
  if ((v26 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v30);
}

void sub_23741CF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&a17);
  _Unwind_Resume(a1);
}

void CarrierEntitlements::setSubscriberId(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v6 = *(v5 + 24);
  v7 = off_284A69B18;
  if ((off_284A69B18 & 0x8000000000000000) != 0)
  {
    v8 = (off_284A69B18 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(v6 + 3);
  v22.__r_.__value_.__r.__words[0] = v7;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v6[4].__m_.__sig, &v22);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6 + 3);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6 + 3);
  v12 = 0;
  v14 = 1;
LABEL_9:
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = __p;
  }

  v20 = 0;
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v21.__r_.__value_.__l.__data_, v21.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v21;
  }

  v23 = 0;
  v15 = *MEMORY[0x277CBECE8];
  if (ctu::cf::convert_copy())
  {
    v16 = v20;
    v20 = v23;
    v24 = v16;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v24);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  v17 = v20;
  v19 = v20;
  v20 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v20);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  (*(*v13 + 16))(v13, a2, @"subscriber_id", v17, @"CarrierEntitlements", 0, 4, 0);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v19);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (v14)
    {
      return;
    }
  }

  else if (v14)
  {
    return;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
}

void sub_23741D210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if ((v32 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v31);
  }

  _Unwind_Resume(a1);
}

void CarrierEntitlements::setTransferTargetSlot(uint64_t *a1, uint64_t a2, int a3)
{
  v5 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v6 = *(v5 + 24);
  v7 = off_284A69B18;
  if ((off_284A69B18 & 0x8000000000000000) != 0)
  {
    v8 = (off_284A69B18 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(v6 + 3);
  valuePtr = v7;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v6[4].__m_.__sig, &valuePtr);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6 + 3);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6 + 3);
  v12 = 0;
  v14 = 1;
LABEL_9:
  v19 = 0;
  v15 = *MEMORY[0x277CBECE8];
  LODWORD(valuePtr) = a3;
  v16 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
  if (v16)
  {
    v19 = v16;
    valuePtr = 0;
    ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&valuePtr);
    v17 = v19;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17;
  v19 = 0;
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v19);
  (*(*v13 + 16))(v13, a2, @"transfer_target_slot", v17, @"CarrierEntitlements", 0, 1, 0);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(&v18);
  if ((v14 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_23741D414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFNumber const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFNumber const>::~SharedRef(va);
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  _Unwind_Resume(a1);
}

BOOL CurrentLanguage::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v9 = *(v7 + 47);
  if (v9 >= 0)
  {
    v10 = *(v7 + 47);
  }

  else
  {
    v10 = v7[4];
  }

  v11 = *(v6 + 47);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[4];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v15 = v7[3];
  v14 = v7 + 3;
  v13 = v15;
  if (v9 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  v19 = v6[3];
  v18 = v6 + 3;
  v17 = v19;
  if (v12 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  return memcmp(v16, v20, v10) == 0;
}

void sub_23741D894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23741DC78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x2383CBE70](v9 + 128);
  _Unwind_Resume(a1);
}

uint64_t RoamingInterface::isInHomeCountry(RoamingInterface *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  v9 = 0;
  v8[0] = &unk_284A67070;
  v8[1] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v8[2] = &v7;
  v9 = v8;
  (*(*this + 32))(this, 1, v8);
  std::__function::__value_func<void ()(CTError,BOOL)>::~__value_func[abi:ne200100](v8);
  if (v3)
  {
    dispatch_release(v3);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v7;
    dispatch_release(v3);
  }

  else
  {
    dispatch_semaphore_wait(0, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v7;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4 & 1;
}

void sub_23741DDFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(CTError,BOOL)>::~__value_func[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t RoamingInterface::isInHomeCountry(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A67100;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 32))(a1, 1, v6);
  result = std::__function::__value_func<void ()(CTError,BOOL)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23741DEE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(CTError,BOOL)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t RoamingInterface::setDataRoamingSetting(RoamingInterface *this, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v4[0] = &unk_284A67180;
  v4[3] = v4;
  (*(*this + 56))(this, 1, a2, v4);
  result = std::__function::__value_func<void ()(CTError)>::~__value_func[abi:ne200100](v4);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23741DFC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(CTError)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<RoamingInterface::isInHomeCountry(void)::$_0,std::allocator<RoamingInterface::isInHomeCountry(void)::$_0>,void ()(CTError,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A67070;
  v2 = a1[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<RoamingInterface::isInHomeCountry(void)::$_0,std::allocator<RoamingInterface::isInHomeCountry(void)::$_0>,void ()(CTError,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A67070;
  v1 = a1[1];
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__function::__func<RoamingInterface::isInHomeCountry(void)::$_0,std::allocator<RoamingInterface::isInHomeCountry(void)::$_0>,void ()(CTError,BOOL)>::__clone(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_284A67070;
  a2[1] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  a2[2] = *(a1 + 16);
}

void std::__function::__func<RoamingInterface::isInHomeCountry(void)::$_0,std::allocator<RoamingInterface::isInHomeCountry(void)::$_0>,void ()(CTError,BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<RoamingInterface::isInHomeCountry(void)::$_0,std::allocator<RoamingInterface::isInHomeCountry(void)::$_0>,void ()(CTError,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

intptr_t std::__function::__func<RoamingInterface::isInHomeCountry(void)::$_0,std::allocator<RoamingInterface::isInHomeCountry(void)::$_0>,void ()(CTError,BOOL)>::operator()(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v4 = a1 + 8;
  v3 = *(a1 + 8);
  **(v4 + 8) = *a3;
  return dispatch_semaphore_signal(v3);
}

uint64_t std::__function::__func<RoamingInterface::isInHomeCountry(void)::$_0,std::allocator<RoamingInterface::isInHomeCountry(void)::$_0>,void ()(CTError,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(CTError,BOOL)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__func<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0,std::allocator<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0>,void ()(CTError,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A67100;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0,std::allocator<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0>,void ()(CTError,BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A67100;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0,std::allocator<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0>,void ()(CTError,BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A67100;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0,std::allocator<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0>,void ()(CTError,BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0,std::allocator<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0>,void ()(CTError,BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0,std::allocator<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0>,void ()(CTError,BOOL)>::operator()(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v5 = xpc_BOOL_create(*a3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  v4[0] = *(a1 + 8);
  v4[1] = "kRegistrationIsInHomeCountry";
  xpc::dict::object_proxy::operator=(v4, &v5, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v5);
}

uint64_t std::__function::__func<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0,std::allocator<RoamingInterface::isInHomeCountry(xpc::auto_reply)::$_0>,void ()(CTError,BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RoamingInterface::setDataRoamingSetting(BOOL)::$_0,std::allocator<RoamingInterface::setDataRoamingSetting(BOOL)::$_0>,void ()(CTError)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(CTError)>::~__value_func[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::vector<unsigned char>::~vector[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sSupportsPartialActiveProfiles(capabilities::euicc *a1)
{
  result = capabilities::euicc::supportsPartialActive(a1);
  if (result)
  {

    return MEMORY[0x282203478]("CoreTelephony", "eSIMTravelMode");
  }

  return result;
}

void sVinylProfileIdAsString(ctu *a1@<X0>, char *a2@<X8>)
{
  if (*a1 == 0)
  {
    a2[23] = 15;
    strcpy(a2, "ProfileId(none)");
  }

  else
  {
    ctu::hex(a1, 0x10);
    v3 = std::string::insert(&v6, 0, "ProfileId(", 0xAuLL);
    v4 = *&v3->__r_.__value_.__l.__data_;
    v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
    *&v7.__r_.__value_.__l.__data_ = v4;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    v5 = std::string::append(&v7, ")", 1uLL);
    *a2 = *v5;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v6.__r_.__value_.__l.__data_);
    }
  }
}

void sub_23741E830(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sVinylUniversalProfileIdAsString(ctu *a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + 40) == 1)
  {
    std::operator+<char>();
    v3 = std::string::append(&v4, ")", 1uLL);
    *a2 = *v3;
    v3->__r_.__value_.__l.__size_ = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
    v3->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v4.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    sVinylProfileIdAsString(a1, a2);
  }
}

void sub_23741E910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sCardSerialNumberAsString(ctu *a1@<X0>, std::string *a2@<X8>)
{
  ctu::hex(a1, 0x10);
  v3 = std::string::insert(&v6, 0, "CSN(", 4uLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, ")", 1uLL);
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_23741E9DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

void sVinylReceiptIdAsString(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  ctu::hex(*a1, (*(a1 + 8) - *a1));
  v3 = std::string::insert(&v6, 0, "ReceiptId(", 0xAuLL);
  v4 = *&v3->__r_.__value_.__l.__data_;
  v7.__r_.__value_.__r.__words[2] = v3->__r_.__value_.__r.__words[2];
  *&v7.__r_.__value_.__l.__data_ = v4;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  v5 = std::string::append(&v7, ")", 1uLL);
  *a2 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_23741EAC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
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

BOOL VinylProfileDetails::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a1 + 39);
  if (v6 >= 0)
  {
    v7 = *(a1 + 39);
  }

  else
  {
    v7 = *(a1 + 24);
  }

  v8 = *(a2 + 39);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 24);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = (a2 + 16);
  v11 = v6 >= 0 ? (a1 + 16) : *(a1 + 16);
  v12 = *v10;
  v13 = (v9 >= 0 ? a2 + 16 : *v10);
  if (memcmp(v11, v13, v7))
  {
    return 0;
  }

  v14 = *(a1 + 63);
  if (v14 >= 0)
  {
    v15 = *(a1 + 63);
  }

  else
  {
    v15 = *(a1 + 48);
  }

  v16 = *(a2 + 63);
  v17 = v16;
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a2 + 48);
  }

  if (v15 != v16)
  {
    return 0;
  }

  v18 = (a2 + 40);
  v19 = v14 >= 0 ? (a1 + 40) : *(a1 + 40);
  v20 = *v18;
  v21 = (v17 >= 0 ? a2 + 40 : *v18);
  if (memcmp(v19, v21, v15))
  {
    return 0;
  }

  v22 = *(a1 + 87);
  if (v22 >= 0)
  {
    v23 = *(a1 + 87);
  }

  else
  {
    v23 = *(a1 + 72);
  }

  v24 = *(a2 + 87);
  v25 = v24;
  if ((v24 & 0x80u) != 0)
  {
    v24 = *(a2 + 72);
  }

  if (v23 != v24)
  {
    return 0;
  }

  v26 = (a2 + 64);
  v27 = v22 >= 0 ? (a1 + 64) : *(a1 + 64);
  v28 = *v26;
  v29 = (v25 >= 0 ? a2 + 64 : *v26);
  if (memcmp(v27, v29, v23) || *(a1 + 89) != *(a2 + 89) || *(a1 + 90) != *(a2 + 90) || *(a1 + 88) != *(a2 + 88) || *(a1 + 91) != *(a2 + 91) || *(a1 + 92) != *(a2 + 92))
  {
    return 0;
  }

  v30 = *(a1 + 119);
  if (v30 >= 0)
  {
    v31 = *(a1 + 119);
  }

  else
  {
    v31 = *(a1 + 104);
  }

  v32 = *(a2 + 119);
  v33 = v32;
  if ((v32 & 0x80u) != 0)
  {
    v32 = *(a2 + 104);
  }

  if (v31 != v32)
  {
    return 0;
  }

  v34 = (a2 + 96);
  v35 = v30 >= 0 ? (a1 + 96) : *(a1 + 96);
  v36 = *v34;
  v37 = (v33 >= 0 ? a2 + 96 : *v34);
  if (memcmp(v35, v37, v31))
  {
    return 0;
  }

  v38 = *(a1 + 143);
  if (v38 >= 0)
  {
    v39 = *(a1 + 143);
  }

  else
  {
    v39 = *(a1 + 128);
  }

  v40 = *(a2 + 143);
  v41 = v40;
  if ((v40 & 0x80u) != 0)
  {
    v40 = *(a2 + 128);
  }

  if (v39 != v40)
  {
    return 0;
  }

  v42 = (a2 + 120);
  v43 = v38 >= 0 ? (a1 + 120) : *(a1 + 120);
  v44 = *v42;
  v45 = (v41 >= 0 ? a2 + 120 : *v42);
  if (memcmp(v43, v45, v39))
  {
    return 0;
  }

  v46 = *(a1 + 167);
  if (v46 >= 0)
  {
    v47 = *(a1 + 167);
  }

  else
  {
    v47 = *(a1 + 152);
  }

  v48 = *(a2 + 167);
  v49 = v48;
  if ((v48 & 0x80u) != 0)
  {
    v48 = *(a2 + 152);
  }

  if (v47 != v48)
  {
    return 0;
  }

  v50 = (a2 + 144);
  v51 = v46 >= 0 ? (a1 + 144) : *(a1 + 144);
  v52 = *v50;
  v53 = (v49 >= 0 ? a2 + 144 : *v50);
  if (memcmp(v51, v53, v47))
  {
    return 0;
  }

  v54 = *(a1 + 191);
  if (v54 >= 0)
  {
    v55 = *(a1 + 191);
  }

  else
  {
    v55 = *(a1 + 176);
  }

  v56 = *(a2 + 191);
  v57 = v56;
  if ((v56 & 0x80u) != 0)
  {
    v56 = *(a2 + 176);
  }

  if (v55 != v56)
  {
    return 0;
  }

  v58 = (a2 + 168);
  v59 = v54 >= 0 ? (a1 + 168) : *(a1 + 168);
  v60 = *v58;
  v61 = (v57 >= 0 ? a2 + 168 : *v58);
  if (memcmp(v59, v61, v55))
  {
    return 0;
  }

  v62 = *(a1 + 215);
  if (v62 >= 0)
  {
    v63 = *(a1 + 215);
  }

  else
  {
    v63 = *(a1 + 200);
  }

  v64 = *(a2 + 215);
  v65 = v64;
  if ((v64 & 0x80u) != 0)
  {
    v64 = *(a2 + 200);
  }

  if (v63 != v64)
  {
    return 0;
  }

  v66 = (a2 + 192);
  if (v62 >= 0)
  {
    v67 = (a1 + 192);
  }

  else
  {
    v67 = *(a1 + 192);
  }

  v68 = *v66;
  if (v65 >= 0)
  {
    v69 = (a2 + 192);
  }

  else
  {
    v69 = *v66;
  }

  return memcmp(v67, v69, v63) == 0;
}

const void **VinylProfileDetails::createCarrierBundleCriteria@<X0>(VinylProfileDetails *this@<X0>, void *a2@<X8>)
{
  *v23 = 0;
  if ((*(this + 119) & 0x8000000000000000) != 0)
  {
    if (!*(this + 13))
    {
      goto LABEL_94;
    }
  }

  else if (!*(this + 119))
  {
    goto LABEL_94;
  }

  if ((*(this + 143) & 0x8000000000000000) != 0)
  {
    if (!*(this + 16))
    {
      goto LABEL_94;
    }
  }

  else if (!*(this + 143))
  {
    goto LABEL_94;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = *v23;
    *v23 = Mutable;
    v26.__r_.__value_.__r.__words[0] = v5;
    ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&v26.__r_.__value_.__l.__data_);
  }

  if (*(this + 119) >= 0)
  {
    v6 = *(this + 119);
  }

  else
  {
    v6 = *(this + 13);
  }

  if (*(this + 143) >= 0)
  {
    v7 = *(this + 143);
  }

  else
  {
    v7 = *(this + 16);
  }

  memset(&__p, 0, sizeof(__p));
  p_p = &__p;
  std::string::basic_string[abi:ne200100](&__p, v7 + v6);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(this + 119) >= 0)
    {
      v9 = this + 96;
    }

    else
    {
      v9 = *(this + 12);
    }

    memmove(p_p, v9, v6);
  }

  v10 = p_p + v6;
  if (v7)
  {
    if (*(this + 143) >= 0)
    {
      v11 = this + 120;
    }

    else
    {
      v11 = *(this + 15);
    }

    memmove(v10, v11, v7);
  }

  v10[v7] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = __p;
  }

  v24 = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v25;
  }

  v27 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v24;
    v24 = v27;
    v28 = v12;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v28);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v22 = v24;
  v24 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v24);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  ctu::cf::insert<__CFString const*,__CFString const*>(*v23, @"InternationalMobileSubscriberIdentity", v22);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (*(this + 167) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *(this + 18), *(this + 19));
  }

  else
  {
    v20 = *(this + 6);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v20;
  }

  v24 = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v25;
  }

  v27 = 0;
  if (ctu::cf::convert_copy())
  {
    v13 = v24;
    v24 = v27;
    v28 = v13;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v28);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v22 = v24;
  v24 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v24);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  ctu::cf::insert<__CFString const*,__CFString const*>(*v23, @"GID1", v22);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v22);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (*(this + 191) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *(this + 21), *(this + 22));
  }

  else
  {
    v19 = *(this + 7);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v19;
  }

  v24 = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v25;
  }

  v27 = 0;
  if (ctu::cf::convert_copy())
  {
    v14 = v24;
    v24 = v27;
    v28 = v14;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v28);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v22 = v24;
  v24 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v24);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  ctu::cf::insert<__CFString const*,__CFString const*>(*v23, @"GID2", v22);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v22);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (*(this + 39) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, *(this + 2), *(this + 3));
  }

  else
  {
    v18 = *(this + 16);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
  }

  else
  {
    v25 = v18;
  }

  v24 = 0;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
  }

  else
  {
    v26 = v25;
  }

  v27 = 0;
  if (ctu::cf::convert_copy())
  {
    v15 = v24;
    v24 = v27;
    v28 = v15;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v28);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v16 = v24;
  v22 = v24;
  v24 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v24);
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  ctu::cf::insert<__CFString const*,__CFString const*>(*v23, @"IntegratedCircuitCardIdentity", v16);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v22);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

LABEL_94:
  ctu::cf::CFSharedRef<__CFDictionary const>::CFSharedRef<__CFDictionary,void>(a2, v23);
  return ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(v23);
}

void sub_23741F41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36, int a37, const void *a38, const void *a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a39);
  if (a45 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  ctu::SharedRef<__CFDictionary,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary>::~SharedRef(&a38);
  _Unwind_Resume(a1);
}

uint64_t VinylInfo::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) != *(a2 + 4) || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12))
  {
    return 0;
  }

  if (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 55);
  if (v5 >= 0)
  {
    v6 = *(a1 + 55);
  }

  else
  {
    v6 = *(a1 + 40);
  }

  v7 = *(a2 + 55);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 40);
  }

  if (v6 != v7)
  {
    return 0;
  }

  v9 = v5 >= 0 ? (a1 + 32) : *(a1 + 32);
  v10 = v8 >= 0 ? (a2 + 32) : *(a2 + 32);
  if (memcmp(v9, v10, v6))
  {
    return 0;
  }

  if (*(a1 + 80) != 1)
  {
    return *(a2 + 80) ^ 1u;
  }

  if (!*(a2 + 80))
  {
    return 0;
  }

  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a2 + 56);
  if (v13 - v12 != *(a2 + 64) - v14)
  {
    return 0;
  }

  if (v12 == v13)
  {
    return 1;
  }

  do
  {
    result = VinylProfileDetails::operator==(v12, v14);
    if (!result)
    {
      break;
    }

    v12 += 216;
    v14 += 216;
  }

  while (v12 != v13);
  return result;
}

void VinylInfo::getActiveUserProfile(VinylInfo *this@<X0>, std::string *a2@<X8>)
{
  if ((*(this + 80) & 1) == 0)
  {
    goto LABEL_10;
  }

  v2 = *(this + 7);
  v3 = *(this + 8);
  if (v2 != v3)
  {
    while ((*(v2 + 89) & 1) != 0 || (*(v2 + 90) & 1) == 0)
    {
      v2 += 216;
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }
  }

  if (v2 == v3)
  {
LABEL_10:
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }

  else if (*(v2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(v2 + 16), *(v2 + 24));
  }

  else
  {
    v4 = *(v2 + 16);
    a2->__r_.__value_.__r.__words[2] = *(v2 + 32);
    *&a2->__r_.__value_.__l.__data_ = v4;
  }
}

void sGetProfileDetails(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
LABEL_4:
    *a3 = 0;
    *(a3 + 216) = 0;
  }

  else
  {
    while (1)
    {
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      VinylInfo::findProfile(v4, a2, a3);
      if (*(a3 + 216))
      {
        break;
      }

      v4 += 88;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }
  }
}

void VinylInfo::findProfile(uint64_t a1@<X0>, uint64_t a2@<X1>, VinylProfileDetails *a3@<X8>)
{
  if ((*(a1 + 80) & 1) == 0)
  {
    goto LABEL_25;
  }

  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v5 != v6)
  {
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    while (1)
    {
      v10 = *(v5 + 39);
      v11 = v10;
      if ((v10 & 0x80u) != 0)
      {
        v10 = *(v5 + 24);
      }

      if (v10 == size)
      {
        v12 = v11 >= 0 ? (v5 + 16) : *(v5 + 16);
        if (!memcmp(v12, p_p, size))
        {
          break;
        }
      }

      v5 += 216;
      if (v5 == v6)
      {
        v5 = v6;
        break;
      }
    }
  }

  if (v7 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v5 == *(a1 + 64))
  {
LABEL_25:
    *a3 = 0;
    *(a3 + 216) = 0;
  }

  else
  {
    VinylProfileDetails::VinylProfileDetails(a3, v5);
    *(a3 + 216) = 1;
  }
}

uint64_t sIsProfileInstalled(uint64_t *a1, uint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
LABEL_4:
    result = 0;
  }

  else
  {
    while (1)
    {
      v8 = 0u;
      memset(v7, 0, sizeof(v7));
      VinylInfo::findProfile(v2, a2, v7);
      if (BYTE8(v8) == 1)
      {
        break;
      }

      v2 += 88;
      if (v2 == v3)
      {
        goto LABEL_4;
      }
    }

    VinylProfileDetails::~VinylProfileDetails(v7);
    result = 1;
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sIsAnyUserProfileActive(VinylInfo **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  do
  {
    VinylInfo::getActiveUserProfile(v1, &v6);
    size = SHIBYTE(v6.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v6.__r_.__value_.__l.__size_;
      operator delete(v6.__r_.__value_.__l.__data_);
    }

    result = size != 0;
    v1 = (v1 + 88);
    if (size)
    {
      v5 = 1;
    }

    else
    {
      v5 = v1 == v2;
    }
  }

  while (!v5);
  return result;
}

uint64_t sIsProfileActive(uint64_t *a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = a1[1];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  while (1)
  {
    if (v2 == v3)
    {
      v5 = 0;
      goto LABEL_10;
    }

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    memset(v9, 0, sizeof(v9));
    VinylInfo::findProfile(v2, &__p, v9);
    if (BYTE8(v18))
    {
      v4 = BYTE10(v10);
      VinylProfileDetails::~VinylProfileDetails(v9);
      if (v4)
      {
        break;
      }
    }

    v2 += 88;
  }

  v5 = 1;
LABEL_10:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t VinylSlotIdToInt(int a1)
{
  if (a1 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = -1;
  }

  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return v1;
  }
}

uint64_t VinylSlotIdFromInt(int a1)
{
  if (a1 == 2)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t VinylSlotIdToInt(uint64_t result)
{
  if (result >= 3)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t VinylSlotIdFromCapabilities(int a1)
{
  if (a1 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (a1 == 2);
  }
}

BOOL RemoteVinylInfo::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  if (*(v7 + 24) != *(v6 + 24))
  {
    return 0;
  }

  if (*(v7 + 7) != *(v6 + 7))
  {
    return 0;
  }

  if (*(v7 + 14) != *(v6 + 14))
  {
    return 0;
  }

  v9 = v7[4];
  v10 = v7[5];
  v12 = v6[4];
  v11 = v6[5];
  if (v10 - v9 != v11 - v12)
  {
    return 0;
  }

  if (v9 != v10)
  {
    if (v12 != v11)
    {
      while (1)
      {
        v13 = v12;
        while ((VinylInfo::operator==(v13, v9) & 1) == 0)
        {
          result = 0;
          v13 += 88;
          if (v13 == v11)
          {
            return result;
          }
        }

        if (v13 == v11)
        {
          break;
        }

        v9 += 88;
        if (v9 == v10)
        {
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

LABEL_24:
  v15 = *(v6 + 61);
  v16 = *(v7 + 61);
  v17 = v16 == v15;
  v18 = v16 != v15;
  if (v17)
  {
    if (*(v7 + 61))
    {
      v18 = *(v7 + 60) != *(v6 + 60);
    }
  }

  return !v18;
}

BOOL RemoteVinylInfo::isMatchingDevice(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2 == *(a1 + 40))
  {
    return 0;
  }

  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  return v4 == *a2 && v3 == a2[1];
}

uint64_t RemoteVinylInfo::hasProfileInfoChanged(void *a1, void *a2)
{
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  v8 = *(a2 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = a2[1];
  }

  if (v7 != v8)
  {
    return 1;
  }

  v23 = v5;
  v24 = v4;
  v25 = v2;
  v26 = v3;
  v10 = a2;
  v11 = a1;
  if (v6 < 0)
  {
    a1 = *a1;
  }

  v12 = *a2;
  if (v9 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v7))
  {
    return 1;
  }

  v14 = v11[4];
  v13 = v11[5];
  v15 = v10[5];
  if (v13 - v14 != v15 - v10[4])
  {
    return 1;
  }

  if (v14 != v13)
  {
    v16 = MEMORY[0x277D85DD0];
    while (1)
    {
      v17 = v10[4];
      v19[0] = v16;
      v19[1] = 0x40000000;
      v20 = ___ZNK15RemoteVinylInfo21hasProfileInfoChangedERKS__block_invoke;
      v21 = &__block_descriptor_tmp;
      v22 = v14;
      if (v17 != v15)
      {
        while (((v20)(v19, v17) & 1) == 0)
        {
          v17 += 88;
          if (v17 == v15)
          {
            v17 = v15;
            break;
          }
        }

        v15 = v10[5];
      }

      if (v17 == v15)
      {
        return 1;
      }

      if (*(v14 + 80) == 1)
      {
        if (!*(v17 + 80) || *(v14 + 64) - *(v14 + 56) != *(v17 + 64) - *(v17 + 56))
        {
          return 1;
        }
      }

      else if (*(v17 + 80))
      {
        return 1;
      }

      result = 0;
      v14 += 88;
      if (v14 == v13)
      {
        return result;
      }
    }
  }

  return 0;
}

BOOL ___ZNK15RemoteVinylInfo21hasProfileInfoChangedERKS__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  return v4 == *(a2 + 16) && v3 == *(a2 + 24);
}

void VinylInfo::findProfileWithPrefix(uint64_t a1@<X0>, uint64_t a2@<X1>, VinylProfileDetails *a3@<X8>)
{
  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 8);
  }

  if (!v4 || (*(a1 + 80) & 1) == 0)
  {
    goto LABEL_39;
  }

  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  if (v5 < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a2, *(a2 + 8));
  }

  else
  {
    v22 = *a2;
  }

  v9 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
  if (v7 != v8)
  {
    v10 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v22 : v22.__r_.__value_.__r.__words[0];
    v11 = (v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v22.__r_.__value_.__r.__words[2]) : v22.__r_.__value_.__l.__size_;
    if (v11)
    {
      v21 = HIBYTE(v22.__r_.__value_.__r.__words[2]);
      do
      {
        v12 = *(v7 + 39);
        if (v12 >= 0)
        {
          v13 = (v7 + 16);
        }

        else
        {
          v13 = *(v7 + 16);
        }

        if (v12 >= 0)
        {
          v14 = *(v7 + 39);
        }

        else
        {
          v14 = *(v7 + 24);
        }

        if (v14 >= v11)
        {
          v15 = &v13[v14];
          v16 = v10->__r_.__value_.__s.__data_[0];
          v17 = v13;
          do
          {
            v18 = v14 - v11;
            if (v18 == -1)
            {
              break;
            }

            v19 = memchr(v17, v16, v18 + 1);
            if (!v19)
            {
              break;
            }

            v20 = v19;
            if (!memcmp(v19, v10, v11))
            {
              if (v20 == v15 || v20 - v13 == -1)
              {
                break;
              }

              goto LABEL_34;
            }

            v17 = v20 + 1;
            v14 = v15 - (v20 + 1);
          }

          while (v14 >= v11);
        }

        v7 += 216;
      }

      while (v7 != v8);
      v7 = v8;
LABEL_34:
      v9 = v21;
    }
  }

  if (v9 < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v7 != *(a1 + 64))
  {
    VinylProfileDetails::VinylProfileDetails(a3, v7);
    *(a3 + 216) = 1;
  }

  else
  {
LABEL_39:
    *a3 = 0;
    *(a3 + 216) = 0;
  }
}

void RemoteVinylInfo::findProfile(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4 == v5)
  {
LABEL_4:
    *a3 = 0;
    *(a3 + 216) = 0;
  }

  else
  {
    while (1)
    {
      *(a3 + 192) = 0u;
      *(a3 + 208) = 0u;
      *(a3 + 160) = 0u;
      *(a3 + 176) = 0u;
      *(a3 + 128) = 0u;
      *(a3 + 144) = 0u;
      *(a3 + 96) = 0u;
      *(a3 + 112) = 0u;
      *(a3 + 64) = 0u;
      *(a3 + 80) = 0u;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      VinylInfo::findProfile(v4, a2, a3);
      if (*(a3 + 216))
      {
        break;
      }

      v4 += 88;
      if (v4 == v5)
      {
        goto LABEL_4;
      }
    }
  }
}

const char *asString(_DWORD *a1)
{
  v1 = "kNone";
  if (*a1 == 2)
  {
    v1 = "kTape";
  }

  if (*a1 == 1)
  {
    return "kVinyl";
  }

  else
  {
    return v1;
  }
}

{
  v1 = *a1 - 1;
  if (v1 > 2)
  {
    return "kUnknown";
  }

  else
  {
    return off_278A2F6B8[v1];
  }
}

void sub_237420358(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
}

void VinylProfileDetails::VinylProfileDetails(VinylProfileDetails *this, const VinylProfileDetails *a2)
{
  *this = *a2;
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *(a2 + 2), *(a2 + 3));
  }

  else
  {
    v4 = *(a2 + 1);
    *(this + 4) = *(a2 + 4);
    *(this + 1) = v4;
  }

  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *(a2 + 5), *(a2 + 6));
  }

  else
  {
    v5 = *(a2 + 40);
    *(this + 7) = *(a2 + 7);
    *(this + 40) = v5;
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((this + 64), *(a2 + 8), *(a2 + 9));
  }

  else
  {
    v6 = *(a2 + 4);
    *(this + 10) = *(a2 + 10);
    *(this + 4) = v6;
  }

  v7 = *(a2 + 22);
  *(this + 92) = *(a2 + 92);
  *(this + 22) = v7;
  if (*(a2 + 119) < 0)
  {
    std::string::__init_copy_ctor_external(this + 4, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = *(a2 + 6);
    *(this + 14) = *(a2 + 14);
    *(this + 6) = v8;
  }

  if (*(a2 + 143) < 0)
  {
    std::string::__init_copy_ctor_external(this + 5, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(this + 17) = *(a2 + 17);
    *(this + 120) = v9;
  }

  if (*(a2 + 167) < 0)
  {
    std::string::__init_copy_ctor_external(this + 6, *(a2 + 18), *(a2 + 19));
  }

  else
  {
    v10 = *(a2 + 9);
    *(this + 20) = *(a2 + 20);
    *(this + 9) = v10;
  }

  if (*(a2 + 191) < 0)
  {
    std::string::__init_copy_ctor_external(this + 7, *(a2 + 21), *(a2 + 22));
  }

  else
  {
    v11 = *(a2 + 168);
    *(this + 23) = *(a2 + 23);
    *(this + 168) = v11;
  }

  if (*(a2 + 215) < 0)
  {
    std::string::__init_copy_ctor_external(this + 8, *(a2 + 24), *(a2 + 25));
  }

  else
  {
    v12 = *(a2 + 12);
    *(this + 26) = *(a2 + 26);
    *(this + 12) = v12;
  }
}

void sub_237420544(_Unwind_Exception *exception_object)
{
  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void _GLOBAL__sub_I_VinylDefinitions_cpp()
{
  v0 = *MEMORY[0x277D85DE8];
  qword_280CE85E0 = 0;
  unk_280CE85E8 = 0;
  kGsmaEuiccCiPkValue = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>();
}

void ServiceStage::ServiceStage(ServiceStage *this, group *a2, group *a3, group *a4)
{
  gr_name = a2->gr_name;
  *this = a2->gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    if (*this)
    {
      dispatch_group_enter(*this);
    }
  }

  v8 = a3->gr_name;
  *(this + 1) = a3->gr_name;
  if (v8)
  {
    dispatch_retain(v8);
    v9 = *(this + 1);
    if (v9)
    {
      dispatch_group_enter(v9);
    }
  }

  v10 = a4->gr_name;
  *(this + 2) = a4->gr_name;
  if (v10)
  {
    dispatch_retain(v10);
    v11 = *(this + 2);
    if (v11)
    {
      dispatch_group_enter(v11);
    }
  }
}

void ServiceStage::holdOffStage(NSObject **this@<X0>, NSObject **a2@<X8>)
{
  v2 = *this;
  *a2 = *this;
  if (v2)
  {
    dispatch_retain(v2);

    dispatch_group_enter(v2);
  }
}

void ServiceStage::notifyStageDone(ServiceStage *this@<X0>, NSObject **a2@<X8>)
{
  v2 = *(this + 2);
  *a2 = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void ServiceStage::scheduleAction(uint64_t a1, NSObject **a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  if (v6)
  {
    dispatch_retain(*(a1 + 16));
    dispatch_group_enter(v6);
  }

  v7 = *(a1 + 8);
  v8 = *a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZNK12ServiceStage14scheduleActionERKN8dispatch5queueEU13block_pointerFvvE_block_invoke;
  v9[3] = &unk_284A67390;
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  v9[4] = a3;
  dispatch_group_notify(v7, v8, v9);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }
}

{
  v6 = *(a1 + 16);
  if (v6)
  {
    dispatch_retain(*(a1 + 16));
    dispatch_group_enter(v6);
  }

  v7 = *(a1 + 8);
  v8 = *a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZNK12ServiceStage14scheduleActionERKN8dispatch5queueEU13block_pointerFvNS0_13group_sessionEE_block_invoke;
  v9[3] = &unk_284A673C8;
  v9[4] = a3;
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  dispatch_group_notify(v7, v8, v9);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void ___ZNK12ServiceStage14scheduleActionERKN8dispatch5queueEU13block_pointerFvNS0_13group_sessionEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  group = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  (*(v1 + 16))(v1, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_237420B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_237420CAC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<ServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ServiceManager>(ServiceManager*)::{lambda(ServiceManager*)#1}::operator() const(ServiceManager*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void ServiceManager::ServiceManager(uint64_t a1, void *a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v11, "com.apple.CommCenter", "svcmgr");
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v7 = dispatch_queue_create("ServiceManager", v6);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v7;
  if (v7)
  {
    v8 = v7;
    dispatch_retain(v7);
    *(a1 + 24) = 0;
    dispatch_release(v8);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v12, &v11);
  MEMORY[0x2383CB6C0](a1 + 32, v12);
  MEMORY[0x2383CB6D0](v12);
  ctu::OsLogContext::~OsLogContext(&v11);
  *(a1 + 40) = *a2;
  v9 = a2[1];
  *(a1 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = *a3;
  v10 = a3[1];
  *(a1 + 88) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0;
  operator new();
}

void sub_237420E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2383CBEF0](v3, 0x1020C404EA66E64);
  v5 = v2[11];
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::vector<std::unique_ptr<ServiceManager::Service>>::__destroy_vector::operator()[abi:ne200100](va);
  v6 = v2[6];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  MEMORY[0x2383CB6D0](v2 + 4);
  ctu::SharedSynchronizable<HelperRestServer>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void ServiceManager::~ServiceManager(ServiceManager *this)
{
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x2383CBEF0](v2, 0x1020C404EA66E64);
  }

  v4 = *(this + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v6 = (this + 56);
  std::vector<std::unique_ptr<ServiceManager::Service>>::__destroy_vector::operator()[abi:ne200100](&v6);
  v5 = *(this + 6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  MEMORY[0x2383CB6D0](this + 32);

  ctu::SharedSynchronizable<HelperRestServer>::~SharedSynchronizable(this);
}

void ServiceManager::addConcreteService(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((*(**a2 + 48))())
  {
    if (*(a1 + 97) == 1)
    {
      v4 = *(a1 + 32);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        (*(**a2 + 16))(&block);
        if (v7 >= 0)
        {
          p_block = &block;
        }

        else
        {
          p_block = block;
        }

        *buf = 136315138;
        v9 = p_block;
        _os_log_fault_impl(&dword_2373EA000, v4, OS_LOG_TYPE_FAULT, "Adding service %s after initialization is already complete", buf, 0xCu);
        if (SHIBYTE(v7) < 0)
        {
          operator delete(block);
        }
      }
    }
  }

  operator new();
}

void sub_2374211F8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void ___ZN14ServiceManager18addConcreteServiceEONSt3__110unique_ptrINS_7ServiceENS0_14default_deleteIS2_EEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4 = v2[8];
  v3 = v2[9];
  if (v4 >= v3)
  {
    v7 = v2[7];
    v8 = v4 - v7;
    v9 = (v4 - v7) >> 3;
    v10 = v9 + 1;
    if ((v9 + 1) >> 61)
    {
      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
    }

    v11 = v3 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v13 = v9;
    v14 = (8 * v9);
    v15 = *v1;
    *v1 = 0;
    v16 = &v14[-v13];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v2[7] = v16;
    v2[8] = v6;
    v2[9] = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *v1;
    *v1 = 0;
    *v4 = v5;
    v6 = v4 + 8;
  }

  v2[8] = v6;
}

uint64_t __copy_helper_block_e8_40c95_ZTSNSt3__110shared_ptrINS_10unique_ptrIN14ServiceManager7ServiceENS_14default_deleteIS3_EEEEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c95_ZTSNSt3__110shared_ptrINS_10unique_ptrIN14ServiceManager7ServiceENS_14default_deleteIS3_EEEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void ServiceManager::start(ServiceManager *this@<X0>, NSObject **a2@<X8>)
{
  v4 = dispatch_group_create();
  v5 = v4;
  *a2 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v5);
  }

  v6 = *(this + 1);
  if (v6)
  {
    v7 = *this;
    if (std::__shared_weak_count::lock(v6))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void ServiceManager::shutdown(ServiceManager *this)
{
  v2 = dispatch_group_create();
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v3);
    dispatch_release(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    v5 = *this;
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void ServiceManager::migrate(uint64_t *a1, void **a2, NSObject **a3, uint64_t a4)
{
  v13[4] = *MEMORY[0x277D85DE8];
  v7 = *a2;
  v11[0] = a1;
  v11[1] = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v11[1] = xpc_null_create();
  }

  v8 = *a3;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](v13, a4);
  v9 = a1[1];
  if (v9)
  {
    v10 = *a1;
    if (std::__shared_weak_count::lock(v9))
    {
      operator new();
    }
  }

  std::__throw_bad_weak_ptr[abi:ne200100]();
}

void sub_23742170C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, dispatch_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ServiceManager::FunctorShutdownService::~FunctorShutdownService(void **this)
{
  *this = &unk_284A67438;
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100]((this + 5));
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  ServiceManager::FunctorShutdownService::~FunctorShutdownService(this);

  JUMPOUT(0x2383CBEF0);
}

void ServiceManager::FunctorMigrationService::~FunctorMigrationService(void **this)
{
  *this = &unk_284A674A0;
  std::__function::__value_func<void ()(xpc::dict)>::~__value_func[abi:ne200100]((this + 5));
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  ServiceManager::FunctorMigrationService::~FunctorMigrationService(this);

  JUMPOUT(0x2383CBEF0);
}

void sub_2374219B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_237421B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void ServiceManager::FunctorShutdownService::getName(ServiceManager::FunctorShutdownService *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void ServiceManager::FunctorShutdownService::getServiceShutdownStages(ServiceManager::FunctorShutdownService *this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 32);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  operator new();
}

uint64_t ServiceManager::FunctorShutdownService::notifyServiceShutdown(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  memset(v11, 0, sizeof(v11));
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v11, a1 + 40);
  global_queue = dispatch_get_global_queue(0, 0);
  v5 = global_queue;
  v8 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1174405120;
  v9[2] = ___ZNK14ServiceManager22FunctorShutdownService21notifyServiceShutdownE20ServiceShutdownStageRK12ServiceStage_block_invoke;
  v9[3] = &__block_descriptor_tmp_29;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v10, v11);
  ServiceStage::scheduleAction(a3, &v8, v9);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v10);
  if (v5)
  {
    dispatch_release(v5);
  }

  result = std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v11);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237421D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (v19)
  {
    dispatch_release(v19);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void ServiceManager::FunctorMigrationService::getName(ServiceManager::FunctorMigrationService *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void ServiceManager::FunctorMigrationService::getServiceShutdownStages(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void ServiceManager::FunctorMigrationService::notifyServiceMigration(uint64_t a1, xpc_object_t *a2, NSObject **a3)
{
  v11 = *MEMORY[0x277D85DE8];
  global_queue = dispatch_get_global_queue(0, 0);
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v7 = *a3;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  v8 = *(a1 + 64);
  if (v8)
  {
    if (v8 == a1 + 40)
    {
      v10 = v9;
      (*(*v8 + 24))(v8, v9);
LABEL_13:
      operator new();
    }

    v8 = (*(*v8 + 16))(v8);
  }

  v10 = v8;
  goto LABEL_13;
}

void sub_237421F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  xpc_release(object);
  if (v13)
  {
    dispatch_release(v13);
  }

  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<ServiceManager::Service>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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

uint64_t ___ZNK14ServiceManager22FunctorShutdownService21notifyServiceShutdownE20ServiceShutdownStageRK12ServiceStage_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}