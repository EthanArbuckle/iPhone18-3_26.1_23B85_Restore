uint64_t AMCP::Thing::convert_to<std::vector<CA::RangedStreamDescription>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<CA::RangedStreamDescription>::__init_with_size[abi:ne200100]<CA::RangedStreamDescription*,CA::RangedStreamDescription*>(a1, *v6, v6[1], 0x6DB6DB6DB6DB6DB7 * ((v6[1] - *v6) >> 3));
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<CA::RangedStreamDescription>::__init_with_size[abi:ne200100]<CA::RangedStreamDescription*,CA::RangedStreamDescription*>(a1, *v8, v8[1], 0x6DB6DB6DB6DB6DB7 * ((v8[1] - *v8) >> 3));
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE260150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

BOOL AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamRangedDescription>>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>() || *a4 == AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        if (*(a2 + 32))
        {
          v76[0] = AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>();
          v9 = (*(a2 + 32))(4, a2, 0, v76);
        }

        else
        {
          v9 = 0;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>())
        {
          if (v9)
          {
            v78 = 0;
            *v76 = 0u;
            v77 = 0u;
            std::vector<AudioStreamRangedDescription>::__init_with_size[abi:ne200100]<AudioStreamRangedDescription*,AudioStreamRangedDescription*>(v76, *v9, v9[1], 0x6DB6DB6DB6DB6DB7 * ((v9[1] - *v9) >> 3));
            v27 = AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamRangedDescription>>::dispatch;
LABEL_161:
            v78 = v27;
LABEL_162:
            AMCP::swap(v76, a3, v8);
            if (v78)
            {
              (v78)(0, v76, 0, 0);
            }

            return 0;
          }

          goto LABEL_166;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<std::vector<CA::RangedStreamDescription>>())
        {
          if (v9)
          {
            v28 = v9[1];
            v29 = v28 - *v9;
            if (v28 != *v9)
            {
              v30 = 0x6DB6DB6DB6DB6DB7 * (v29 >> 3);
              if (v30 < 0x492492492492493)
              {
                std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](v30);
              }

              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            *v76 = 0u;
            v77 = v29;
            v27 = AMCP::Implementation::In_Place_Storage<std::vector<CA::RangedStreamDescription>>::dispatch;
            goto LABEL_161;
          }

LABEL_166:
          __assert_rtn("create_vector_of_asrds_from", "Thing.h", 2005, "in_value_ptr != nullptr");
        }

        if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
        {
          if (v9)
          {
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
            v79[0] = Mutable;
            v32 = *v9;
            v33 = v9[1];
            if (*v9 != v33)
            {
              do
              {
                v34 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
                v82 = v34;
                cf = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
                if (!cf)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v76[0] = *v32;
                v35 = CFNumberCreate(0, kCFNumberDoubleType, v76);
                valuePtr = v35;
                if (!v35)
                {
                  v56 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v56, "Could not construct");
                  __cxa_throw(v56, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, cf, v35);
                CFRelease(v35);
                if (cf)
                {
                  CFRelease(cf);
                }

                v76[0] = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
                if (!v76[0])
                {
                  v58 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v58, "Could not construct");
                  __cxa_throw(v58, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 8);
                v36 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v36;
                if (!v36)
                {
                  v59 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v59, "Could not construct");
                  __cxa_throw(v59, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v36);
                CFRelease(v36);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
                if (!v76[0])
                {
                  v60 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v60, "Could not construct");
                  __cxa_throw(v60, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 12);
                v37 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v37;
                if (!v37)
                {
                  v61 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v61, "Could not construct");
                  __cxa_throw(v61, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v37);
                CFRelease(v37);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
                if (!v76[0])
                {
                  v62 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v62, "Could not construct");
                  __cxa_throw(v62, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 16);
                v38 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v38;
                if (!v38)
                {
                  v63 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v63, "Could not construct");
                  __cxa_throw(v63, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v38);
                CFRelease(v38);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
                if (!v76[0])
                {
                  v64 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v64, "Could not construct");
                  __cxa_throw(v64, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 20);
                v39 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v39;
                if (!v39)
                {
                  v65 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v65, "Could not construct");
                  __cxa_throw(v65, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v39);
                CFRelease(v39);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
                if (!v76[0])
                {
                  v66 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v66, "Could not construct");
                  __cxa_throw(v66, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 24);
                v40 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v40;
                if (!v40)
                {
                  v67 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v67, "Could not construct");
                  __cxa_throw(v67, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v40);
                CFRelease(v40);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
                if (!v76[0])
                {
                  v68 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v68, "Could not construct");
                  __cxa_throw(v68, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 28);
                v41 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v41;
                if (!v41)
                {
                  v69 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v69, "Could not construct");
                  __cxa_throw(v69, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v41);
                CFRelease(v41);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                v76[0] = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
                if (!v76[0])
                {
                  v70 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v70, "Could not construct");
                  __cxa_throw(v70, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v32 + 32);
                v42 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v42;
                if (!v42)
                {
                  v71 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v71, "Could not construct");
                  __cxa_throw(v71, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, v76[0], v42);
                CFRelease(v42);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                cf = CFStringCreateWithBytes(0, "minimum", 7, 0x8000100u, 0);
                if (!cf)
                {
                  v72 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v72, "Could not construct");
                  __cxa_throw(v72, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v76[0] = *(v32 + 40);
                v43 = CFNumberCreate(0, kCFNumberDoubleType, v76);
                valuePtr = v43;
                if (!v43)
                {
                  v73 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v73, "Could not construct");
                  __cxa_throw(v73, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, cf, v43);
                CFRelease(v43);
                if (cf)
                {
                  CFRelease(cf);
                }

                cf = CFStringCreateWithBytes(0, "maximum", 7, 0x8000100u, 0);
                if (!cf)
                {
                  v74 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v74, "Could not construct");
                  __cxa_throw(v74, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v76[0] = *(v32 + 48);
                v44 = CFNumberCreate(0, kCFNumberDoubleType, v76);
                valuePtr = v44;
                if (!v44)
                {
                  v75 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v75, "Could not construct");
                  __cxa_throw(v75, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v34, cf, v44);
                CFRelease(v44);
                if (cf)
                {
                  CFRelease(cf);
                }

                mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(v76, v34);
                mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, v76[0]);
                if (v76[0])
                {
                  CFRelease(v76[0]);
                }

                if (v34)
                {
                  CFRelease(v34);
                }

                v32 += 56;
              }

              while (v32 != v33);
            }

            mcp_applesauce::CF::Array_Builder::copy_array(v76, Mutable);
            v76[1] = 0;
            v77 = 0uLL;
            v78 = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            goto LABEL_162;
          }

          goto LABEL_166;
        }
      }

      v78 = 0;
      *v76 = 0u;
      v77 = 0u;
      goto LABEL_162;
    }

    v12 = AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>();
    v13 = *(a2 + 32);
    v76[0] = 0;
    if (v13)
    {
      v13(3, a2, 0, v76);
      v13 = v76[0];
    }

    if (v13 == v12)
    {
      v14 = *(a3 + 32);
      v79[0] = 0;
      if (v14)
      {
        v14(3, a3, 0, v79);
        v14 = v79[0];
      }

      if (v14 == v12)
      {
        if (*(a2 + 32))
        {
          v76[0] = AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>();
          v15 = (*(a2 + 32))(4, a2, 0, v76);
        }

        else
        {
          v15 = 0;
        }

        v76[0] = AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>();
        v45 = (*(a3 + 32))(4, a3, 0, v76);
        v47 = *v15;
        v46 = v15[1];
        if (v46 - *v15 != v45[1] - *v45)
        {
          return 0;
        }

        if (v47 != v46)
        {
          for (i = *v45 + 24; ; i += 56)
          {
            v49 = *(v47 + 48);
            v50 = *(i + 16);
            if (v49 < v50)
            {
              break;
            }

            v51 = *(v47 + 40);
            v52 = *(i + 24);
            if (v51 < v50 && v49 <= v52)
            {
              break;
            }

            if (v51 < v50 && v49 > v52)
            {
              break;
            }

            v55 = v51 == v50 && v49 == v52;
            if (!v55 || *v47 != *(i - 24) || *(v47 + 8) != *(i - 16) || *(v47 + 12) != *(i - 12) || *(v47 + 16) != *(i - 8) || *(v47 + 20) != *(i - 4) || *(v47 + 24) != *i || *(v47 + 28) != *(i + 4) || *(v47 + 32) != *(i + 8))
            {
              break;
            }

            v47 += 56;
            if (v47 == v46)
            {
              return 1;
            }
          }

          return 0;
        }

        return 1;
      }
    }

    AMCP::Thing::convert_to<std::vector<AudioStreamRangedDescription>>(v76, a2);
    AMCP::Thing::convert_to<std::vector<AudioStreamRangedDescription>>(v79, a3);
    v16 = v76[0];
    if (v76[1] - v76[0] == v79[1] - v79[0])
    {
      if (v76[0] == v76[1])
      {
        v19 = 1;
        if (v79[0])
        {
LABEL_63:
          operator delete(v79[0]);
        }

LABEL_64:
        if (v16)
        {
          operator delete(v16);
        }

        return v19 != 0;
      }

      v17 = (v79[0] + 24);
      v18 = v76[0];
      v19 = 1;
      while (1)
      {
        v20 = v18[6];
        v21 = v17[2];
        if (v20 < v21)
        {
          break;
        }

        v22 = v18[5];
        v23 = v17[3];
        if (v22 < v21 && v20 <= v23)
        {
          break;
        }

        if (v22 < v21 && v20 > v23)
        {
          break;
        }

        v26 = v22 == v21 && v20 == v23;
        if (!v26 || *v18 != *(v17 - 3) || *(v18 + 2) != *(v17 - 4) || *(v18 + 3) != *(v17 - 3) || *(v18 + 4) != *(v17 - 2) || *(v18 + 5) != *(v17 - 1) || *(v18 + 6) != *v17 || *(v18 + 7) != *(v17 + 1) || *(v18 + 8) != *(v17 + 2))
        {
          break;
        }

        v18 += 7;
        v17 += 7;
        if (v18 == v76[1])
        {
          goto LABEL_62;
        }
      }
    }

    v19 = 0;
LABEL_62:
    if (v79[0])
    {
      goto LABEL_63;
    }

    goto LABEL_64;
  }

  if (!result)
  {
    v10 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v10;
      operator delete(v10);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
    goto LABEL_21;
  }

  if (result)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    std::vector<AudioStreamRangedDescription>::__init_with_size[abi:ne200100]<AudioStreamRangedDescription*,AudioStreamRangedDescription*>(a3, *a2, *(a2 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 8) - *a2) >> 3));
    result = 0;
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamRangedDescription>>::dispatch;
    return result;
  }

  if (result == 2)
  {
    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamRangedDescription>>::dispatch;
    *(a2 + 32) = 0;
LABEL_21:
    *a2 = v7;
    *(a2 + 16) = v7;
  }

  return result;
}

uint64_t std::vector<AudioStreamRangedDescription>::__init_with_size[abi:ne200100]<AudioStreamRangedDescription*,AudioStreamRangedDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioStreamRangedDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE261404(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Thing::convert_to<std::vector<AudioStreamRangedDescription>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<AudioStreamRangedDescription>::__init_with_size[abi:ne200100]<AudioStreamRangedDescription*,AudioStreamRangedDescription*>(a1, *v6, v6[1], 0x6DB6DB6DB6DB6DB7 * ((v6[1] - *v6) >> 3));
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<AudioStreamRangedDescription>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<AudioStreamRangedDescription>::__init_with_size[abi:ne200100]<AudioStreamRangedDescription*,AudioStreamRangedDescription*>(a1, *v8, v8[1], 0x6DB6DB6DB6DB6DB7 * ((v8[1] - *v8) >> 3));
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE261604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::vector<AudioStreamRangedDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::allocator<AudioStreamRangedDescription>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x492492492492493)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[437];
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[439];
}

uint64_t std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioStreamBasicDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE26180C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL AMCP::Implementation::In_Place_Storage<std::vector<CA::StreamDescription>>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>() || *a4 == AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        if (*(a2 + 32))
        {
          v55[0] = AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>();
          v9 = (*(a2 + 32))(4, a2, 0, v55);
        }

        else
        {
          v9 = 0;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>())
        {
          if (v9)
          {
            v21 = *v9;
            v20 = v9[1];
            if (v20 != v21)
            {
              v22 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v21) >> 3);
              if (v22 < 0x666666666666667)
              {
                std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v22);
              }

              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v57 = 0;
            *v55 = 0u;
            v56 = 0u;
            std::vector<AudioStreamBasicDescription>::__init_with_size[abi:ne200100]<AudioStreamBasicDescription*,AudioStreamBasicDescription*>(v55, 0, 0, 0);
            v57 = AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamBasicDescription>>::dispatch;
            goto LABEL_105;
          }

LABEL_121:
          __assert_rtn("create_vector_of_asbds_from", "Thing.h", 1807, "in_value_ptr != nullptr");
        }

        if (*a4 == AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>())
        {
          if (!v9)
          {
            goto LABEL_121;
          }

          v57 = 0;
          *v55 = 0u;
          v56 = 0u;
          std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(v55, *v9, v9[1], 0xCCCCCCCCCCCCCCCDLL * ((v9[1] - *v9) >> 3));
          v57 = AMCP::Implementation::In_Place_Storage<std::vector<CA::StreamDescription>>::dispatch;
LABEL_105:
          AMCP::swap(v55, a3, v8);
          if (v57)
          {
            v57(0, v55, 0, 0);
          }

          return 0;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
        {
          if (v9)
          {
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
            v58[0] = Mutable;
            v24 = *v9;
            v25 = v9[1];
            if (*v9 != v25)
            {
              do
              {
                v26 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
                v61 = v26;
                cf = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
                if (!cf)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v55[0] = *v24;
                v27 = CFNumberCreate(0, kCFNumberDoubleType, v55);
                valuePtr = v27;
                if (!v27)
                {
                  v40 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v40, "Could not construct");
                  __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, cf, v27);
                CFRelease(v27);
                if (cf)
                {
                  CFRelease(cf);
                }

                v55[0] = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
                if (!v55[0])
                {
                  v41 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v41, "Could not construct");
                  __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 8);
                v28 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v28;
                if (!v28)
                {
                  v42 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v42, "Could not construct");
                  __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v28);
                CFRelease(v28);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
                if (!v55[0])
                {
                  v43 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v43, "Could not construct");
                  __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 12);
                v29 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v29;
                if (!v29)
                {
                  v44 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v44, "Could not construct");
                  __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v29);
                CFRelease(v29);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
                if (!v55[0])
                {
                  v45 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v45, "Could not construct");
                  __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 16);
                v30 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v30;
                if (!v30)
                {
                  v46 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v46, "Could not construct");
                  __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v30);
                CFRelease(v30);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
                if (!v55[0])
                {
                  v47 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v47, "Could not construct");
                  __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 20);
                v31 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v31;
                if (!v31)
                {
                  v48 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v48, "Could not construct");
                  __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v31);
                CFRelease(v31);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
                if (!v55[0])
                {
                  v49 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v49, "Could not construct");
                  __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 24);
                v32 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v32;
                if (!v32)
                {
                  v50 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v50, "Could not construct");
                  __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v32);
                CFRelease(v32);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
                if (!v55[0])
                {
                  v51 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v51, "Could not construct");
                  __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 28);
                v33 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v33;
                if (!v33)
                {
                  v52 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v52, "Could not construct");
                  __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v33);
                CFRelease(v33);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
                if (!v55[0])
                {
                  v53 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v53, "Could not construct");
                  __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 32);
                v34 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v34;
                if (!v34)
                {
                  v54 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v54, "Could not construct");
                  __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v34);
                CFRelease(v34);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(v55, v26);
                mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, v55[0]);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                if (v26)
                {
                  CFRelease(v26);
                }

                v24 += 40;
              }

              while (v24 != v25);
            }

            mcp_applesauce::CF::Array_Builder::copy_array(v55, Mutable);
            v55[1] = 0;
            v56 = 0uLL;
            v57 = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            goto LABEL_105;
          }

          goto LABEL_121;
        }
      }

      v57 = 0;
      *v55 = 0u;
      v56 = 0u;
      goto LABEL_105;
    }

    v12 = AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>();
    v13 = *(a2 + 32);
    v55[0] = 0;
    if (v13)
    {
      v13(3, a2, 0, v55);
      v13 = v55[0];
    }

    if (v13 == v12)
    {
      v14 = *(a3 + 32);
      v58[0] = 0;
      if (v14)
      {
        v14(3, a3, 0, v58);
        v14 = v58[0];
      }

      if (v14 == v12)
      {
        if (*(a2 + 32))
        {
          v55[0] = AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>();
          v15 = (*(a2 + 32))(4, a2, 0, v55);
        }

        else
        {
          v15 = 0;
        }

        v55[0] = AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>();
        v35 = (*(a3 + 32))(4, a3, 0, v55);
        v37 = *v15;
        v36 = v15[1];
        v38 = *v35;
        if (v36 - *v15 != v35[1] - *v35)
        {
          return 0;
        }

        while (v37 != v36)
        {
          if (*v37 != *v38 || *(v37 + 8) != *(v38 + 8) || *(v37 + 12) != *(v38 + 12) || *(v37 + 16) != *(v38 + 16) || *(v37 + 20) != *(v38 + 20) || *(v37 + 24) != *(v38 + 24) || *(v37 + 28) != *(v38 + 28) || *(v37 + 32) != *(v38 + 32))
          {
            return 0;
          }

          v37 += 40;
          v38 += 40;
        }

        return 1;
      }
    }

    AMCP::Thing::convert_to<std::vector<CA::StreamDescription>>(v55, a2);
    AMCP::Thing::convert_to<std::vector<CA::StreamDescription>>(v58, a3);
    v16 = v55[0];
    if (v55[1] - v55[0] == v58[1] - v58[0])
    {
      if (v55[0] == v55[1])
      {
LABEL_44:
        v19 = 1;
        goto LABEL_46;
      }

      v17 = v58[0];
      v18 = v55[0];
      while (*v18 == *v17 && *(v18 + 2) == *(v17 + 2) && *(v18 + 3) == *(v17 + 3) && *(v18 + 4) == *(v17 + 4) && *(v18 + 5) == *(v17 + 5) && *(v18 + 6) == *(v17 + 6) && *(v18 + 7) == *(v17 + 7) && *(v18 + 8) == *(v17 + 8))
      {
        v18 += 5;
        v17 += 5;
        if (v18 == v55[1])
        {
          goto LABEL_44;
        }
      }
    }

    v19 = 0;
LABEL_46:
    if (v58[0])
    {
      operator delete(v58[0]);
    }

    if (v16)
    {
      operator delete(v16);
    }

    return v19 != 0;
  }

  if (!result)
  {
    v10 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v10;
      operator delete(v10);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
    goto LABEL_21;
  }

  if (result)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(a3, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
    result = 0;
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<CA::StreamDescription>>::dispatch;
    return result;
  }

  if (result == 2)
  {
    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<CA::StreamDescription>>::dispatch;
    *(a2 + 32) = 0;
LABEL_21:
    *a2 = v7;
    *(a2 + 16) = v7;
  }

  return result;
}

void sub_1DE2625E4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<CA::StreamDescription>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(a1, *v6, v6[1], 0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 3));
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(a1, *v8, v8[1], 0xCCCCCCCCCCCCCCCDLL * ((v8[1] - *v8) >> 3));
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE2629A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

uint64_t std::vector<AudioStreamBasicDescription>::__init_with_size[abi:ne200100]<AudioStreamBasicDescription*,AudioStreamBasicDescription*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<AudioStreamBasicDescription>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE262A24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamBasicDescription>>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>() || *a4 == AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        if (*(a2 + 32))
        {
          v55[0] = AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>();
          v9 = (*(a2 + 32))(4, a2, 0, v55);
        }

        else
        {
          v9 = 0;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>())
        {
          if (v9)
          {
            v57 = 0;
            *v55 = 0u;
            v56 = 0u;
            std::vector<AudioStreamBasicDescription>::__init_with_size[abi:ne200100]<AudioStreamBasicDescription*,AudioStreamBasicDescription*>(v55, *v9, v9[1], 0xCCCCCCCCCCCCCCCDLL * ((v9[1] - *v9) >> 3));
            v57 = AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamBasicDescription>>::dispatch;
            goto LABEL_117;
          }

LABEL_121:
          __assert_rtn("create_vector_of_asbds_from", "Thing.h", 1807, "in_value_ptr != nullptr");
        }

        if (*a4 == AMCP::Implementation::get_type_marker<std::vector<CA::StreamDescription>>())
        {
          if (v9)
          {
            v21 = *v9;
            v20 = v9[1];
            if (v20 != v21)
            {
              v22 = 0xCCCCCCCCCCCCCCCDLL * ((v20 - v21) >> 3);
              if (v22 < 0x666666666666667)
              {
                std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](v22);
              }

              std::vector<void *>::__throw_length_error[abi:ne200100]();
            }

            v57 = 0;
            *v55 = 0u;
            v56 = 0u;
            std::vector<CA::StreamDescription>::__init_with_size[abi:ne200100]<CA::StreamDescription*,CA::StreamDescription*>(v55, 0, 0, 0);
            v57 = AMCP::Implementation::In_Place_Storage<std::vector<CA::StreamDescription>>::dispatch;
            goto LABEL_117;
          }

          goto LABEL_121;
        }

        if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
        {
          if (v9)
          {
            Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
            v58[0] = Mutable;
            v24 = *v9;
            v25 = v9[1];
            if (*v9 != v25)
            {
              do
              {
                v26 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], MEMORY[0x1E695E9F0]);
                v61 = v26;
                cf = CFStringCreateWithBytes(0, "sample rate", 11, 0x8000100u, 0);
                if (!cf)
                {
                  exception = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(exception, "Could not construct");
                  __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                v55[0] = *v24;
                v27 = CFNumberCreate(0, kCFNumberDoubleType, v55);
                valuePtr = v27;
                if (!v27)
                {
                  v40 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v40, "Could not construct");
                  __cxa_throw(v40, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, cf, v27);
                CFRelease(v27);
                if (cf)
                {
                  CFRelease(cf);
                }

                v55[0] = CFStringCreateWithBytes(0, "format id", 9, 0x8000100u, 0);
                if (!v55[0])
                {
                  v41 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v41, "Could not construct");
                  __cxa_throw(v41, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 8);
                v28 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v28;
                if (!v28)
                {
                  v42 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v42, "Could not construct");
                  __cxa_throw(v42, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v28);
                CFRelease(v28);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "format flags", 12, 0x8000100u, 0);
                if (!v55[0])
                {
                  v43 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v43, "Could not construct");
                  __cxa_throw(v43, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 12);
                v29 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v29;
                if (!v29)
                {
                  v44 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v44, "Could not construct");
                  __cxa_throw(v44, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v29);
                CFRelease(v29);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "bytes per packet", 16, 0x8000100u, 0);
                if (!v55[0])
                {
                  v45 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v45, "Could not construct");
                  __cxa_throw(v45, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 16);
                v30 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v30;
                if (!v30)
                {
                  v46 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v46, "Could not construct");
                  __cxa_throw(v46, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v30);
                CFRelease(v30);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "frames per packet", 17, 0x8000100u, 0);
                if (!v55[0])
                {
                  v47 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v47, "Could not construct");
                  __cxa_throw(v47, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 20);
                v31 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v31;
                if (!v31)
                {
                  v48 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v48, "Could not construct");
                  __cxa_throw(v48, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v31);
                CFRelease(v31);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "bytes per frame", 15, 0x8000100u, 0);
                if (!v55[0])
                {
                  v49 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v49, "Could not construct");
                  __cxa_throw(v49, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 24);
                v32 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v32;
                if (!v32)
                {
                  v50 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v50, "Could not construct");
                  __cxa_throw(v50, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v32);
                CFRelease(v32);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "channels per frame", 18, 0x8000100u, 0);
                if (!v55[0])
                {
                  v51 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v51, "Could not construct");
                  __cxa_throw(v51, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 28);
                v33 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v33;
                if (!v33)
                {
                  v52 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v52, "Could not construct");
                  __cxa_throw(v52, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v33);
                CFRelease(v33);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                v55[0] = CFStringCreateWithBytes(0, "bits per channel", 16, 0x8000100u, 0);
                if (!v55[0])
                {
                  v53 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v53, "Could not construct");
                  __cxa_throw(v53, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                LODWORD(valuePtr) = *(v24 + 32);
                v34 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
                cf = v34;
                if (!v34)
                {
                  v54 = __cxa_allocate_exception(0x10uLL);
                  std::runtime_error::runtime_error(v54, "Could not construct");
                  __cxa_throw(v54, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
                }

                mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v26, v55[0], v34);
                CFRelease(v34);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                mcp_applesauce::CF::Dictionary_Builder::copy_dictionary(v55, v26);
                mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, v55[0]);
                if (v55[0])
                {
                  CFRelease(v55[0]);
                }

                if (v26)
                {
                  CFRelease(v26);
                }

                v24 += 40;
              }

              while (v24 != v25);
            }

            mcp_applesauce::CF::Array_Builder::copy_array(v55, Mutable);
            v55[1] = 0;
            v56 = 0uLL;
            v57 = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
            if (Mutable)
            {
              CFRelease(Mutable);
            }

            goto LABEL_117;
          }

          goto LABEL_121;
        }
      }

      v57 = 0;
      *v55 = 0u;
      v56 = 0u;
LABEL_117:
      AMCP::swap(v55, a3, v8);
      if (v57)
      {
        (v57)(0, v55, 0, 0);
      }

      return 0;
    }

    v12 = AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>();
    v13 = *(a2 + 32);
    v55[0] = 0;
    if (v13)
    {
      v13(3, a2, 0, v55);
      v13 = v55[0];
    }

    if (v13 == v12)
    {
      v14 = *(a3 + 32);
      v58[0] = 0;
      if (v14)
      {
        v14(3, a3, 0, v58);
        v14 = v58[0];
      }

      if (v14 == v12)
      {
        if (*(a2 + 32))
        {
          v55[0] = AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>();
          v15 = (*(a2 + 32))(4, a2, 0, v55);
        }

        else
        {
          v15 = 0;
        }

        v55[0] = AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>();
        v35 = (*(a3 + 32))(4, a3, 0, v55);
        v37 = *v15;
        v36 = v15[1];
        v38 = *v35;
        if (v36 - *v15 != v35[1] - *v35)
        {
          return 0;
        }

        while (v37 != v36)
        {
          if (*v37 != *v38 || *(v37 + 8) != *(v38 + 8) || *(v37 + 12) != *(v38 + 12) || *(v37 + 16) != *(v38 + 16) || *(v37 + 20) != *(v38 + 20) || *(v37 + 24) != *(v38 + 24) || *(v37 + 28) != *(v38 + 28) || *(v37 + 32) != *(v38 + 32))
          {
            return 0;
          }

          v37 += 40;
          v38 += 40;
        }

        return 1;
      }
    }

    AMCP::Thing::convert_to<std::vector<AudioStreamBasicDescription>>(v55, a2);
    AMCP::Thing::convert_to<std::vector<AudioStreamBasicDescription>>(v58, a3);
    v16 = v55[0];
    if (v55[1] - v55[0] == v58[1] - v58[0])
    {
      if (v55[0] == v55[1])
      {
LABEL_44:
        v19 = 1;
        goto LABEL_46;
      }

      v17 = v58[0];
      v18 = v55[0];
      while (*v18 == *v17 && *(v18 + 2) == *(v17 + 2) && *(v18 + 3) == *(v17 + 3) && *(v18 + 4) == *(v17 + 4) && *(v18 + 5) == *(v17 + 5) && *(v18 + 6) == *(v17 + 6) && *(v18 + 7) == *(v17 + 7) && *(v18 + 8) == *(v17 + 8))
      {
        v18 += 5;
        v17 += 5;
        if (v18 == v55[1])
        {
          goto LABEL_44;
        }
      }
    }

    v19 = 0;
LABEL_46:
    if (v58[0])
    {
      operator delete(v58[0]);
    }

    if (v16)
    {
      operator delete(v16);
    }

    return v19 != 0;
  }

  if (!result)
  {
    v10 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v10;
      operator delete(v10);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
    goto LABEL_21;
  }

  if (result)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    std::vector<AudioStreamBasicDescription>::__init_with_size[abi:ne200100]<AudioStreamBasicDescription*,AudioStreamBasicDescription*>(a3, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
    result = 0;
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamBasicDescription>>::dispatch;
    return result;
  }

  if (result == 2)
  {
    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<AudioStreamBasicDescription>>::dispatch;
    *(a2 + 32) = 0;
LABEL_21:
    *a2 = v7;
    *(a2 + 16) = v7;
  }

  return result;
}

void sub_1DE2637F4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26)
{
  if (v26)
  {
    operator delete(v26);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<AudioStreamBasicDescription>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<AudioStreamBasicDescription>::__init_with_size[abi:ne200100]<AudioStreamBasicDescription*,AudioStreamBasicDescription*>(a1, *v6, v6[1], 0xCCCCCCCCCCCCCCCDLL * ((v6[1] - *v6) >> 3));
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<AudioStreamBasicDescription>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<AudioStreamBasicDescription>::__init_with_size[abi:ne200100]<AudioStreamBasicDescription*,AudioStreamBasicDescription*>(a1, *v8, v8[1], 0xCCCCCCCCCCCCCCCDLL * ((v8[1] - *v8) >> 3));
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE263BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::vector<AudioStreamBasicDescription>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

void std::allocator<AudioStreamBasicDescription>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[435];
}

void std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 60))
    {
      std::allocator<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](a4);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }
}

uint64_t std::optional<applesauce::CF::DictionaryRef>::~optional(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 2;
        std::__destroy_at[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>,0>(*(v4 - 1));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__destroy_at[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>::dispatch(int a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      if (a1 == 3)
      {
        v4 = 0;
        *a4 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>();
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return v4;
    }

    if (a1 == 5)
    {
      v10 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>();
      v11 = *(a2 + 32);
      *&v40 = 0;
      if (v11)
      {
        v11(3, a2, 0, &v40);
        v11 = v40;
      }

      if (v11 != v10)
      {
        goto LABEL_28;
      }

      v12 = *(a3 + 32);
      v43[0] = 0;
      if (v12)
      {
        (v12)(3, a3, 0, v43);
        v12 = v43[0];
      }

      if (v12 == v10)
      {
        if (*(a2 + 32))
        {
          *&v40 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>();
          v13 = (*(a2 + 32))(4, a2, 0, &v40);
        }

        else
        {
          v13 = 0;
        }

        *&v40 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>();
        v28 = (*(a3 + 32))(4, a3, 0, &v40);
        v31 = v13;
        v29 = *v13;
        v30 = v31[1];
        v32 = *v28;
        if (v30 - v29 != v28[1] - *v28)
        {
          return 0;
        }

        if (v29 != v30)
        {
          v4 = 1;
          while (*v29 == *v32 && *(v29 + 4) == *(v32 + 4))
          {
            v34 = v32 + 8;
            if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(v29 + 8), (v32 + 8)))
            {
              break;
            }

            v29 += 16;
            v32 = v34 + 8;
            if (v29 == v30)
            {
              return v4;
            }
          }

          return 0;
        }
      }

      else
      {
LABEL_28:
        AMCP::Thing::convert_to<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(&v40, a2);
        AMCP::Thing::convert_to<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(v43, a3);
        v14 = *(&v40 + 1);
        v15 = v40;
        v16 = v43[0];
        if ((*(&v40 + 1) - v40) != (v43[1] - v43[0]))
        {
LABEL_37:
          cf = v43;
          std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&cf);
          v43[0] = &v40;
          std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](v43);
          return 0;
        }

        while (v15 != v14)
        {
          if (*v15 != *v16 || *(v15 + 4) != *(v16 + 1))
          {
            goto LABEL_37;
          }

          v18 = v16 + 1;
          if (applesauce::CF::compare<applesauce::CF::StringRef,0,applesauce::CF::StringRef,0>(*(v15 + 8), v16 + 1))
          {
            goto LABEL_37;
          }

          v15 += 16;
          v16 = v18 + 1;
        }

        cf = v43;
        std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&cf);
        v43[0] = &v40;
        std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](v43);
      }

      return 1;
    }

    if (a1 != 6)
    {
      return v4;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>() || *a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      if (*(a2 + 32))
      {
        *&v40 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>();
        v9 = (*(a2 + 32))(4, a2, 0, &v40);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>())
      {
        if (v9)
        {
          v42 = 0;
          v40 = 0u;
          v41 = 0u;
          std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(&v40, *v9, v9[1], (v9[1] - *v9) >> 4);
          v42 = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>::dispatch;
          goto LABEL_63;
        }

LABEL_81:
        __assert_rtn("create_vector_of_selector_items_from", "Thing.h", 1426, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        if (v9)
        {
          Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
          v43[0] = Mutable;
          v21 = *v9;
          v20 = v9[1];
          if (*v9 != v20)
          {
            v22 = MEMORY[0x1E695E9F0];
            do
            {
              v23 = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9E0], v22);
              *&v40 = v23;
              cf = CFStringCreateWithBytes(0, "item id", 7, 0x8000100u, 0);
              if (!cf)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Could not construct");
                __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              valuePtr = *v21;
              v24 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
              v44 = v24;
              if (!v24)
              {
                v36 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v36, "Could not construct");
                __cxa_throw(v36, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v23, cf, v24);
              CFRelease(v24);
              if (cf)
              {
                CFRelease(cf);
              }

              cf = CFStringCreateWithBytes(0, "kind", 4, 0x8000100u, 0);
              if (!cf)
              {
                v37 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v37, "Could not construct");
                __cxa_throw(v37, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              valuePtr = *(v21 + 4);
              v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
              v44 = v25;
              if (!v25)
              {
                v38 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v38, "Could not construct");
                __cxa_throw(v38, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::NumberRef>(v23, cf, v25);
              CFRelease(v25);
              if (cf)
              {
                CFRelease(cf);
              }

              v26 = CFStringCreateWithBytes(0, "name", 4, 0x8000100u, 0);
              cf = v26;
              if (!v26)
              {
                v39 = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(v39, "Could not construct");
                __cxa_throw(v39, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
              }

              mcp_applesauce::CF::Dictionary_Builder::set_value<applesauce::CF::StringRef,applesauce::CF::StringRef>(v23, v26, *(v21 + 8));
              CFRelease(v26);
              mcp_applesauce::CF::Dictionary_Builder::get_dictionary(&cf, v23);
              mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::DictionaryRef>(Mutable, cf);
              if (cf)
              {
                CFRelease(cf);
              }

              if (v23)
              {
                CFRelease(v23);
              }

              v21 += 16;
            }

            while (v21 != v20);
          }

          mcp_applesauce::CF::Array_Builder::copy_array(&v40, Mutable);
          *(&v40 + 1) = 0;
          v41 = 0uLL;
          v42 = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
          if (Mutable)
          {
            CFRelease(Mutable);
          }

          goto LABEL_63;
        }

        goto LABEL_81;
      }
    }

    v42 = 0;
    v40 = 0u;
    v41 = 0u;
LABEL_63:
    AMCP::swap(&v40, a3, v8);
    if (v42)
    {
      (v42)(0, &v40, 0, 0);
    }

    return 0;
  }

  switch(a1)
  {
    case 0:
LABEL_11:
      *&v40 = a2;
      std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&v40);
      v4 = 0;
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return v4;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(a3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 4);
      v4 = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>::dispatch;
      return v4;
    case 2:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = *(a2 + 16);
      *a2 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>::dispatch;
      goto LABEL_11;
  }

  return v4;
}

void sub_1DE2645D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a9;
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__destroy_vector::operator()[abi:ne200100](&a15);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE264398);
}

void sub_1DE264604(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15, uint64_t a16, uint64_t a17, uint64_t a18, const void *a19)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a19);
  mcp_applesauce::CF::Dictionary_Builder::~Dictionary_Builder(&a9);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(&a15);
  __clang_call_terminate(a1);
}

void AMCP::Thing::convert_to<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>();
  v5 = *(a2 + 32);
  v17 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v17);
    v5 = v17;
  }

  if (v5 == v4)
  {
    *&v15[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v15);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(a1, *v6, v6[1], (v6[1] - *v6) >> 4);
      return;
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v9 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v9, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = AMCP::Implementation::get_type_marker<std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>>();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  (*(a2 + 32))(6, a2, v15, &v14);
  if (!v16)
  {
    v10 = __cxa_allocate_exception(8uLL);
    v11 = std::bad_cast::bad_cast(v10);
    __cxa_throw(v11, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v14 = v4;
  v7 = v16(4, v15, 0, &v14);
  if (!v7)
  {
    v12 = __cxa_allocate_exception(8uLL);
    v13 = std::bad_cast::bad_cast(v12);
    __cxa_throw(v13, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::__init_with_size[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(a1, *v7, v7[1], (v7[1] - *v7) >> 4);
  if (v16)
  {
    v16(0, v15, 0, 0);
  }
}

void sub_1DE26487C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void std::allocator<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>,std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a1;
    do
    {
      *a3 = *v5;
      *(a3 + 4) = *(v5 + 4);
      *(a3 + 8) = *(v5 + 8);
      *(v5 + 8) = 0;
      v5 += 16;
      a3 += 16;
    }

    while (v5 != a2);
    do
    {
      std::__destroy_at[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>,0>(*(v4 + 8));
      v4 += 16;
    }

    while (v4 != a2);
  }
}

uint64_t std::__split_buffer<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 16;
    std::__destroy_at[abi:ne200100]<std::tuple<unsigned int,unsigned int,applesauce::CF::StringRef>,0>(*(i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<std::string>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[433];
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::string>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE264A80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

_BYTE *applesauce::CF::convert_to<std::string,0>(UInt8 *a1, const __CFString *a2)
{
  if (!a2 || (TypeID = CFStringGetTypeID(), TypeID != CFGetTypeID(a2)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::convert_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return applesauce::CF::details::CFString_get_value<true>(a1, a2);
}

void std::allocator<std::string>::allocate_at_least[abi:ne200100](unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  begin = this->__begin_;
  end = this->__end_;
  if (end != begin)
  {
    do
    {
      v4 = end - 1;
      this->__end_ = end - 1;
      if (SHIBYTE(end[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v4->__r_.__value_.__l.__data_);
        v4 = this->__end_;
      }

      end = v4;
    }

    while (v4 != begin);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<std::string>>::dispatch(uint64_t result, _OWORD *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v9 = AMCP::Implementation::get_type_marker<std::vector<std::string>>();
        result = 0;
        *a4 = v9;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<std::string>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v10 = AMCP::Implementation::get_type_marker<std::vector<std::string>>();
      v11 = *(a2 + 4);
      cf[0] = 0;
      if (v11)
      {
        (v11)(3, a2, 0, cf);
        v11 = cf[0];
      }

      if (v11 != v10)
      {
        goto LABEL_28;
      }

      v12 = *(a3 + 32);
      v33[0] = 0;
      if (v12)
      {
        (v12)(3, a3, 0, v33);
        v12 = v33[0];
      }

      if (v12 == v10)
      {
        if (*(a2 + 4))
        {
          cf[0] = AMCP::Implementation::get_type_marker<std::vector<std::string>>();
          v13 = (*(a2 + 4))(4, a2, 0, cf);
        }

        else
        {
          v13 = 0;
        }

        cf[0] = AMCP::Implementation::get_type_marker<std::vector<std::string>>();
        v24 = (*(a3 + 32))(4, a3, 0, cf);
        v25 = *v13;
        v26 = *(v13 + 8);
        v27 = v26 - *v13;
        v28 = *v24;
        if (v27 != (*(v24 + 8) - *v24))
        {
          return 0;
        }

        while (v25 != v26)
        {
          if (!std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v25, v28))
          {
            return 0;
          }

          v25 += 3;
          v28 += 3;
        }
      }

      else
      {
LABEL_28:
        AMCP::Thing::convert_to<std::vector<std::string>>(cf, a2);
        AMCP::Thing::convert_to<std::vector<std::string>>(v33, a3);
        v14 = cf[0];
        v15 = cf[1];
        v16 = v33[0];
        if (cf[1] - cf[0] != v33[1] - v33[0])
        {
          v34 = v33;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
          v33[0] = cf;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v33);
          return 0;
        }

        if (cf[0] == cf[1])
        {
          v34 = v33;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
          v33[0] = cf;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v33);
        }

        else
        {
          do
          {
            v17 = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(v14, v16);
            v18 = v17;
            if (!v17)
            {
              break;
            }

            v14 += 3;
            v16 += 3;
          }

          while (v14 != v15);
          v34 = v33;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v34);
          v33[0] = cf;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v33);
          if (!v18)
          {
            return 0;
          }
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (*a4 != AMCP::Implementation::get_type_marker<std::vector<std::string>>() && *a4 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      goto LABEL_52;
    }

    if (*(a2 + 4))
    {
      cf[0] = AMCP::Implementation::get_type_marker<std::vector<std::string>>();
      v8 = (*(a2 + 4))(4, a2, 0, cf);
    }

    else
    {
      v8 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<std::string>>())
    {
      if (v8)
      {
        v32 = 0;
        *cf = 0u;
        v31 = 0u;
        std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(cf, *v8, v8[1], 0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3));
        v32 = AMCP::Implementation::In_Place_Storage<std::vector<std::string>>::dispatch;
        goto LABEL_57;
      }

LABEL_66:
      __assert_rtn("create_vector_of_strings_from", "Thing.h", 1300, "in_value_ptr != nullptr");
    }

    if (*a4 != AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
LABEL_52:
      v32 = 0;
      *cf = 0u;
      v31 = 0u;
LABEL_57:
      AMCP::swap(cf, a3, v7);
      if (v32)
      {
        (v32)(0, cf, 0, 0);
      }

      return 0;
    }

    if (!v8)
    {
      goto LABEL_66;
    }

    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
    v33[0] = Mutable;
    v20 = *v8;
    v21 = v8[1];
    if (v20 == v21)
    {
LABEL_55:
      mcp_applesauce::CF::Array_Builder::copy_array(cf, Mutable);
      cf[1] = 0;
      v31 = 0uLL;
      v32 = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_57;
    }

    while (1)
    {
      v22 = *(v20 + 23);
      v23 = v20;
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_45;
      }

      v23 = *v20;
      if (*v20)
      {
        break;
      }

      cf[0] = 0;
LABEL_47:
      mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(Mutable, v23);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v20 += 24;
      if (v20 == v21)
      {
        Mutable = v33[0];
        goto LABEL_55;
      }
    }

    v22 = *(v20 + 8);
LABEL_45:
    v23 = CFStringCreateWithBytes(0, v23, v22, 0x8000100u, 0);
    cf[0] = v23;
    if (!v23)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    Mutable = v33[0];
    goto LABEL_47;
  }

  switch(result)
  {
    case 0:
LABEL_11:
      cf[0] = a2;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](cf);
      result = 0;
      *(a2 + 4) = 0;
      *a2 = 0u;
      a2[1] = 0u;
      return result;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a3, *a2, *(a2 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 1) - *a2) >> 3));
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<std::string>>::dispatch;
      return result;
    case 2:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = *(a2 + 2);
      *a2 = 0;
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<std::string>>::dispatch;
      goto LABEL_11;
  }

  return result;
}

void sub_1DE2651D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void **a15)
{
  a15 = &a9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a15);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1DE2650DCLL);
}

void sub_1DE2651FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(&a9);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(&a15);
  __clang_call_terminate(a1);
}

BOOL std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(void *a1, void *a2)
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

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t AMCP::Thing::convert_to<std::vector<std::string>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<std::string>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *v6, v6[1], 0xAAAAAAAAAAAAAAABLL * ((v6[1] - *v6) >> 3));
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<std::string>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *v8, v8[1], 0xAAAAAAAAAAAAAAABLL * ((v8[1] - *v8) >> 3));
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE265484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::StringRef>(__CFArray *a1, const void *a2)
{
  if (a1)
  {
    CFArrayAppendValue(a1, a2);
  }
}

_BYTE *applesauce::CF::details::CFString_get_value<true>(UInt8 *a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  if (CStringPtr)
  {

    return std::string::basic_string[abi:ne200100]<0>(a1, CStringPtr);
  }

  else
  {
    Length = CFStringGetLength(theString);
    maxBufLen = 0;
    v10.location = 0;
    v10.length = Length;
    CFStringGetBytes(theString, v10, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
    std::string::basic_string[abi:ne200100](a1, maxBufLen);
    if ((a1[23] & 0x80u) == 0)
    {
      v7 = a1;
    }

    else
    {
      v7 = *a1;
    }

    v11.location = 0;
    v11.length = Length;
    return CFStringGetBytes(theString, v11, 0x8000100u, 0, 0, v7, maxBufLen, &maxBufLen);
  }
}

void sub_1DE2655B8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::basic_string[abi:ne200100](_BYTE *a1, size_t a2)
{
  if (a2 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (a2 >= 0x17)
  {
    operator new();
  }

  a1[23] = a2;
  if (a2)
  {
    bzero(a1, a2);
  }

  a1[a2] = 0;
  return a1;
}

void std::vector<std::string>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::allocator<std::string>::allocate_at_least[abi:ne200100](a2);
  }

  std::vector<void *>::__throw_length_error[abi:ne200100]();
}

std::string *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::string>,std::string*,std::string*,std::string*>(uint64_t a1, __int128 *a2, __int128 *a3, std::string *this)
{
  v4 = this;
  v11 = this;
  v12 = this;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        v4->__r_.__value_.__r.__words[2] = *(v6 + 2);
        *&v4->__r_.__value_.__l.__data_ = v7;
      }

      v6 = (v6 + 24);
      v12 = ++v4;
    }

    while (v6 != a3);
  }

  v10 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](v9);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

BOOL AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(void *a1)
{
  if (*a1 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>() || *a1 == AMCP::Implementation::get_type_marker<std::vector<char>>() || *a1 == AMCP::Implementation::get_type_marker<std::vector<signed char>>() || *a1 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>() || *a1 == AMCP::Implementation::get_type_marker<std::vector<short>>() || *a1 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>() || *a1 == AMCP::Implementation::get_type_marker<std::vector<int>>() || *a1 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>() || *a1 == AMCP::Implementation::get_type_marker<std::vector<long>>())
  {
    return 1;
  }

  return AMCP::is_one_of<std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a1);
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<BOOL>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[403];
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<char>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[405];
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<signed char>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[407];
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<unsigned char>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[409];
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<short>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[411];
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<short>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  if (Count)
  {
    if ((Count & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<unsigned short>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[413];
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<unsigned short>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  if (Count)
  {
    if ((Count & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<int>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[415];
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<int>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  if (Count)
  {
    if (!(Count >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<unsigned int>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  memset(&v24, 0, sizeof(v24));
  std::vector<unsigned int>::reserve(&v24, Count);
  begin = v24.__begin_;
  if (Count)
  {
    v20 = a1;
    __src = v24.__begin_;
    v6 = 0;
    end = v24.__end_;
    value = v24.__end_cap_.__value_;
    do
    {
      if (!*a2)
      {
        v24.__end_cap_.__value_ = value;
        v24.__begin_ = __src;
        v17 = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(v17, "Could not construct");
        __cxa_throw(v17, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
      }

      applesauce::CF::details::at_as<applesauce::CF::NumberRef>(&v22, *a2, v6);
      if (v23 == 1)
      {
        v9 = v22;
        if (!v22)
        {
          v24.__end_ = end;
          v24.__end_cap_.__value_ = value;
          v24.__begin_ = __src;
          v18 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v18, "Could not construct");
          __cxa_throw(v18, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
        }

        v10 = applesauce::CF::convert_to<unsigned int,0>(v22);
        v11 = v10;
        if (end >= value)
        {
          v12 = end - __src;
          v13 = end - __src;
          v14 = v13 + 1;
          if ((v13 + 1) >> 62)
          {
            v24.__end_ = end;
            v24.__end_cap_.__value_ = value;
            v24.__begin_ = __src;
            std::vector<void *>::__throw_length_error[abi:ne200100]();
          }

          if ((value - __src) >> 1 > v14)
          {
            v14 = (value - __src) >> 1;
          }

          if ((value - __src) >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v15 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v15);
          }

          value = 0;
          *(4 * v13) = v11;
          end = (4 * v13 + 4);
          memcpy(0, __src, v12);
          if (__src)
          {
            operator delete(__src);
          }

          __src = 0;
        }

        else
        {
          *end++ = v10;
        }

        CFRelease(v9);
      }

      ++v6;
    }

    while (Count != v6);
    v24.__end_ = end;
    v24.__end_cap_.__value_ = value;
    a1 = v20;
    begin = __src;
    v24.__begin_ = __src;
  }

  else
  {
    end = v24.__end_;
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, begin, end, end - begin);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
  v16 = v24.__begin_;
  if (v24.__begin_)
  {

    operator delete(v16);
  }
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<long>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[419];
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<long>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  if (Count)
  {
    if (!(Count >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<unsigned long>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[421];
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<unsigned long>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  if (Count)
  {
    if (!(Count >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<long long>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[423];
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<long long>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  if (Count)
  {
    if (!(Count >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[425];
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<unsigned long long>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  if (Count)
  {
    if (!(Count >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<float>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[427];
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<float>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  if (Count)
  {
    if (!(Count >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<double>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[429];
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<double>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  if (Count)
  {
    if (!(Count >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

uint64_t AMCP::Implementation::get_type_marker<std::vector<long double>>()
{
  v0 = &unk_1ECDAE000;
  {
    v0 = &unk_1ECDAE000;
    if (v2)
    {
      v0 = &unk_1ECDAE000;
    }
  }

  return v0[431];
}

void AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,std::vector<long double>>(uint64_t a1, CFArrayRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  if (!*a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  Count = CFArrayGetCount(*a2);
  if (Count)
  {
    if (!(Count >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](Count);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<applesauce::CF::ArrayRef,applesauce::CF::ArrayRef>(uint64_t a1, CFTypeRef *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;

  return AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::construct<applesauce::CF::ArrayRef const&>(a1, a2);
}

uint64_t std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE26819C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<long double>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
      {
        goto LABEL_105;
      }

      if (*(a2 + 32))
      {
        *&v32 = AMCP::Implementation::get_type_marker<std::vector<long double>>();
        v9 = (*(a2 + 32))(4, a2, 0, &v32);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
      {
        if (v9)
        {
          v22 = *v9;
          v23 = v9[1];
          v36 = 0;
          v37 = 0;
          v35 = 0;
          if (v23 != v22)
          {
            std::vector<BOOL>::__vallocate[abi:ne200100](&v35, (v23 - v22) >> 3);
          }

          v34 = 0;
          v32 = 0u;
          v33 = 0u;
          std::vector<BOOL>::vector(&v32, &v35);
          v34 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
          if (v35)
          {
            operator delete(v35);
          }

          goto LABEL_106;
        }

LABEL_96:
        __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
      {
        if (!v9)
        {
          goto LABEL_96;
        }

        v24 = v9[1];
        if (v24 != *v9)
        {
          if ((((v24 - *v9) >> 3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v32, 0, 0, 0);
        v31 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_82:
        v34 = v31;
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
      {
        if (!v9)
        {
          goto LABEL_96;
        }

        v25 = v9[1];
        if (v25 != *v9)
        {
          if ((((v25 - *v9) >> 3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v32, 0, 0, 0);
        v31 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
        goto LABEL_82;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
      {
        if (!v9)
        {
          goto LABEL_96;
        }

        v30 = v9[1];
        if (v30 != *v9)
        {
          if ((((v30 - *v9) >> 3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v32, 0, 0, 0);
        v31 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
        goto LABEL_82;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<short>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<unsigned short>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<int>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<unsigned int>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<unsigned long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<long long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<unsigned long long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<float>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<double>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<long double>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,applesauce::CF::ArrayRef>(&v32, v9);
      }

      else
      {
LABEL_105:
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
      }

LABEL_106:
      AMCP::swap(&v32, a3, v8);
      if (v34)
      {
        v34(0, &v32, 0, 0);
      }

      return 0;
    }

    v12 = AMCP::Implementation::get_type_marker<std::vector<long double>>();
    v13 = *(a2 + 32);
    *&v32 = 0;
    if (v13)
    {
      v13(3, a2, 0, &v32);
      v13 = v32;
    }

    if (v13 == v12)
    {
      v14 = *(a3 + 32);
      v35 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v35);
        v14 = v35;
      }

      if (v14 == v12)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<std::vector<long double>>();
          v15 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v15 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<std::vector<long double>>();
        v26 = (*(a3 + 32))(4, a3, 0, &v32);
        v28 = *v15;
        v27 = *(v15 + 8);
        v29 = *v26;
        if ((v27 - *v15) != (*(v26 + 8) - *v26))
        {
          return 0;
        }

        while (v28 != v27)
        {
          if (*v28 != *v29)
          {
            return 0;
          }

          ++v28;
          ++v29;
        }

        return 1;
      }
    }

    AMCP::Thing::convert_to<std::vector<long double>>(&v32, a2);
    AMCP::Thing::convert_to<std::vector<long double>>(&v35, a3);
    v16 = v32;
    if (*(&v32 + 1) - v32 == v36 - v35)
    {
      if (v32 == *(&v32 + 1))
      {
        v20 = 1;
        if (!v35)
        {
LABEL_42:
          if (v16)
          {
            operator delete(v16);
          }

          return v20;
        }

LABEL_41:
        operator delete(v35);
        goto LABEL_42;
      }

      v17 = v32 + 8;
      v18 = v35;
      do
      {
        v19 = *v18++;
        v20 = *(v17 - 8) == v19;
        v21 = *(v17 - 8) != v19 || v17 == *(&v32 + 1);
        v17 += 8;
      }

      while (!v21);
    }

    else
    {
      v20 = 0;
    }

    if (!v35)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (!result)
  {
    v10 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v10;
      operator delete(v10);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
    goto LABEL_19;
  }

  if (result)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    result = 0;
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
    return result;
  }

  if (result == 2)
  {
    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
    *(a2 + 32) = 0;
LABEL_19:
    *a2 = v7;
    *(a2 + 16) = v7;
  }

  return result;
}

void sub_1DE268964(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<long double>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<long double>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, *v6, v6[1], (v6[1] - *v6) >> 3);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<long double>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, *v8, v8[1], (v8[1] - *v8) >> 3);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE268BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void *std::vector<BOOL>::vector(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, v2);
  }

  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<BOOL>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

uint64_t std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE268D3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    std::vector<char>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE268DB8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE268EBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE268FBC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE2690C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE2691C4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE2692C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE2693CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE2694D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE2695D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE2696D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE2697D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,std::vector<long double>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long double>,applesauce::CF::ArrayRef>(void *a1, uint64_t **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&valuePtr, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = valuePtr;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE2699A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE269A38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<double>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
      {
        goto LABEL_105;
      }

      if (*(a2 + 32))
      {
        *&v32 = AMCP::Implementation::get_type_marker<std::vector<double>>();
        v9 = (*(a2 + 32))(4, a2, 0, &v32);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
      {
        if (v9)
        {
          v22 = *v9;
          v23 = v9[1];
          v36 = 0;
          v37 = 0;
          v35 = 0;
          if (v23 != v22)
          {
            std::vector<BOOL>::__vallocate[abi:ne200100](&v35, (v23 - v22) >> 3);
          }

          v34 = 0;
          v32 = 0u;
          v33 = 0u;
          std::vector<BOOL>::vector(&v32, &v35);
          v34 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
          if (v35)
          {
            operator delete(v35);
          }

          goto LABEL_106;
        }

LABEL_96:
        __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
      {
        if (!v9)
        {
          goto LABEL_96;
        }

        v24 = v9[1];
        if (v24 != *v9)
        {
          if ((((v24 - *v9) >> 3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v32, 0, 0, 0);
        v31 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_82:
        v34 = v31;
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
      {
        if (!v9)
        {
          goto LABEL_96;
        }

        v25 = v9[1];
        if (v25 != *v9)
        {
          if ((((v25 - *v9) >> 3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v32, 0, 0, 0);
        v31 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
        goto LABEL_82;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
      {
        if (!v9)
        {
          goto LABEL_96;
        }

        v30 = v9[1];
        if (v30 != *v9)
        {
          if ((((v30 - *v9) >> 3) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v32, 0, 0, 0);
        v31 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
        goto LABEL_82;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<short>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<unsigned short>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<int>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<unsigned int>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<unsigned long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<long long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<unsigned long long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<float>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<double>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<long double>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,applesauce::CF::ArrayRef>(&v32, v9);
      }

      else
      {
LABEL_105:
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
      }

LABEL_106:
      AMCP::swap(&v32, a3, v8);
      if (v34)
      {
        v34(0, &v32, 0, 0);
      }

      return 0;
    }

    v12 = AMCP::Implementation::get_type_marker<std::vector<double>>();
    v13 = *(a2 + 32);
    *&v32 = 0;
    if (v13)
    {
      v13(3, a2, 0, &v32);
      v13 = v32;
    }

    if (v13 == v12)
    {
      v14 = *(a3 + 32);
      v35 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v35);
        v14 = v35;
      }

      if (v14 == v12)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<std::vector<double>>();
          v15 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v15 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<std::vector<double>>();
        v26 = (*(a3 + 32))(4, a3, 0, &v32);
        v28 = *v15;
        v27 = *(v15 + 8);
        v29 = *v26;
        if ((v27 - *v15) != (*(v26 + 8) - *v26))
        {
          return 0;
        }

        while (v28 != v27)
        {
          if (*v28 != *v29)
          {
            return 0;
          }

          ++v28;
          ++v29;
        }

        return 1;
      }
    }

    AMCP::Thing::convert_to<std::vector<double>>(&v32, a2);
    AMCP::Thing::convert_to<std::vector<double>>(&v35, a3);
    v16 = v32;
    if (*(&v32 + 1) - v32 == v36 - v35)
    {
      if (v32 == *(&v32 + 1))
      {
        v20 = 1;
        if (!v35)
        {
LABEL_42:
          if (v16)
          {
            operator delete(v16);
          }

          return v20;
        }

LABEL_41:
        operator delete(v35);
        goto LABEL_42;
      }

      v17 = v32 + 8;
      v18 = v35;
      do
      {
        v19 = *v18++;
        v20 = *(v17 - 8) == v19;
        v21 = *(v17 - 8) != v19 || v17 == *(&v32 + 1);
        v17 += 8;
      }

      while (!v21);
    }

    else
    {
      v20 = 0;
    }

    if (!v35)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (!result)
  {
    v10 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v10;
      operator delete(v10);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
    goto LABEL_19;
  }

  if (result)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
    result = 0;
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
    return result;
  }

  if (result == 2)
  {
    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
    *(a2 + 32) = 0;
LABEL_19:
    *a2 = v7;
    *(a2 + 16) = v7;
  }

  return result;
}

void sub_1DE26A200(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<double>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<double>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, *v6, v6[1], (v6[1] - *v6) >> 3);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<double>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, *v8, v8[1], (v8[1] - *v8) >> 3);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE26A444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE26A54C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE26A64C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE26A750(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE26A854(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE26A958(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE26AA5C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE26AB60(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE26AC64(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE26AD68(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<double>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE26AEDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<double>,applesauce::CF::ArrayRef>(void *a1, uint64_t **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&valuePtr, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = valuePtr;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE26B030(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE26B0C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch(_BOOL8 result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<float>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result != 5)
    {
      if (result != 6)
      {
        return result;
      }

      if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
      {
        goto LABEL_105;
      }

      if (*(a2 + 32))
      {
        *&v32 = AMCP::Implementation::get_type_marker<std::vector<float>>();
        v9 = (*(a2 + 32))(4, a2, 0, &v32);
      }

      else
      {
        v9 = 0;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
      {
        if (v9)
        {
          v22 = *v9;
          v23 = v9[1];
          v36 = 0;
          v37 = 0;
          v35 = 0;
          if (v23 != v22)
          {
            std::vector<BOOL>::__vallocate[abi:ne200100](&v35, (v23 - v22) >> 2);
          }

          v34 = 0;
          v32 = 0u;
          v33 = 0u;
          std::vector<BOOL>::vector(&v32, &v35);
          v34 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
          if (v35)
          {
            operator delete(v35);
          }

          goto LABEL_106;
        }

LABEL_96:
        __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
      {
        if (!v9)
        {
          goto LABEL_96;
        }

        v24 = v9[1];
        if (v24 != *v9)
        {
          if ((((v24 - *v9) >> 2) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v32, 0, 0, 0);
        v31 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_82:
        v34 = v31;
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
      {
        if (!v9)
        {
          goto LABEL_96;
        }

        v25 = v9[1];
        if (v25 != *v9)
        {
          if ((((v25 - *v9) >> 2) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v32, 0, 0, 0);
        v31 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
        goto LABEL_82;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
      {
        if (!v9)
        {
          goto LABEL_96;
        }

        v30 = v9[1];
        if (v30 != *v9)
        {
          if ((((v30 - *v9) >> 2) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          std::vector<void *>::__throw_length_error[abi:ne200100]();
        }

        v34 = 0;
        v32 = 0u;
        v33 = 0u;
        std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v32, 0, 0, 0);
        v31 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
        goto LABEL_82;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<short>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<unsigned short>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<int>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<unsigned int>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<unsigned long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<long long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<unsigned long long>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<float>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<double>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<long double>>(&v32, v9);
        goto LABEL_106;
      }

      if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
      {
        AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,applesauce::CF::ArrayRef>(&v32, v9);
      }

      else
      {
LABEL_105:
        v34 = 0;
        v32 = 0u;
        v33 = 0u;
      }

LABEL_106:
      AMCP::swap(&v32, a3, v8);
      if (v34)
      {
        v34(0, &v32, 0, 0);
      }

      return 0;
    }

    v12 = AMCP::Implementation::get_type_marker<std::vector<float>>();
    v13 = *(a2 + 32);
    *&v32 = 0;
    if (v13)
    {
      v13(3, a2, 0, &v32);
      v13 = v32;
    }

    if (v13 == v12)
    {
      v14 = *(a3 + 32);
      v35 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v35);
        v14 = v35;
      }

      if (v14 == v12)
      {
        if (*(a2 + 32))
        {
          *&v32 = AMCP::Implementation::get_type_marker<std::vector<float>>();
          v15 = (*(a2 + 32))(4, a2, 0, &v32);
        }

        else
        {
          v15 = 0;
        }

        *&v32 = AMCP::Implementation::get_type_marker<std::vector<float>>();
        v26 = (*(a3 + 32))(4, a3, 0, &v32);
        v28 = *v15;
        v27 = *(v15 + 8);
        v29 = *v26;
        if ((v27 - *v15) != (*(v26 + 8) - *v26))
        {
          return 0;
        }

        while (v28 != v27)
        {
          if (*v28 != *v29)
          {
            return 0;
          }

          ++v28;
          ++v29;
        }

        return 1;
      }
    }

    AMCP::Thing::convert_to<std::vector<float>>(&v32, a2);
    AMCP::Thing::convert_to<std::vector<float>>(&v35, a3);
    v16 = v32;
    if (*(&v32 + 1) - v32 == v36 - v35)
    {
      if (v32 == *(&v32 + 1))
      {
        v20 = 1;
        if (!v35)
        {
LABEL_42:
          if (v16)
          {
            operator delete(v16);
          }

          return v20;
        }

LABEL_41:
        operator delete(v35);
        goto LABEL_42;
      }

      v17 = v32 + 4;
      v18 = v35;
      do
      {
        v19 = *v18++;
        v20 = *(v17 - 4) == v19;
        v21 = *(v17 - 4) != v19 || v17 == *(&v32 + 1);
        v17 += 4;
      }

      while (!v21);
    }

    else
    {
      v20 = 0;
    }

    if (!v35)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  if (!result)
  {
    v10 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v10;
      operator delete(v10);
    }

    result = 0;
    *(a2 + 32) = 0;
    v7 = 0uLL;
    goto LABEL_19;
  }

  if (result)
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a3, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 2);
    result = 0;
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
    return result;
  }

  if (result == 2)
  {
    result = 0;
    v7 = 0uLL;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
    *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
    *(a2 + 32) = 0;
LABEL_19:
    *a2 = v7;
    *(a2 + 16) = v7;
  }

  return result;
}

void sub_1DE26B890(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<float>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<float>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *v6, v6[1], (v6[1] - *v6) >> 2);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<float>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *v8, v8[1], (v8[1] - *v8) >> 2);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE26BAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 2) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE26BBDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 2) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE26BCDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE26BDE0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE26BEE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE26BFE8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE26C0EC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE26C1F0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE26C2F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<float>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE26C46C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 2) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 2);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE26C570(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<float>,applesauce::CF::ArrayRef>(void *a1, int **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v9[1] = Mutable;
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    v9[0] = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(v9, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = v9[0];
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE26C6C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE26C75C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>();
      v13 = a2[4];
      *&v27 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v27);
        v13 = v27;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v30 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v30);
        v14 = v30;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>();
          v15 = (a2[4])(4, a2, 0, &v27);
        }

        else
        {
          v15 = 0;
        }

        *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>();
        v23 = (*(a3 + 32))(4, a3, 0, &v27);
        v24 = *(v15 + 8) - *v15;
        if (v24 != *(v23 + 8) - *v23 || memcmp(*v15, *v23, v24))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<unsigned long long>>(&v27, a2);
        AMCP::Thing::convert_to<std::vector<unsigned long long>>(&v30, a3);
        v16 = v27;
        v17 = v30;
        v18 = *(&v27 + 1) - v27 == v31 - v30 && memcmp(v27, v30, *(&v27 + 1) - v27) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      goto LABEL_95;
    }

    if (a2[4])
    {
      *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>();
      v9 = (a2[4])(4, a2, 0, &v27);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
    {
      if (v9)
      {
        v19 = *v9;
        v20 = v9[1];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        if (v20 != v19)
        {
          std::vector<BOOL>::__vallocate[abi:ne200100](&v30, (v20 - v19) >> 3);
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        std::vector<BOOL>::vector(&v27, &v30);
        v29 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
        if (v30)
        {
          operator delete(v30);
        }

        goto LABEL_96;
      }

LABEL_86:
      __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v21 = v9[1];
      if (v21 != *v9)
      {
        if ((((v21 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_72:
      v29 = v26;
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v22 = v9[1];
      if (v22 != *v9)
      {
        if ((((v22 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v25 = v9[1];
      if (v25 != *v9)
      {
        if ((((v25 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<unsigned short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<unsigned int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<unsigned long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<unsigned long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<float>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<long double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,applesauce::CF::ArrayRef>(&v27, v9);
    }

    else
    {
LABEL_95:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

LABEL_96:
    AMCP::swap(&v27, a3, v8);
    if (v29)
    {
      v29(0, &v27, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a3, *a2, a2[1], (a2[1] - *a2) >> 3);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE26CEE0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<unsigned long long>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, *v6, v6[1], (v6[1] - *v6) >> 3);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, *v8, v8[1], (v8[1] - *v8) >> 3);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE26D124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE26D228(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE26D324(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE26D424(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE26D524(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE26D624(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE26D724(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE26D824(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<unsigned long long>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE26D99C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE26DAA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE26DBA4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long long>,applesauce::CF::ArrayRef>(void *a1, uint64_t **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&valuePtr, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = valuePtr;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE26DCF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE26DD90(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<long long>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<long long>>();
      v13 = a2[4];
      *&v27 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v27);
        v13 = v27;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v30 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v30);
        v14 = v30;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v27 = AMCP::Implementation::get_type_marker<std::vector<long long>>();
          v15 = (a2[4])(4, a2, 0, &v27);
        }

        else
        {
          v15 = 0;
        }

        *&v27 = AMCP::Implementation::get_type_marker<std::vector<long long>>();
        v23 = (*(a3 + 32))(4, a3, 0, &v27);
        v24 = *(v15 + 8) - *v15;
        if (v24 != *(v23 + 8) - *v23 || memcmp(*v15, *v23, v24))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<long long>>(&v27, a2);
        AMCP::Thing::convert_to<std::vector<long long>>(&v30, a3);
        v16 = v27;
        v17 = v30;
        v18 = *(&v27 + 1) - v27 == v31 - v30 && memcmp(v27, v30, *(&v27 + 1) - v27) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      goto LABEL_95;
    }

    if (a2[4])
    {
      *&v27 = AMCP::Implementation::get_type_marker<std::vector<long long>>();
      v9 = (a2[4])(4, a2, 0, &v27);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
    {
      if (v9)
      {
        v19 = *v9;
        v20 = v9[1];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        if (v20 != v19)
        {
          std::vector<BOOL>::__vallocate[abi:ne200100](&v30, (v20 - v19) >> 3);
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        std::vector<BOOL>::vector(&v27, &v30);
        v29 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
        if (v30)
        {
          operator delete(v30);
        }

        goto LABEL_96;
      }

LABEL_86:
      __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v21 = v9[1];
      if (v21 != *v9)
      {
        if ((((v21 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_72:
      v29 = v26;
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v22 = v9[1];
      if (v22 != *v9)
      {
        if ((((v22 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v25 = v9[1];
      if (v25 != *v9)
      {
        if ((((v25 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<unsigned short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<unsigned int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<unsigned long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<unsigned long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<float>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<long double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,applesauce::CF::ArrayRef>(&v27, v9);
    }

    else
    {
LABEL_95:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

LABEL_96:
    AMCP::swap(&v27, a3, v8);
    if (v29)
    {
      v29(0, &v27, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a3, *a2, a2[1], (a2[1] - *a2) >> 3);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE26E514(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<long long>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<long long>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, *v6, v6[1], (v6[1] - *v6) >> 3);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<long long>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, *v8, v8[1], (v8[1] - *v8) >> 3);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE26E758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE26E85C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE26E958(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE26EA58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE26EB58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE26EC58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<unsigned long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
}

void sub_1DE26ED58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<long long>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE26EECC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE26EFD0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE26F0D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE26F1D8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long long>,applesauce::CF::ArrayRef>(void *a1, uint64_t **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberLongLongType, &valuePtr);
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&valuePtr, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = valuePtr;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE26F32C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE26F3C4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<unsigned long>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<unsigned long>>();
      v13 = a2[4];
      *&v27 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v27);
        v13 = v27;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v30 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v30);
        v14 = v30;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned long>>();
          v15 = (a2[4])(4, a2, 0, &v27);
        }

        else
        {
          v15 = 0;
        }

        *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned long>>();
        v23 = (*(a3 + 32))(4, a3, 0, &v27);
        v24 = *(v15 + 8) - *v15;
        if (v24 != *(v23 + 8) - *v23 || memcmp(*v15, *v23, v24))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<unsigned long>>(&v27, a2);
        AMCP::Thing::convert_to<std::vector<unsigned long>>(&v30, a3);
        v16 = v27;
        v17 = v30;
        v18 = *(&v27 + 1) - v27 == v31 - v30 && memcmp(v27, v30, *(&v27 + 1) - v27) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      goto LABEL_95;
    }

    if (a2[4])
    {
      *&v27 = AMCP::Implementation::get_type_marker<std::vector<unsigned long>>();
      v9 = (a2[4])(4, a2, 0, &v27);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
    {
      if (v9)
      {
        v19 = *v9;
        v20 = v9[1];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        if (v20 != v19)
        {
          std::vector<BOOL>::__vallocate[abi:ne200100](&v30, (v20 - v19) >> 3);
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        std::vector<BOOL>::vector(&v27, &v30);
        v29 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
        if (v30)
        {
          operator delete(v30);
        }

        goto LABEL_96;
      }

LABEL_86:
      __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v21 = v9[1];
      if (v21 != *v9)
      {
        if ((((v21 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_72:
      v29 = v26;
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v22 = v9[1];
      if (v22 != *v9)
      {
        if ((((v22 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v25 = v9[1];
      if (v25 != *v9)
      {
        if ((((v25 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<unsigned short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<unsigned int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<unsigned long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<unsigned long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<float>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<long double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,applesauce::CF::ArrayRef>(&v27, v9);
    }

    else
    {
LABEL_95:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

LABEL_96:
    AMCP::swap(&v27, a3, v8);
    if (v29)
    {
      v29(0, &v27, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a3, *a2, a2[1], (a2[1] - *a2) >> 3);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE26FB48(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<unsigned long>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<unsigned long>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *v6, v6[1], (v6[1] - *v6) >> 3);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<unsigned long>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *v8, v8[1], (v8[1] - *v8) >> 3);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE26FD8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}

void sub_1DE26FE90(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<unsigned short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned short>>::dispatch;
}

void sub_1DE26FF8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<int>>::dispatch;
}

void sub_1DE27008C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<unsigned int>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned int>>::dispatch;
}

void sub_1DE27018C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
}

void sub_1DE27028C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<unsigned long>>(uint64_t a1, uint64_t *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  result = std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(a1, *a2, a2[1], (a2[1] - *a2) >> 3);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long>>::dispatch;
  return result;
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long long>>::dispatch;
}

void sub_1DE270400(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<unsigned long long>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<unsigned long long>::__init_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<unsigned long long>>::dispatch;
}

void sub_1DE270500(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<float>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<float>::__init_with_size[abi:ne200100]<float *,float *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<float>>::dispatch;
}

void sub_1DE270604(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<double>>::dispatch;
}

void sub_1DE270708(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,std::vector<long double>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (!((v4 >> 3) >> 61))
    {
      std::allocator<unsigned long>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<long double>::__init_with_size[abi:ne200100]<long double *,long double *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long double>>::dispatch;
}

void sub_1DE27080C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<unsigned long>,applesauce::CF::ArrayRef>(void *a1, uint64_t **a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C8]);
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    valuePtr = *v5;
    v7 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }

    mcp_applesauce::CF::Array_Builder::append_value<applesauce::CF::NumberRef>(Mutable, v7);
    CFRelease(v7);
    ++v5;
  }

  mcp_applesauce::CF::Array_Builder::copy_array(&valuePtr, Mutable);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = valuePtr;
  a1[1] = 0;
  a1[4] = AMCP::Implementation::In_Place_Storage<applesauce::CF::ArrayRef>::dispatch;
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void sub_1DE270960(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  applesauce::CF::ObjectRef<__CFNumber const*>::~ObjectRef(va);
  mcp_applesauce::CF::Array_Builder::~Array_Builder(va1);
  _Unwind_Resume(a1);
}

uint64_t std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1DE2709F8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  if (result > 2)
  {
    if (result <= 4)
    {
      if (result == 3)
      {
        v11 = AMCP::Implementation::get_type_marker<std::vector<long>>();
        result = 0;
        *a4 = v11;
      }

      else if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
      {
        return a2;
      }

      else
      {
        return 0;
      }

      return result;
    }

    if (result == 5)
    {
      v12 = AMCP::Implementation::get_type_marker<std::vector<long>>();
      v13 = a2[4];
      *&v27 = 0;
      if (v13)
      {
        v13(3, a2, 0, &v27);
        v13 = v27;
      }

      if (v13 != v12)
      {
        goto LABEL_30;
      }

      v14 = *(a3 + 32);
      v30 = 0;
      if (v14)
      {
        v14(3, a3, 0, &v30);
        v14 = v30;
      }

      if (v14 == v12)
      {
        if (a2[4])
        {
          *&v27 = AMCP::Implementation::get_type_marker<std::vector<long>>();
          v15 = (a2[4])(4, a2, 0, &v27);
        }

        else
        {
          v15 = 0;
        }

        *&v27 = AMCP::Implementation::get_type_marker<std::vector<long>>();
        v23 = (*(a3 + 32))(4, a3, 0, &v27);
        v24 = *(v15 + 8) - *v15;
        if (v24 != *(v23 + 8) - *v23 || memcmp(*v15, *v23, v24))
        {
          return 0;
        }
      }

      else
      {
LABEL_30:
        AMCP::Thing::convert_to<std::vector<long>>(&v27, a2);
        AMCP::Thing::convert_to<std::vector<long>>(&v30, a3);
        v16 = v27;
        v17 = v30;
        v18 = *(&v27 + 1) - v27 == v31 - v30 && memcmp(v27, v30, *(&v27 + 1) - v27) == 0;
        if (v17)
        {
          operator delete(v17);
        }

        if (v16)
        {
          operator delete(v16);
        }

        if (!v18)
        {
          return 0;
        }
      }

      return 1;
    }

    if (result != 6)
    {
      return result;
    }

    if (!AMCP::is_one_of<std::vector<BOOL>,std::vector<char>,std::vector<signed char>,std::vector<unsigned char>,std::vector<short>,std::vector<unsigned short>,std::vector<int>,std::vector<unsigned int>,std::vector<long>,std::vector<unsigned long>,std::vector<long long>,std::vector<unsigned long long>,std::vector<float>,std::vector<double>,std::vector<long double>,applesauce::CF::ArrayRef>(a4))
    {
      goto LABEL_95;
    }

    if (a2[4])
    {
      *&v27 = AMCP::Implementation::get_type_marker<std::vector<long>>();
      v9 = (a2[4])(4, a2, 0, &v27);
    }

    else
    {
      v9 = 0;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<BOOL>>())
    {
      if (v9)
      {
        v19 = *v9;
        v20 = v9[1];
        v31 = 0;
        v32 = 0;
        v30 = 0;
        if (v20 != v19)
        {
          std::vector<BOOL>::__vallocate[abi:ne200100](&v30, (v20 - v19) >> 3);
        }

        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        std::vector<BOOL>::vector(&v27, &v30);
        v29 = AMCP::Implementation::In_Place_Storage<std::vector<BOOL>>::dispatch;
        if (v30)
        {
          operator delete(v30);
        }

        goto LABEL_96;
      }

LABEL_86:
      __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v21 = v9[1];
      if (v21 != *v9)
      {
        if ((((v21 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<char>::__init_with_size[abi:ne200100]<char *,char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<char>>::dispatch;
LABEL_72:
      v29 = v26;
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<signed char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v22 = v9[1];
      if (v22 != *v9)
      {
        if ((((v22 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<signed char>::__init_with_size[abi:ne200100]<signed char *,signed char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<signed char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned char>>())
    {
      if (!v9)
      {
        goto LABEL_86;
      }

      v25 = v9[1];
      if (v25 != *v9)
      {
        if ((((v25 - *v9) >> 3) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<void *>::__throw_length_error[abi:ne200100]();
      }

      v29 = 0;
      v27 = 0u;
      v28 = 0u;
      std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(&v27, 0, 0, 0);
      v26 = AMCP::Implementation::In_Place_Storage<std::vector<unsigned char>>::dispatch;
      goto LABEL_72;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned short>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<unsigned short>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned int>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<unsigned int>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<unsigned long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<unsigned long long>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<unsigned long long>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<float>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<float>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<std::vector<long double>>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<long double>>(&v27, v9);
      goto LABEL_96;
    }

    if (*a4 == AMCP::Implementation::get_type_marker<applesauce::CF::ArrayRef>())
    {
      AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,applesauce::CF::ArrayRef>(&v27, v9);
    }

    else
    {
LABEL_95:
      v29 = 0;
      v27 = 0u;
      v28 = 0u;
    }

LABEL_96:
    AMCP::swap(&v27, a3, v8);
    if (v29)
    {
      v29(0, &v27, 0, 0);
    }

    return 0;
  }

  switch(result)
  {
    case 0:
      v10 = *a2;
      if (*a2)
      {
        a2[1] = v10;
        operator delete(v10);
      }

      result = 0;
      a2[4] = 0;
      v7 = 0uLL;
      goto LABEL_19;
    case 1:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a3, *a2, a2[1], (a2[1] - *a2) >> 3);
      result = 0;
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
      return result;
    case 2:
      result = 0;
      v7 = 0uLL;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *a3 = *a2;
      *(a3 + 16) = a2[2];
      *(a3 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<long>>::dispatch;
      a2[4] = 0;
LABEL_19:
      *a2 = v7;
      *(a2 + 1) = v7;
      break;
  }

  return result;
}

void sub_1DE27117C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (v14)
  {
    operator delete(v14);
  }

  __clang_call_terminate(a1);
}

uint64_t AMCP::Thing::convert_to<std::vector<long>>(void *a1, uint64_t a2)
{
  if (!*(a2 + 32))
  {
    goto LABEL_12;
  }

  v4 = AMCP::Implementation::get_type_marker<std::vector<long>>();
  v5 = *(a2 + 32);
  v18 = 0;
  if (v5)
  {
    v5(3, a2, 0, &v18);
    v5 = v18;
  }

  if (v5 == v4)
  {
    *&v16[0] = v4;
    v6 = (*(a2 + 32))(4, a2, 0, v16);
    if (v6)
    {
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      return std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, *v6, v6[1], (v6[1] - *v6) >> 3);
    }

LABEL_12:
    exception = __cxa_allocate_exception(8uLL);
    v10 = std::bad_cast::bad_cast(exception);
    __cxa_throw(v10, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = AMCP::Implementation::get_type_marker<std::vector<long>>();
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  (*(a2 + 32))(6, a2, v16, &v15);
  if (!v17)
  {
    v11 = __cxa_allocate_exception(8uLL);
    v12 = std::bad_cast::bad_cast(v11);
    __cxa_throw(v12, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  v15 = v4;
  v8 = v17(4, v16, 0, &v15);
  if (!v8)
  {
    v13 = __cxa_allocate_exception(8uLL);
    v14 = std::bad_cast::bad_cast(v13);
    __cxa_throw(v14, MEMORY[0x1E69E5428], MEMORY[0x1E69E5380]);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  result = std::vector<long>::__init_with_size[abi:ne200100]<long *,long *>(a1, *v8, v8[1], (v8[1] - *v8) >> 3);
  if (v17)
  {
    return v17(0, v16, 0, 0);
  }

  return result;
}

void sub_1DE2713C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AMCP::Thing::~Thing(va);
  _Unwind_Resume(a1);
}

void AMCP::Implementation::create_vector_of_numbers_from<std::vector<long>,std::vector<short>>(uint64_t a1, void *a2)
{
  if (!a2)
  {
    __assert_rtn("create_vector_of_numbers_from", "Thing.h", 1155, "in_value_ptr != nullptr");
  }

  v3 = a2[1];
  v4 = v3 - *a2;
  if (v3 != *a2)
  {
    if (((v4 >> 3) & 0x8000000000000000) == 0)
    {
      std::allocator<short>::allocate_at_least[abi:ne200100](v4 >> 3);
    }

    std::vector<void *>::__throw_length_error[abi:ne200100]();
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  std::vector<short>::__init_with_size[abi:ne200100]<short *,short *>(a1, 0, 0, 0);
  *(a1 + 32) = AMCP::Implementation::In_Place_Storage<std::vector<short>>::dispatch;
}