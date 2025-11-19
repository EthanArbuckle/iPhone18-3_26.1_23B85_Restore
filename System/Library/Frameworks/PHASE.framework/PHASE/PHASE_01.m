void Phase::ActionTreeManager::AllocateActionTreeObject(Phase::ActionTreeManager *this, PHASESoundEventNodeAsset *a2, PHASESoundEvent *a3)
{
  a2;
  a3;
  std::allocate_shared[abi:ne200100]<Phase::ActionTreeObject,std::allocator<Phase::ActionTreeObject>,PHASESoundEventNodeAsset * {__strong}&,PHASESoundEvent * {__strong}&,0>();
}

uint64_t Phase::ActionTreeManager::RegisterActionTreeInstance(uint64_t a1, uint64_t *a2)
{
  v4 = 0;
  v42 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = 0xCBF29CE484222325;
  do
  {
    v6 = 0x100000001B3 * (v6 ^ *(v5 + v4++));
  }

  while (v4 != 16);
  v7 = *(a1 + 48);
  if (!*&v7)
  {
    goto LABEL_24;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = v6;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*(a1 + 40) + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_24:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v8.u32[0] > 1uLL)
    {
      if (v12 >= *&v7)
      {
        v12 %= *&v7;
      }
    }

    else
    {
      v12 &= *&v7 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_24;
    }

LABEL_23:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_24;
    }
  }

  if (v11[2] != *v5 || v11[3] != v5[1])
  {
    goto LABEL_23;
  }

  v14 = a2[1];
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = v11[5];
  v11[4] = v5;
  v11[5] = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  WeakRetained = objc_loadWeakRetained((*a2 + 304));
  v17 = [WeakRetained pushStreamNodes];
  v18 = [v17 allKeys];

  v20 = [v18 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (!v20)
  {
    v32 = 1;
    goto LABEL_45;
  }

  v36 = *v38;
  obj = v18;
LABEL_31:
  v21 = 0;
  v35 = v20;
  while (1)
  {
    if (*v38 != v36)
    {
      objc_enumerationMutation(obj);
    }

    v22 = *(*(&v37 + 1) + 8 * v21);
    StringHashId = Phase::GetStringHashId(v22, v19);
    v24 = *a2;
    v25 = *(*a2 + 24);
    if (*(v25 + 40))
    {
      break;
    }

LABEL_40:
    if (++v21 == v35)
    {
      v18 = obj;
      v20 = [obj countByEnumeratingWithState:&v37 objects:v41 count:16];
      v32 = 1;
      if (!v20)
      {
        goto LABEL_45;
      }

      goto LABEL_31;
    }
  }

  v26 = StringHashId;
  v27 = 0;
  v28 = 0;
  while (2)
  {
    if (v26 != *(*(v25 + 48) + 8 * v28))
    {
LABEL_39:
      ++v28;
      v25 = *(v24 + 24);
      v27 += 160;
      if (v28 >= *(v25 + 40))
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v29 = objc_loadWeakRetained((v24 + 304));
  v30 = [v29 pushStreamNodes];
  v31 = [v30 objectForKeyedSubscript:v22];

  LODWORD(v29) = Phase::ActionTreeManager::ConfigureStreamNode(a1, *a2, *(*a2 + 56) + v27, v31, 3);
  if (v29)
  {
    v24 = *a2;
    goto LABEL_39;
  }

  v32 = 0;
  v18 = obj;
LABEL_45:

  return v32;
}

void Phase::ActionTreeManager::GetAllValidSubmixIds(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *&v21 = a2;
  *(&v21 + 1) = a3;
  v5 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), &v21);
  if (v5)
  {
    v6 = v5[4];
    if (v6)
    {
      v7 = *(v6 + 24);
      if (*(v7 + 96))
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        do
        {
          v11 = *(v6 + 80) + v8;
          v21 = *(v11 + 8);
          if (*v11 == 1)
          {
            v12 = *(a4 + 16);
            if (v9 >= v12)
            {
              v13 = (v9 - *a4) >> 4;
              if ((v13 + 1) >> 60)
              {
                std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
              }

              v14 = v12 - *a4;
              v15 = v14 >> 3;
              if (v14 >> 3 <= (v13 + 1))
              {
                v15 = v13 + 1;
              }

              if (v14 >= 0x7FFFFFFFFFFFFFF0)
              {
                v16 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v16 = v15;
              }

              if (v16)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::UniqueObjectId>>(a4, v16);
              }

              v17 = (16 * v13);
              *v17 = v21;
              v9 = (16 * v13 + 16);
              v18 = *(a4 + 8) - *a4;
              v19 = 16 * v13 - v18;
              memcpy(v17 - v18, *a4, v18);
              v20 = *a4;
              *a4 = v19;
              *(a4 + 8) = v9;
              *(a4 + 16) = 0;
              if (v20)
              {
                operator delete(v20);
              }
            }

            else
            {
              *v9++ = *(v11 + 8);
            }

            *(a4 + 8) = v9;
            v7 = *(v6 + 24);
          }

          ++v10;
          v8 += 96;
        }

        while (v10 < *(v7 + 96));
      }
    }
  }
}

uint64_t Phase::ActionTreeManager::PrepareActionTree(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = *MEMORY[0x277D85DE8];
  *v11 = a2;
  *&v11[8] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), v11);
  if (result)
  {
    result = *(result + 32);
    if (result)
    {
      *(result + 152) = a4;
      *(result + 176) = a5;
      v8 = *(result + 144);
      if ((v8 - 2) < 9 || v8 == 0)
      {
        v10 = **(Phase::Logger::GetInstance(result) + 704);
        result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
        if (result)
        {
          *v11 = 136315394;
          *&v11[4] = "ActionTreeManager.mm";
          *&v11[12] = 1024;
          *&v11[14] = 4397;
          _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Prepare called on action tree at the wrong time\n", v11, 0x12u);
          return 0;
        }
      }

      else
      {
        if (v8 == 1)
        {
          Phase::ActionTreeObject::SetRunState(result, 2u);
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t Phase::ActionTreeManager::StartActionTree(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v12 = a4;
  *v20 = a2;
  *&v20[8] = a3;
  v13 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), v20);
  if (!v13)
  {
    goto LABEL_5;
  }

  v14 = *(v13 + 4);
  if (!v14)
  {
    goto LABEL_5;
  }

  v15 = *(v14 + 144);
  if (v15 > 0xA)
  {
    goto LABEL_12;
  }

  if (((1 << v15) & 0x6F0) == 0)
  {
    if (((1 << v15) & 0x10C) != 0)
    {
      *(v14 + 160) = a5;
      *(v14 + 184) = a6;
      objc_storeStrong((v14 + 200), a4);
      *(v14 + 208) = 1;
      *(v14 + 328) = 1;
LABEL_16:
      v16 = 1;
      goto LABEL_6;
    }

    if (v15 == 1)
    {
      v18 = **(Phase::Logger::GetInstance(v13) + 704);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_5;
      }

      *v20 = 136315394;
      *&v20[4] = "ActionTreeManager.mm";
      *&v20[12] = 1024;
      *&v20[14] = 4421;
      v19 = "%25s:%-5d Internal -- Start called on action tree before preparation\n";
      goto LABEL_15;
    }

LABEL_12:
    if (*(v14 + 144))
    {
      goto LABEL_16;
    }

    v18 = **(Phase::Logger::GetInstance(v13) + 704);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_5;
    }

    *v20 = 136315394;
    *&v20[4] = "ActionTreeManager.mm";
    *&v20[12] = 1024;
    *&v20[14] = 4427;
    v19 = "%25s:%-5d Start called on action tree before initialization\n";
LABEL_15:
    _os_log_impl(&dword_23A302000, v18, OS_LOG_TYPE_ERROR, v19, v20, 0x12u);
  }

LABEL_5:
  v16 = 0;
LABEL_6:

  return v16;
}

uint64_t Phase::ActionTreeManager::PauseActionTree(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[0] = a2;
  v8[1] = a3;
  v3 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), v8);
  if (v3)
  {
    v4 = v3[4];
    if (v4)
    {
      v5 = *(v4 + 144);
      if (v5 <= 8)
      {
        v6 = 1 << v5;
        if ((v6 & 0x98) != 0)
        {
          Phase::ActionTreeObject::SetRunState(v3[4], 5u);
LABEL_8:
          *(v4 + 328) = 0;
          return 0;
        }

        if ((v6 & 0x104) != 0)
        {
          *(v4 + 208) = 0;
          goto LABEL_8;
        }
      }
    }
  }

  return 0;
}

uint64_t Phase::ActionTreeManager::UnPauseActionTree(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  v13[0] = a2;
  v13[1] = a3;
  v9 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), v13);
  if (v9)
  {
    v10 = v9[4];
    if (v10)
    {
      v11 = *(v10 + 144);
      if (v11 <= 8)
      {
        if (((1 << v11) & 0x10C) != 0)
        {
          if ((*(v10 + 320) & 1) != 0 || *(v10 + 145) == 1)
          {
            *(v10 + 328) = 1;
          }

          *(v10 + 208) = 1;
          goto LABEL_16;
        }

        if (((1 << v11) & 0x50) != 0)
        {
LABEL_6:
          if (*(v10 + 320) == 1)
          {
            *(v10 + 328) = 1;
          }

          else
          {
            Phase::ActionTreeObject::SetRunState(v9[4], 7u);
          }

LABEL_16:
          objc_storeStrong((v10 + 200), a4);
          *(v10 + 329) = 0;
          goto LABEL_17;
        }

        if (v11 == 5)
        {
          if (!v8)
          {
            goto LABEL_6;
          }

          objc_storeStrong((v10 + 200), a4);
          *(v10 + 329) = 1;
        }
      }
    }
  }

LABEL_17:

  return 0;
}

uint64_t Phase::ActionTreeManager::StopActionTree(uint64_t a1, uint64_t a2, uint64_t a3, PHASESoundEventPrepareHandlerReason a4, PHASESoundEventStartHandlerReason a5)
{
  v11[0] = a2;
  v11[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), v11);
  if (result)
  {
    v8 = *(result + 32);
    if (v8)
    {
      v9 = *(v8 + 144);
      if (v9 <= 2)
      {
        v10 = 0;
        if (v9 >= 2)
        {
          if (v9 != 2)
          {
            return 1;
          }

          Phase::ActionTreeObject::CallPrepareCallback(*(result + 32), 1, a4);
          Phase::ActionTreeObject::CallCompleteCallback(v8, a5);
          v10 = 0;
        }

LABEL_9:
        Phase::ActionTreeObject::SetRunState(v8, v10);
        return 1;
      }

      if (v9 - 3 < 5)
      {
LABEL_5:
        v10 = 9;
        goto LABEL_9;
      }

      if (v9 - 9 >= 2)
      {
        if (v9 != 8)
        {
          return 1;
        }

        Phase::ActionTreeObject::CallPrepareCallback(*(result + 32), 1, a4);
        goto LABEL_5;
      }
    }

    return 0;
  }

  return result;
}

void *Phase::ActionTreeObject::CallPrepareCallback(void *this, uint64_t a2, PHASESoundEventPrepareHandlerReason a3)
{
  v3 = this[19];
  if (v3)
  {
    v5 = this;
    v6 = this[7];
    v7 = this[8];
    if (v6 == v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        if (*(v6 + 120) > v8)
        {
          v8 = *(v6 + 120);
        }

        v6 += 160;
      }

      while (v6 != v7);
    }

    this = v3(*this, this[1], v8, a2, a3, this[22]);
    v5[19] = 0;
    v5[22] = 0;
  }

  return this;
}

void *Phase::ActionTreeObject::CallCompleteCallback(void *this, PHASESoundEventStartHandlerReason a2)
{
  v2 = this[20];
  if (v2)
  {
    v3 = this;
    v4 = this[7];
    v5 = -1;
    while (v4 != this[8])
    {
      v6 = *(v4 + 128);
      if (v6 >= v5)
      {
        v7 = v5;
      }

      else
      {
        v7 = *(v4 + 128);
      }

      if (v6)
      {
        v5 = v7;
      }

      v4 += 160;
    }

    v8 = v5;
    this = v2(*this, this[1], &v8, a2, this[23]);
    v3[20] = 0;
    v3[23] = 0;
  }

  return this;
}

uint64_t Phase::ActionTreeManager::SeekActionTree(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, void, uint64_t, uint64_t), uint64_t a5, double a6)
{
  v13[0] = a2;
  v13[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), v13);
  if (result)
  {
    v10 = *(result + 32);
    if (v10)
    {
      v11 = *(v10 + 144);
      if (v11 - 1 >= 8)
      {
        if (v11 <= 0xA && ((1 << v11) & 0x601) != 0)
        {
          return 0;
        }
      }

      else
      {
        if ((*(v10 + 320) & 1) != 0 || *(v10 + 168))
        {
          if (a4)
          {
            a4(*v10, *(v10 + 8), 1, a5);
          }

          return 0;
        }

        *(v10 + 168) = a4;
        *(v10 + 192) = a5;
        *(v10 + 312) = a6;
        *(v10 + 320) = 1;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

void *Phase::ActionTreeManager::SetAmbientOrientation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v8[0] = a2;
  v8[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), v8);
  if (result)
  {
    result = result[4];
    if (result)
    {
      if (result[3])
      {
        return Phase::ActionTreeObject::SetAmbientOrientation(result, a4, a5);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL Phase::ActionTreeObject::SetAmbientOrientation(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = *(a1 + 24);
  v4 = *(v3 + 96);
  if (v4)
  {
    v5 = 0;
    v6 = (*(v3 + 104) + 8);
    v7 = 1;
    v8 = 1;
    while (*(v6 - 1) != a2 || *v6 != 2)
    {
      v8 = v7 < v4;
      v5 += 96;
      ++v7;
      v6 += 743;
      if (96 * v4 == v5)
      {
        return 0;
      }
    }

    v9 = (*(a1 + 80) + v5);
    v9[16] = *a3;
    v9[17] = a3[1];
    v9[18] = a3[2];
    v9[19] = a3[3];
  }

  else
  {
    return 0;
  }

  return v8;
}

BOOL Phase::ActionTreeManager::UpdateActionTree(Phase::Logger **a1, void *a2, void *a3, uint64_t a4, Phase::ActionTreeObject *a5)
{
  v89 = *MEMORY[0x277D85DE8];
  v9 = a2[25];
  if (v9)
  {
    memset(__src, 0, 64);
    [v9 audioTimeStamp];
    *(a2 + 209) = 0;
  }

  if (*(a2 + 320) == 1)
  {
    v10 = *(a2 + 144);
    v11 = v10 > 0xA;
    v12 = (1 << v10) & 0x6A4;
    if (v11 || v12 == 0)
    {
      Phase::ActionTreeObject::SetRunState(a2, 8u);
      if (*(a2[3] + 40))
      {
        v55 = 0;
        v56 = 0;
        while (2)
        {
          v74 = v56;
          v57 = 160 * v55 + 88;
          while (1)
          {
            v58 = a2[7];
            v59 = v58 + v57;
            v60 = *(v58 + v57 - 64);
            if (v60 == 5)
            {
              Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeSeekState(v59 - 88, 3u);
              v60 = *(v59 - 64);
            }

            v11 = v60 > 6;
            v61 = (1 << v60) & 0x63;
            if (v11 || v61 == 0)
            {
              break;
            }

            ++v55;
            v57 += 160;
            if (v55 >= *(a2[3] + 40))
            {
              if ((v74 & 1) == 0)
              {
                goto LABEL_8;
              }

              goto LABEL_117;
            }
          }

          v75 = v58 + v57;
          Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeSeekState(v58 + v57 - 88, 1u);
          __src[0] = *(v58 + v57 - 80);
          if ((a2[40] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          *&__src[1] = a2[39];
          memset(&__src[1] + 8, 0, 48);
          *(&__src[4] + 8) = 0u;
          v63 = Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a3, 6u, __src, 0x58uLL);
          if (*(v58 + v57 - 56))
          {
            *(v58 + v57 - 40) = 1;
          }

          if ((a2[40] & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          *(v58 + v57 - 16) = a2[39];
          v64 = **(Phase::Logger::GetInstance(v63) + 704);
          v65 = v64;
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
          {
            v66 = *(v75 - 80);
            v67 = *(v58 + v57 - 16);
            v68 = *(v58 + v57);
            v69 = *(v75 - 64);
            *buf = 136316418;
            v78 = "ActionTreeManager.mm";
            v79 = 1024;
            v80 = 5003;
            v81 = 2048;
            v82 = v66;
            v83 = 2048;
            v84 = v67;
            v85 = 1024;
            v86 = v68;
            v87 = 1024;
            v88 = v69;
            _os_log_impl(&dword_23A302000, v64, OS_LOG_TYPE_DEFAULT, "%25s:%-5d generatorId %llu: request seek to time %.2fs, node type %hhd, state %hhd", buf, 0x32u);
          }

          ++v55;
          v56 = 1;
          if (v55 < *(a2[3] + 40))
          {
            continue;
          }

          break;
        }

LABEL_117:
        Phase::ActionTreeObject::SetSeekState(a2, 1);
        if (*(a2 + 320) == 1)
        {
          *(a2 + 320) = 0;
        }
      }
    }
  }

LABEL_8:
  v14 = *(a2 + 144);
  if (v14 <= 5)
  {
    if (*(a2 + 144) > 3u)
    {
      if (v14 == 4)
      {
        v30 = a2[3];
        v31 = *(v30 + 40);
        if (v31)
        {
          v32 = *(v30 + 112);
          v33 = (a2[7] + 24);
          v34 = 1;
          do
          {
            v36 = *v33;
            v33 += 160;
            v35 = v36;
            if (v32)
            {
              if (v35)
              {
                v34 &= v35 == 1;
              }
            }

            else
            {
              v34 &= v35 == 0;
            }

            --v31;
          }

          while (v31);
          if ((v34 & 1) == 0)
          {
            result = Phase::ActionTreeManager::ExecuteTree(a1, a2, a3, a4, a5);
            if (!result)
            {
              return result;
            }

            Phase::ActionTreeManager::UpdateGeoQueries(a1, a2);
            return 1;
          }
        }

        goto LABEL_65;
      }

      if (v14 != 5)
      {
        return 1;
      }

      v22 = a2[3];
      if (*(v22 + 40))
      {
        v23 = 0;
        v24 = 0;
        do
        {
          v25 = a2[7];
          if (*(v25 + v23) == 1)
          {
            __src[0] = *(v25 + v23 + 8);
            Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a3, 4u, __src, 0x10uLL);
            v22 = a2[3];
          }

          ++v24;
          v23 += 160;
        }

        while (v24 < *(v22 + 40));
      }

      Phase::ActionTreeObject::SetRunState(a2, 6u);
      *(a2 + 328) = 0;
      if (*(a2 + 329) & 1) == 0 || (*(a2 + 209))
      {
        return 1;
      }

      result = Phase::ActionTreeManager::StartReadyVoices(a2, a3);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v14 == 2)
      {
        if (a2[11] != a2[10])
        {
          v26 = 0;
          v27 = 80;
          do
          {
            Phase::ActionTreeManager::UpdateGeoQueries(a1, a2);
            v28 = a2[10];
            v29 = *(v28 + v27);
            if (v29 == 1)
            {
              return 1;
            }

            if (v29 == 3)
            {
              return 0;
            }

            ++v26;
            v27 += 96;
          }

          while (0xAAAAAAAAAAAAAAABLL * ((a2[11] - v28) >> 5) > v26);
        }

        *&__src[0] = 0;
        *(__src + 8) = *(a4 + 8);
        *(&__src[1] + 8) = *(a4 + 24);
        *(&__src[2] + 8) = *(a4 + 40);
        *(&__src[3] + 8) = *(a4 + 56);
        result = Phase::ActionTreeManager::ExecuteTree(a1, a2, a3, __src, a5);
        if (!result)
        {
          return result;
        }

        Phase::ActionTreeObject::SetRunState(a2, 8u);
        if (*(a2 + 208) != 1)
        {
          return 1;
        }

        *&__src[0] = 0;
        *(__src + 8) = *(a4 + 8);
        *(&__src[1] + 8) = *(a4 + 24);
        *(&__src[2] + 8) = *(a4 + 40);
        *(&__src[3] + 8) = *(a4 + 56);
        return (Phase::ActionTreeManager::UpdateActionTree(a1, a2, a3, __src) & 1) != 0;
      }

      if (v14 != 3 || (*(a2 + 209) & 1) != 0)
      {
        return 1;
      }

      if (*(a2 + 329) != 1)
      {
        if (*(a2 + 208) != 1)
        {
          return 1;
        }

        result = Phase::ActionTreeManager::StartReadyVoices(a2, a3);
        if (result)
        {
          Phase::ActionTreeObject::SetRunState(a2, 4u);
          *&__src[0] = 0;
          *(__src + 8) = *(a4 + 8);
          *(&__src[1] + 8) = *(a4 + 24);
          *(&__src[2] + 8) = *(a4 + 40);
          *(&__src[3] + 8) = *(a4 + 56);
          result = Phase::ActionTreeManager::ExecuteTree(a1, a2, a3, __src, v72);
          if (result)
          {
            *(a2 + 328) = 1;
            return 1;
          }
        }

        return result;
      }

      result = Phase::ActionTreeManager::StartReadyVoices(a2, a3);
      if (!result)
      {
        return result;
      }
    }

LABEL_86:
    Phase::ActionTreeObject::SetRunState(a2, 4u);
    *(a2 + 164) = 1;
    return 1;
  }

  if (*(a2 + 144) <= 7u)
  {
    if (v14 == 6)
    {
      if (*(a2 + 329) != 1 || (*(a2 + 209) & 1) != 0)
      {
        return 1;
      }

      result = Phase::ActionTreeManager::StartReadyVoices(a2, a3);
      if (!result)
      {
        return result;
      }
    }

    else
    {
      if (v14 != 7 || (*(a2 + 209) & 1) != 0)
      {
        return 1;
      }

      result = Phase::ActionTreeManager::StartReadyVoices(a2, a3);
      if (!result)
      {
        return result;
      }
    }

    goto LABEL_86;
  }

  if (v14 != 8)
  {
    if (v14 == 9)
    {
      v48 = a2[3];
      if (*(v48 + 40))
      {
        v49 = 0;
        v50 = 0;
        do
        {
          v51 = a2[7] + v49;
          v52 = *(v51 + 24);
          v11 = v52 > 6;
          v53 = (1 << v52) & 0x43;
          if (v11 || v53 == 0)
          {
            __src[0] = *(v51 + 8);
            Phase::MessagePipeWriter<Phase::ActionTreeServerCommand>::WriteMessage(a3, 3u, __src, 0x18uLL);
            Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(a2[7] + v49, 6u);
            v48 = a2[3];
          }

          ++v50;
          v49 += 160;
        }

        while (v50 < *(v48 + 40));
      }

      Phase::ActionTreeObject::SetRunState(a2, 0xAu);
      return 1;
    }

    if (v14 != 10)
    {
      return 1;
    }

    v15 = *(a2[3] + 40);
    if (v15)
    {
      v16 = (a2[7] + 24);
      do
      {
        v17 = *v16;
        v16 += 160;
        v18 = (1 << v17) & 0x103;
        if (v17 > 8 || v18 == 0)
        {
          return 1;
        }
      }

      while (--v15);
    }

    if (*(a2 + 145) || *(a2 + 320) == 1)
    {
      v20 = a2[21];
      if (v20)
      {
        v20(*a2, a2[1], 0, a2[24]);
        a2[21] = 0;
        a2[24] = 0;
      }
    }

LABEL_65:
    Phase::ActionTreeObject::CallCompleteCallback(a2, PHASESoundEventStartHandlerReasonFinishedPlaying);
    Phase::ActionTreeManager::DestroySubmixes(a2, a3);
    Phase::ActionTreeObject::SetRunState(a2, 0);
    return 1;
  }

  v37 = *(a2[3] + 40);
  if (v37)
  {
    v38 = (a2[7] + 25);
    while (*(v38 - 1) != 2 && *v38 != 1)
    {
      v38 += 160;
      if (!--v37)
      {
        if (!*(a2 + 145))
        {
          goto LABEL_130;
        }

        v39 = 0;
        v40 = 0;
        v41 = 0;
        do
        {
          v42 = a2[7] + v39;
          v43 = *(v42 + 25);
          if (v43 == 1)
          {
            v44 = 1;
          }

          else
          {
            v44 = v41;
          }

          if (v43 == 3)
          {
            v41 = 1;
          }

          else
          {
            v41 = v44;
          }

          Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeSeekState(v42, 0);
          ++v40;
          v39 += 160;
        }

        while (v40 < *(a2[3] + 40));
        if ((v41 & 1) == 0)
        {
          goto LABEL_120;
        }

        v46 = a2 + 21;
        v45 = a2[21];
        if (!v45)
        {
          goto LABEL_123;
        }

        v47 = a2 + 24;
        v45(*a2, a2[1], 0, a2[24]);
        goto LABEL_122;
      }
    }

    return 1;
  }

  if (*(a2 + 145))
  {
LABEL_120:
    v46 = a2 + 21;
    v70 = a2[21];
    if (v70)
    {
      v47 = a2 + 24;
      v70(*a2, a2[1], 2, a2[24]);
LABEL_122:
      *v46 = 0;
      *v47 = 0;
    }

LABEL_123:
    Phase::ActionTreeObject::SetSeekState(a2, 0);
    v71 = 0;
  }

  else
  {
LABEL_130:
    v71 = 1;
  }

  if (*(a2 + 208) != 1 || (*(a2 + 209) & 1) != 0)
  {
    Phase::ActionTreeObject::SetRunState(a2, 3u);
LABEL_134:
    Phase::ActionTreeObject::CallPrepareCallback(a2, 0, PHASESoundEventPrepareHandlerReasonPrepared);
    return 1;
  }

  if ((v71 & 1) == 0)
  {
    if ((a2[41] & 1) != 0 || *(a2 + 329) == 1)
    {
      result = Phase::ActionTreeManager::StartReadyVoices(a2, a3);
      if (!result)
      {
        return result;
      }

      Phase::ActionTreeObject::SetRunState(a2, 4u);
      *(a2 + 164) = 1;
    }

    else
    {
      Phase::ActionTreeObject::SetRunState(a2, 6u);
    }

LABEL_145:
    *&__src[0] = 0;
    *(__src + 8) = *(a4 + 8);
    *(&__src[1] + 8) = *(a4 + 24);
    *(&__src[2] + 8) = *(a4 + 40);
    *(&__src[3] + 8) = *(a4 + 56);
    if (Phase::ActionTreeManager::ExecuteTree(a1, a2, a3, __src, v73))
    {
      goto LABEL_134;
    }

    return 0;
  }

  result = Phase::ActionTreeManager::StartReadyVoices(a2, a3);
  if (result)
  {
    Phase::ActionTreeObject::SetRunState(a2, 4u);
    *(a2 + 328) = 1;
    goto LABEL_145;
  }

  return result;
}

void Phase::ActionTreeManager::UpdateActionTrees(Phase::Logger *a1, void *a2, uint64_t a3)
{
  Instance = Phase::Logger::GetInstance(a1);
  v7 = os_signpost_id_generate(**(Instance + 912));
  v8 = Phase::Logger::GetInstance(v7);
  if (*(v8 + 920) == 1)
  {
    v9 = **(Phase::Logger::GetInstance(v8) + 912);
    v10 = v9;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, "Phase_ActionTree_Update", "Action Tree Update", buf, 2u);
    }
  }

  v11 = Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(a1);
  v13 = *(a1 + 7);
  if (v13)
  {
    do
    {
      while (1)
      {
        v14 = *(v13 + 32);
        if (*(v14 + 144) && !Phase::ActionTreeManager::UpdateActionTree(a1, v14, a2, a3, v12))
        {
          Phase::ActionTreeManager::StopActionTree(a1, *(v13 + 16), *(v13 + 24), PHASESoundEventPrepareHandlerReasonFailure, PHASESoundEventStartHandlerReasonFailure);
        }

        v11 = *(v13 + 32);
        if (!*(v11 + 144))
        {
          break;
        }

        v13 = *v13;
        if (!v13)
        {
          goto LABEL_14;
        }
      }

      Phase::ActionTreeManager::DestroySubmixes(v11, a2);
      Phase::ActionTreeManager::ReleaseActionTreeObject(a1, *(v13 + 32));
      v11 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::erase(a1 + 5, v13);
      v13 = v11;
    }

    while (v11);
LABEL_14:
    for (i = *(a1 + 7); ; i = v11)
    {
      while (1)
      {
        if (!i)
        {
          goto LABEL_31;
        }

        v16 = *(i + 32);
        v17 = *(v16 + 144);
        if (v17 == 4 || v17 == 9)
        {
          break;
        }

LABEL_30:
        i = *i;
      }

      v19 = *(v16[3] + 40);
      if (v19)
      {
        v20 = (v16[7] + 24);
        do
        {
          v21 = *v20;
          v20 += 160;
          if (v21)
          {
            goto LABEL_30;
          }
        }

        while (--v19);
      }

      if (*(v16 + 145) || *(v16 + 320) == 1)
      {
        v22 = v16[21];
        if (v22)
        {
          v22(*v16, v16[1], 0, v16[24]);
          v16[21] = 0;
          v16[24] = 0;
        }
      }

      Phase::ActionTreeObject::CallCompleteCallback(v16, PHASESoundEventStartHandlerReasonFinishedPlaying);
      Phase::ActionTreeManager::DestroySubmixes(v16, a2);
      Phase::ActionTreeManager::ReleaseActionTreeObject(a1, *(i + 32));
      v11 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::erase(a1 + 5, i);
    }
  }

LABEL_31:
  v23 = Phase::Logger::GetInstance(v11);
  if (*(v23 + 920))
  {
    v24 = **(Phase::Logger::GetInstance(v23) + 912);
    v25 = v24;
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
    {
      *v26 = 0;
      _os_signpost_emit_with_name_impl(&dword_23A302000, v25, OS_SIGNPOST_INTERVAL_END, v7, "Phase_ActionTree_Update", &unk_23A5C28A2, v26, 2u);
    }
  }
}

uint64_t Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 16) < 1)
  {
    v3 = 0;
  }

  else
  {
    v2 = 0;
    LODWORD(v3) = 0;
    do
    {
      v3 = Phase::CommandQueue<Phase::LockFreeQueueMPSC>::ExecuteCommands(*(*(a1 + 8) + 8 * v2++)) + v3;
    }

    while (v2 < *(a1 + 16));
  }

  v4 = 1;
  atomic_compare_exchange_strong((a1 + 32), &v4, 0);
  if (v4 == 1)
  {
    v5 = **(a1 + 24);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v7 = 136315394;
      v8 = "Commandable.hpp";
      v9 = 1024;
      v10 = 285;
      _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d Commandable: Executing pending commands in overflow queue.", &v7, 0x12u);
    }
  }

  return v3;
}

void Phase::ActionTreeManager::ReleaseActionTreeObject(Phase::ActionTreeManager *this, Phase::ActionTreeObject *a2)
{
  v4 = *(a2 + 7);
  v3 = *(a2 + 8);
  if (v3 != v4)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (*(v4 + v6 + 32))
      {
        Phase::ActionTreeManager::StopStreamRenderer(this, (v4 + v6));
        v4 = *(a2 + 7);
        v3 = *(a2 + 8);
      }

      ++v7;
      v6 += 160;
    }

    while (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 5) > v7);
  }

  WeakRetained = objc_loadWeakRetained(a2 + 38);
  [WeakRetained internalCleanup];
}

void *Phase::ActionTreeManager::SetMetaParameter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, double a7)
{
  v15[0] = a2;
  v15[1] = a3;
  result = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), v15);
  if (result)
  {
    v12 = result[4];
    if (v12)
    {
      v13 = *(v12 + 32);
      v14 = *(v12 + 40);
      while (v13 != v14)
      {
        if (**v13 == a4)
        {
          return Phase::SetMetaParameterValue(v13, a5, a6, a7);
        }

        v13 += 8;
      }
    }

    return 0;
  }

  return result;
}

void Phase::ActionTreeManager::LeafNodePrepared(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = *(a1 + 56); i; i = *i)
  {
    v6 = i[4];
    if (*(v6 + 144))
    {
      v8 = *(v6 + 56);
      v7 = *(v6 + 64);
      while (v8 != v7)
      {
        if (*(v8 + 8) == a2 && *(v8 + 16) == a3 && *(v8 + 24) == 2)
        {
          Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v8, 3u);
          *(v8 + 120) = a4;
          return;
        }

        v8 += 160;
      }
    }
  }
}

void Phase::ActionTreeManager::LeafNodeCompleted(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    return;
  }

  while (1)
  {
    v7 = v4[4];
    if (*(v7 + 144))
    {
      v8 = *(v7 + 56);
      v9 = *(v7 + 64) - v8;
      if (v9)
      {
        break;
      }
    }

LABEL_8:
    v4 = *v4;
    if (!v4)
    {
      return;
    }
  }

  v10 = 0;
  v11 = 0xCCCCCCCCCCCCCCCDLL * (v9 >> 5);
  v12 = 1;
  while (1)
  {
    v13 = v8 + 160 * v10;
    if (*(v13 + 8) == a2 && *(v13 + 16) == a3)
    {
      break;
    }

    v10 = v12;
    if (v11 <= v12++)
    {
      goto LABEL_8;
    }
  }

  v15 = *(v13 + 24);
  if (v15 > 4)
  {
    if (*(v13 + 24) <= 6u)
    {
      if (v15 != 5)
      {
        if (v15 == 6)
        {
          v16 = v8 + 160 * v10;
          v17 = 1;
LABEL_26:
          Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v16, v17);
          goto LABEL_27;
        }

        goto LABEL_28;
      }

LABEL_23:
      v16 = v8 + 160 * v10;
      v17 = 0;
      goto LABEL_26;
    }

    if (v15 == 7)
    {
      v16 = v8 + 160 * v10;
      v17 = 8;
      goto LABEL_26;
    }

    if (v15 != 8)
    {
      goto LABEL_28;
    }

LABEL_35:
    std::terminate();
  }

  if (*(v13 + 24) <= 2u)
  {
    if (v15 == 2)
    {
      goto LABEL_23;
    }

    if (v15 != 1)
    {
      goto LABEL_28;
    }

    goto LABEL_35;
  }

  if (v15 == 3)
  {
    goto LABEL_23;
  }

  if (v15 == 4)
  {
    if ((*(*(v7 + 24) + 112) & 1) == 0 && *(v13 + 112) != 1 && (*(v13 + 56) - 1) < 3)
    {
      Phase::ActionTreeObject::LeafNodeInfo::SetLeafNodeState(v13, 1u);
      *(v13 + 64) = 1;
LABEL_27:
      v15 = *(v13 + 24);
      goto LABEL_28;
    }

    goto LABEL_23;
  }

LABEL_28:
  if (v15 <= 1)
  {
    Phase::ActionTreeManager::StopStreamRenderer(a1, v13);
  }

  *(v13 + 128) = *a4;
}

void Phase::ActionTreeManager::StopStreamRenderer(uint64_t a1, uint64_t *a2)
{
  caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::remove(a1 + 80, a2[1], a2[2]);
  caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::remove(a1 + 80, a2[1], a2[2]);
  v4 = a2[5];
  a2[4] = 0;
  a2[5] = 0;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

void Phase::ActionTreeManager::Reset(Phase::ActionTreeManager *this)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(this + 4) >= 1)
  {
    v2 = 0;
    do
    {
      Phase::CommandQueue<Phase::LockFreeQueueMPSC>::Reset(*(*(this + 1) + 8 * v2++));
    }

    while (v2 < *(this + 4));
  }

  for (i = *(this + 7); i; i = *i)
  {
    v4 = i[4];
    if (*(v4 + 144))
    {
      if (*(v4 + 145) || *(v4 + 320) == 1)
      {
        v5 = v4[21];
        if (v5)
        {
          v5(*v4, v4[1], 0, v4[24]);
          v4[21] = 0;
          v4[24] = 0;
        }
      }

      Phase::ActionTreeObject::CallPrepareCallback(v4, 1, PHASESoundEventPrepareHandlerReasonPrepared);
      v6 = Phase::ActionTreeObject::CallCompleteCallback(v4, PHASESoundEventStartHandlerReasonFinishedPlaying);
      Instance = Phase::Logger::GetInstance(v6);
      if (*(Instance + 1638) == 1)
      {
        v8 = **(Phase::Logger::GetInstance(Instance) + 448);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *v4;
          *buf = 136315650;
          v13 = "ActionTreeManager.mm";
          v14 = 1024;
          v15 = 5741;
          v16 = 2048;
          v17 = v9;
          _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu) - sound event was stopped by engine teardown", buf, 0x1Cu);
        }
      }

      Phase::ActionTreeObject::SetRunState(v4, 0);
    }

    Phase::ActionTreeManager::ReleaseActionTreeObject(this, v4);
  }

  if (*(this + 8))
  {
    std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::__deallocate_node(this + 40, *(this + 7));
    *(this + 7) = 0;
    v10 = *(this + 6);
    if (v10)
    {
      for (j = 0; j != v10; ++j)
      {
        *(*(this + 5) + 8 * j) = 0;
      }
    }

    *(this + 8) = 0;
  }
}

uint64_t Phase::Commandable<128,Phase::LockFreeQueueMPSC>::FlushCommands(uint64_t result)
{
  if (*(result + 16) >= 1)
  {
    v1 = result;
    v2 = 0;
    do
    {
      result = Phase::CommandQueue<Phase::LockFreeQueueMPSC>::Reset(*(*(v1 + 8) + 8 * v2++));
    }

    while (v2 < *(v1 + 16));
  }

  return result;
}

uint64_t Phase::ActionTreeManager::ScheduleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t a7, uint64_t a8, void *a9)
{
  v16 = a5;
  v17 = a6;
  v18 = a9;
  v31[0] = a2;
  v31[1] = a3;
  v19 = std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>((a1 + 40), v31);
  if (v19 && (v20 = *(v19 + 32)) != 0)
  {
    v21 = *(v20 + 24);
    v22 = *(v21 + 40);
    if (v22)
    {
      v23 = *(v21 + 48);
      v24 = 1;
      v25 = 32;
      v26 = v22;
      v27 = 1;
      while (1)
      {
        v28 = *v23++;
        if (v28 == a4)
        {
          v19 = *(*(v20 + 56) + v25);
          if (v19)
          {
            break;
          }
        }

        v27 = v24++ < v22;
        v25 += 160;
        if (!--v26)
        {
          goto LABEL_8;
        }
      }

      LOBYTE(v19) = Phase::Controller::StreamRenderer::ScheduleBuffer(v19, v16, v17, a7, a8, v18);
    }

    else
    {
LABEL_8:
      v27 = 0;
    }

    v29 = v27 & v19;
  }

  else
  {
    v29 = 0;
  }

  return v29 & 1;
}

void caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::remove(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = (a1 + 48);
  v21 = 1;
  std::mutex::lock((a1 + 48));
  v6 = atomic_load((a1 + 8));
  if (v6)
  {
    SlotForKey = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::findSlotForKey(v6, a2, a3);
    if (SlotForKey)
    {
      v9 = v8;
      atomic_store(0xFFFFFFFFFFFFFFFFLL, (v6 + 8 * HIDWORD(SlotForKey) + 16));
      if (v8)
      {
        v10 = atomic_load((a1 + 16));
        if (v10 >= 1)
        {
          do
          {
            __ns.__rep_ = 50000;
            std::this_thread::sleep_for (&__ns);
            v11 = atomic_load((a1 + 16));
          }

          while (v11 > 0);
        }

        if (atomic_load(v9))
        {
          std::mutex::unlock(v20);
          v21 = 0;
          while (atomic_load(v9))
          {
            __ns.__rep_ = 500000;
            std::this_thread::sleep_for (&__ns);
          }

          std::unique_lock<std::mutex>::lock[abi:ne200100](&v20);
          v6 = atomic_load((a1 + 8));
        }

        caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::element_t::release(v9);
        v15 = *a1 - 1;
        *a1 = v15;
        if (v6)
        {
          v16 = *(v6 + 8);
          if (v16 >= 9 && 16 * v15 / v16 <= 2)
          {
            caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::rehash(a1, v16 >> 1);
          }
        }
      }
    }
  }

  v17 = atomic_load((a1 + 16));
  if (v17 <= 0)
  {
    v19 = *(a1 + 24);
    for (i = *(a1 + 32); i != v19; std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>,void,0>(i))
    {
      --i;
    }

    *(a1 + 32) = v19;
  }

  if (v21 == 1)
  {
    std::mutex::unlock(v20);
  }
}

void sub_23A317ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, char a11)
{
  if (a11 == 1)
  {
    std::mutex::unlock(a10);
  }

  _Unwind_Resume(exception_object);
}

void Phase::ActionTreeManager::SubmitGeneratorBufferCompletedResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  if (v3)
  {
    while (1)
    {
      v7 = v3[4];
      if (*(v7 + 144))
      {
        v9 = *(v7 + 56);
        v8 = *(v7 + 64);
        if (v8 != v9)
        {
          break;
        }
      }

LABEL_13:
      v3 = *v3;
      if (!v3)
      {
        return;
      }
    }

    v10 = 0;
    v11 = 1;
    while (1)
    {
      v12 = v9 + 160 * v10;
      if (*(v12 + 8) == a2 && *(v12 + 16) == a3 && *(v12 + 32) && *(v12 + 24) - 2 <= 2 && *(v12 + 48) == 1)
      {
        v13 = *(v12 + 72);
        v14 = Phase::ActionTreeObject::LeafNodeInfo::GeneratorStreamSeek(v12, *(a1 + 192));
        if (v14)
        {
          v16 = v14;
          v17 = **(Phase::Logger::GetInstance(v14) + 704);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = 136316162;
            v19 = "ActionTreeManager.mm";
            v20 = 1024;
            v21 = 6017;
            v22 = 2048;
            v23 = a2;
            v24 = 2048;
            v25 = v13;
            v26 = 1024;
            v27 = v16;
            _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d SEEK ERROR - generatorId %llu: buffer completion handler, seeking to time %.2fs, result %d", &v18, 0x2Cu);
          }

          return;
        }

        v9 = *(v7 + 56);
        v8 = *(v7 + 64);
      }

      v10 = v11;
      if (0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 5) <= v11++)
      {
        goto LABEL_13;
      }
    }
  }
}

uint64_t Phase::ActionTreeManager::GeneratorStreamSeek(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v4 = *(a1 + 56);
  if (!v4)
  {
    return 1;
  }

  while (1)
  {
    v5 = v4[4];
    if (*(v5 + 144))
    {
      v6 = *(v5 + 56);
      v7 = *(v5 + 64) - v6;
      if (v7)
      {
        break;
      }
    }

LABEL_9:
    v4 = *v4;
    if (!v4)
    {
      return 1;
    }
  }

  v8 = 0;
  v9 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 5);
  v10 = 1;
  while (1)
  {
    v11 = v6 + 160 * v8;
    if (*(v11 + 8) == a2 && *(v11 + 16) == a3 && *(v11 + 32))
    {
      break;
    }

    v8 = v10;
    if (v9 <= v10++)
    {
      goto LABEL_9;
    }
  }

  if ((*(v11 + 48) & 1) == 0)
  {
    std::terminate();
  }

  *(v11 + 72) = a4;
  v14 = *(a1 + 192);

  return Phase::ActionTreeObject::LeafNodeInfo::GeneratorStreamSeek(v11, v14);
}

uint64_t Phase::ActionTreeManager::SubmitGeneratorPlayStateChanged(uint64_t result, uint64_t a2, uint64_t a3, int a4)
{
  if ((*(result + 232) - 1) <= 1)
  {
    v4 = *(result + 56);
    if (v4)
    {
      v7 = a4 & 0xFFFFFFFD;
      do
      {
        v8 = v4[4];
        if (*(v8 + 144))
        {
          v9 = *(v8 + 56);
          if (*(v8 + 64) != v9)
          {
            v10 = 0;
            v11 = 1;
            do
            {
              v12 = v9 + 160 * v10;
              if (*(v12 + 8) == a2 && *(v12 + 16) == a3 && *(v12 + 88) == 4)
              {
                if (v7 == 1)
                {
                  result = Phase::Controller::StreamRenderer::Start(*(v12 + 32));
                }

                else if (!v7)
                {
                  result = Phase::Controller::StreamRenderer::Pause(*(v12 + 32));
                }
              }

              v10 = v11;
              v9 = *(v8 + 56);
            }

            while (0xCCCCCCCCCCCCCCCDLL * ((*(v8 + 64) - v9) >> 5) > v11++);
          }
        }

        v4 = *v4;
      }

      while (v4);
    }
  }

  return result;
}

BOOL Phase::ActionTreeManager::IORenderOutput(uint64_t a1, uint64_t a2, uint64_t a3, const AudioTimeStamp *a4, uint64_t a5, unsigned int *a6)
{
  v8 = (a1 + 96);
  atomic_fetch_add((a1 + 96), 1u);
  v9 = atomic_load((a1 + 88));
  if (!v9)
  {
    v14 = 0;
    goto LABEL_6;
  }

  caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::findSlotForKey(v9, a2, a3);
  v14 = v12;
  if (!v12)
  {
LABEL_6:
    atomic_fetch_add(v8, 0xFFFFFFFF);
    goto LABEL_7;
  }

  atomic_fetch_add(v12, 1u);
  v15 = *(v12 + 24);
  atomic_fetch_add((a1 + 96), 0xFFFFFFFF);
  if (v15)
  {
    v16 = Phase::Controller::StreamRenderer::IORender(v15, a4, a5, a6, v13);
LABEL_15:
    atomic_fetch_add(v14, 0xFFFFFFFF);
    return v16;
  }

LABEL_7:
  if (a6 && *a6)
  {
    v17 = 0;
    v18 = (a6 + 4);
    do
    {
      v16 = *v18 != 0;
      if (!*v18)
      {
        break;
      }

      bzero(*v18, *(v18 - 1));
      ++v17;
      v18 += 2;
    }

    while (v17 < *a6);
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    goto LABEL_15;
  }

  return v16;
}

uint64_t Phase::ActionTreeManager::StopActionTreesWithActionTreeAsset(Phase::ActionTreeManager *this, uint64_t a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = v2[4];
    if (**(v6 + 3) == a2)
    {
      if (Phase::ActionTreeManager::StopByAssetUpdate(this, v6))
      {
        v5 = 1;
      }

      else
      {
        v5 = v5;
      }
    }

    v2 = *v2;
  }

  while (v2);
  return v5;
}

BOOL Phase::ActionTreeManager::StopByAssetUpdate(Phase::ActionTreeManager *this, Phase::ActionTreeObject *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 144);
  if ((v2 - 1) >= 8)
  {
    return (v2 - 9) < 2;
  }

  v5 = **(Phase::Logger::GetInstance(this) + 704);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a2;
    v8 = 136315650;
    v9 = "ActionTreeManager.mm";
    v10 = 1024;
    v11 = 6248;
    v12 = 2048;
    v13 = v6;
    _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Warning: Stopping Action tree %llu due to asset update.", &v8, 0x1Cu);
  }

  Phase::ActionTreeManager::StopActionTree(this, *a2, *(a2 + 1), PHASESoundEventPrepareHandlerReasonPrepared, PHASESoundEventStartHandlerReasonFinishedPlaying);
  return 1;
}

BOOL Phase::ActionTreeManager::StopActionTreesWithSoundAsset(Phase::ActionTreeManager *this, uint64_t a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  do
  {
    v5 = v2[4];
    for (i = *(v5 + 7); ; i += 160)
    {
      if (i == *(v5 + 8))
      {
        result = 0;
        goto LABEL_8;
      }

      if (*(i + 80) == a2)
      {
        break;
      }
    }

    result = Phase::ActionTreeManager::StopByAssetUpdate(this, v5);
LABEL_8:
    v2 = *v2;
    if (v2)
    {
      v8 = !result;
    }

    else
    {
      v8 = 0;
    }
  }

  while (v8);
  return result;
}

uint64_t Phase::ActionTreeManager::StopActionTreesWithGlobalMetaParameterAsset(Phase::ActionTreeManager *this, uint64_t a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = v2[4];
    v7 = *(v6 + 3);
    v8 = *(v7 + 8);
    if (v8)
    {
      v9 = *(v7 + 16);
      while (1)
      {
        v10 = *v9++;
        if (v10 == a2)
        {
          break;
        }

        if (!--v8)
        {
          goto LABEL_11;
        }
      }

      if (Phase::ActionTreeManager::StopByAssetUpdate(this, v6))
      {
        v5 = 1;
      }

      else
      {
        v5 = v5;
      }
    }

LABEL_11:
    v2 = *v2;
  }

  while (v2);
  return v5;
}

uint64_t Phase::ActionTreeManager::StopActionTreesWithListenerSourceId(Phase::ActionTreeManager *this, Handle64 a2)
{
  v2 = *(this + 7);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  do
  {
    v6 = v2[4];
    for (i = *(v6 + 10); i != *(v6 + 11); i += 96)
    {
      if (*(i + 32) == a2.mData || *(i + 24) == a2.mData)
      {
        if (Phase::ActionTreeManager::StopByAssetUpdate(this, v6))
        {
          v5 = 1;
        }

        else
        {
          v5 = v5;
        }

        break;
      }
    }

    v2 = *v2;
  }

  while (v2);
  return v5;
}

void *Phase::ActionTreeManager::GetActiveGroups(void *result, void *a2)
{
  for (i = result[7]; i; i = *i)
  {
    v4 = i[4];
    v5 = *(v4 + 144);
    v6 = v5 > 9;
    v7 = (1 << v5) & 0x230;
    if (!v6 && v7 != 0)
    {
      v9 = *(v4 + 56);
      v10 = *(v4 + 64);
      while (v9 != v10)
      {
        if ((*(v9 + 24) & 0xFC) == 4)
        {
          result = std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(a2, (v9 + 96));
        }

        v9 += 160;
      }
    }
  }

  return result;
}

Phase::Logger *Phase::ActionTreeManager::HandleGeneratorError(Phase::Logger *result, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(result + 7);
  if (v3)
  {
    v4 = result;
    while (2)
    {
      v5 = v3[4];
      v6 = v5[7];
      v7 = v5[8];
      while (v6 != v7)
      {
        if (*(v6 + 8) == a2 && *(v6 + 16) == a3)
        {
          v8 = **(Phase::Logger::GetInstance(result) + 704);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = [v3[4][2] identifier];
            v10 = 136315650;
            v11 = "ActionTreeManager.mm";
            v12 = 1024;
            v13 = 6421;
            v14 = 2112;
            v15 = v9;
            _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Received Generator error.  Stopping action tree instance with action tree UID: %@", &v10, 0x1Cu);
          }

          return Phase::ActionTreeManager::StopActionTree(v4, *v3[4], v3[4][1], PHASESoundEventPrepareHandlerReasonFailure, PHASESoundEventStartHandlerReasonFailure);
        }

        v6 += 160;
      }

      v3 = *v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

Phase::Logger *Phase::ActionTreeManager::HandleSubmixError(Phase::Logger *result, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = *(result + 7);
  if (v3)
  {
    v4 = result;
    while (2)
    {
      v5 = v3[4];
      v6 = v5[10];
      v7 = v5[11];
      while (v6 != v7)
      {
        if (*(v6 + 8) == a2 && *(v6 + 16) == a3)
        {
          v8 = **(Phase::Logger::GetInstance(result) + 704);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            v9 = [v3[4][2] identifier];
            v10 = 136315650;
            v11 = "ActionTreeManager.mm";
            v12 = 1024;
            v13 = 6440;
            v14 = 2112;
            v15 = v9;
            _os_log_impl(&dword_23A302000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Received Submix error.  Stopping action tree instance with action tree UID: %@", &v10, 0x1Cu);
          }

          return Phase::ActionTreeManager::StopActionTree(v4, *v3[4], v3[4][1], PHASESoundEventPrepareHandlerReasonFailure, PHASESoundEventStartHandlerReasonFailure);
        }

        v6 += 96;
      }

      v3 = *v3;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void Phase::ActionTreeManager::~ActionTreeManager(Phase::ActionTreeManager *this)
{
  caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::~guarded_lookup_hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::~__hash_table(this + 40);

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::~guarded_lookup_hash_table(this + 80);
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::~__hash_table(this + 40);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);

  JUMPOUT(0x23EE864A0);
}

void std::vector<Phase::MetaParamValue>::resize(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

uint64_t std::__split_buffer<Phase::MetaParamState>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    v5 = (i - 56);
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v5);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void Phase::ActionTreeGatheredParams::~ActionTreeGatheredParams(Phase::ActionTreeGatheredParams *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void std::vector<Phase::ActionTreeObject::LeafNodeInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = *(v4 - 15);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 160;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<Phase::MetaParamState>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 64;
        v7 = (v4 - 56);
        std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v7);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

uint64_t std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__assign_with_size[abi:ne200100]<Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*>(uint64_t a1, void *a2, void *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 6)
  {
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vdeallocate(a1);
    if (!(a4 >> 58))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 5;
      if (v9 >> 5 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFC0)
      {
        v11 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 6)
  {
    result = std::__copy_impl::operator()[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *,Phase::Envelope<double>::SegmentInternal *,Phase::Envelope<double>::SegmentInternal *>(&v19, a2, a3, v8);
    v15 = v14;
    v16 = *(a1 + 8);
    if (v16 != v14)
    {
      do
      {
        v17 = v16 - 64;
        result = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v16 - 32);
        v16 = v17;
      }

      while (v17 != v15);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *,Phase::Envelope<double>::SegmentInternal *,Phase::Envelope<double>::SegmentInternal *>(&v18, a2, (a2 + v12), v8);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::Envelope<double>::SegmentInternal>,Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*>(a1, a2 + v12, a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vdeallocate(void **a1)
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
        v5 = v3 - 64;
        std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100]((v3 - 32));
        v3 = v5;
      }

      while (v5 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Envelope<double>::SegmentInternal>>(a1, a2);
  }

  std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::Envelope<double>::SegmentInternal>,Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a2 + v7;
      v9 = (a4 + v7);
      *v9 = *(a2 + v7);
      v9[1] = *(a2 + v7 + 8);
      v9[2] = *(a2 + v7 + 16);
      v9[3] = *(a2 + v7 + 24);
      std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](a4 + v7 + 32, a2 + v7 + 32);
      v7 += 64;
    }

    while (v8 + 64 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_23A319014(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 32;
    do
    {
      v5 = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v5) - 64;
      v4 += 64;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__copy_impl::operator()[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *,Phase::Envelope<double>::SegmentInternal *,Phase::Envelope<double>::SegmentInternal *>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = a2;
  if (a2 == a3)
  {
    return a2;
  }

  v6 = a3;
  do
  {
    *a4 = *v5;
    a4[1] = v5[1];
    a4[2] = v5[2];
    a4[3] = v5[3];
    std::function<double ()(double)>::operator=(a4 + 4, (v5 + 4));
    a4 += 8;
    v5 += 8;
  }

  while (v5 != v6);
  return v6;
}

void *std::function<double ()(double)>::operator=(void *a1, uint64_t a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v4, a2);
  std::__function::__value_func<double ()(double)>::swap[abi:ne200100](v4, a1);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v4);
  return a1;
}

void *std::__function::__value_func<double ()(double)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_23A3194A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Envelope<double>::SegmentInternal>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

Phase::Logger *Phase::Fader<double>::Fader(Phase::Logger *a1, double a2)
{
  v4 = Phase::Envelope<double>::Envelope(a1);
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  Phase::Fader<double>::SetDefaultValue(v4, a2);
  return a1;
}

void sub_23A319544(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

Phase::Logger *Phase::Envelope<double>::Envelope(Phase::Logger *a1)
{
  v5[4] = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v3[0] = 0.0;
  v3[1] = 0.0;
  v4[0] = 0.0;
  v4[1] = 0.0;
  v5[0] = &unk_284D2F3D0;
  v5[3] = v5;
  Phase::Envelope<double>::InitializeFromSingleSegment(a1, v3, v4);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v5);
  return a1;
}

void sub_23A319608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v4);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

double Phase::Envelope<double>::InitializeFromSingleSegment(Phase::Logger *a1, double *a2, double *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  if (*a2 > *a3)
  {
    v10 = **(Phase::Logger::GetInstance(a1) + 112);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *a2;
      v12 = *a3;
      *v14 = 136315906;
      *&v14[4] = "Envelope.hpp";
      *&v14[12] = 1024;
      *&v14[14] = 243;
      *&v14[18] = 2048;
      *&v14[20] = v11;
      *&v14[28] = 2048;
      *&v14[30] = v12;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (EnvelopeException::InvalidStartPoint) [!(inStartPoint.x <= inSegment.mEndPoint.x) is true]: Invalid start point x value: %f. Must be <= end point x value: %f", v14, 0x26u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    _ZN5Phase17EnvelopeException17InvalidStartPointCI1St11logic_errorEPKc(exception, "Invalid start point x value: %f. Must be <= end point x value: %f");
  }

  *v14 = 0;
  *&v14[8] = 0;
  v6 = *(a3 + 1);
  *&v14[16] = v4;
  *&v14[24] = v6;
  std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](&v14[32], (a3 + 2));
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::assign(a1, 1uLL, v14);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&v14[32]);
  v7 = *a1;
  *v7 = *a2;
  result = a2[1];
  v7[1] = result;
  return result;
}

std::logic_error *_ZN5Phase17EnvelopeException17InvalidStartPointCI1St11logic_errorEPKc(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = &unk_284D2F430;
  return result;
}

uint64_t std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::assign(uint64_t result, unint64_t a2, void *a3)
{
  v5 = result;
  v6 = *result;
  if (a2 > (*(result + 16) - *result) >> 6)
  {
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vdeallocate(result);
    if (!(a2 >> 58))
    {
      v7 = v5[2] - *v5;
      v8 = v7 >> 5;
      if (v7 >> 5 <= a2)
      {
        v8 = a2;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFC0)
      {
        v9 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v8;
      }

      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vallocate[abi:ne200100](v5, v9);
    }

    std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
  }

  v10 = *(result + 8) - v6;
  v11 = v10 >> 6;
  if (v10 >> 6 >= a2)
  {
    v12 = a2;
  }

  else
  {
    v12 = v10 >> 6;
  }

  for (; v12; --v12)
  {
    *v6 = *a3;
    v6[1] = a3[1];
    v6[2] = a3[2];
    v6[3] = a3[3];
    result = std::function<double ()(double)>::operator=(v6 + 4, (a3 + 4));
    v6 += 8;
  }

  if (a2 <= v11)
  {
    v16 = v5[1];
    v17 = *v5 + (a2 << 6);
    if (v16 != v17)
    {
      do
      {
        v18 = v16 - 64;
        result = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v16 - 32);
        v16 = v18;
      }

      while (v18 != v17);
    }

    v5[1] = v17;
  }

  else
  {
    v13 = v5[1];
    v14 = &v13[8 * (a2 - v11)];
    v15 = (a2 << 6) - (v11 << 6);
    do
    {
      *v13 = *a3;
      v13[1] = a3[1];
      v13[2] = a3[2];
      v13[3] = a3[3];
      result = std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100]((v13 + 4), (a3 + 4));
      v13 += 8;
      v15 -= 64;
    }

    while (v15);
    v5[1] = v14;
  }

  return result;
}

void Phase::EnvelopeException::InvalidStartPoint::~InvalidStartPoint(std::logic_error *this)
{
  std::logic_error::~logic_error(this);

  JUMPOUT(0x23EE864A0);
}

void std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 64;
        std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void Phase::Controller::GetCurveFunctionFromCurveType<double>(Phase::Logger *a1@<X0>, void *a2@<X8>)
{
  v2 = a1;
  v12 = *MEMORY[0x277D85DE8];
  if (a1 <= 1668434258)
  {
    if (a1 <= 1668434242)
    {
      if (a1 == 1668432757)
      {
        v4 = Phase::CurveFunction::Cubed<double>;
      }

      else
      {
        if (a1 != 1668434003)
        {
          goto LABEL_26;
        }

        v4 = Phase::CurveFunction::HoldStartValue<double>;
      }
    }

    else if (a1 == 1668434243)
    {
      v4 = Phase::CurveFunction::InverseCubed<double>;
    }

    else if (a1 == 1668434247)
    {
      v4 = Phase::CurveFunction::InverseSigmoid<double>;
    }

    else
    {
      if (a1 != 1668434257)
      {
        goto LABEL_26;
      }

      v4 = Phase::CurveFunction::InverseSquared<double>;
    }
  }

  else if (a1 > 1668436838)
  {
    if (a1 == 1668436839)
    {
      v4 = Phase::CurveFunction::Sigmoid<double>;
    }

    else if (a1 == 1668436846)
    {
      v4 = Phase::CurveFunction::Sine<double>;
    }

    else
    {
      if (a1 != 1668436849)
      {
        goto LABEL_26;
      }

      v4 = Phase::CurveFunction::Squared<double>;
    }
  }

  else if (a1 == 1668434259)
  {
    v4 = Phase::CurveFunction::InverseSine<double>;
  }

  else
  {
    if (a1 != 1668434501)
    {
      if (a1 == 1668435054)
      {
LABEL_28:
        v4 = Phase::CurveFunction::Linear<double>;
        goto LABEL_29;
      }

LABEL_26:
      v5 = **(Phase::Logger::GetInstance(a1) + 656);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315650;
        v7 = "CurveUtility.hpp";
        v8 = 1024;
        v9 = 81;
        v10 = 1024;
        v11 = v2;
        _os_log_impl(&dword_23A302000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Unsupported PHASECurveType %d. Setting the curve to linear.", &v6, 0x18u);
      }

      goto LABEL_28;
    }

    v4 = Phase::CurveFunction::JumpToEndValue<double>;
  }

LABEL_29:
  *a2 = &unk_284D2F458;
  a2[1] = v4;
  a2[3] = a2;
}

double Phase::Envelope<double>::operator()(double **a1, double a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *v3;
  v5 = *(v2 - 6);
  v6 = v5 >= a2 && v4 <= a2;
  v7 = fmin(fmax(a2, v4), v5);
  if (!v6)
  {
    a2 = v7;
  }

  if (v2 != v3)
  {
    while (a2 < *v3 || a2 >= v3[2])
    {
      v3 += 8;
      if (v3 == v2)
      {
        goto LABEL_14;
      }
    }
  }

  if (v3 == v2)
  {
LABEL_14:
    if (a2 != *(v2 - 6))
    {
      std::terminate();
    }

    v3 = v2 - 8;
  }

  return Phase::Envelope<double>::SegmentInternal::operator()(v3, a2);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Envelope<double>::Segment>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<Phase::Envelope<double>::Segment,std::allocator<Phase::Envelope<double>::Segment>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v6 = v4 - 48;
        std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100]((v4 - 32));
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void Phase::CurveFunction::Sigmoid<double>(double a1)
{
  if (a1 >= 0.5)
  {
    sin((1.0 - ((a1 + -0.5) * -2.0 + 1.0)) * 3.14159265 * 0.5);
  }

  else
  {
    sin((1.0 - (a1 + a1)) * -3.14159265 * 0.5);
  }
}

void Phase::CurveFunction::InverseSigmoid<double>(double a1)
{
  if (a1 >= 0.5)
  {
    sin((1.0 - (a1 + -0.5 + a1 + -0.5)) * -3.14159265 * 0.5);
  }

  else
  {
    sin((1.0 - (a1 * -2.0 + 1.0)) * 3.14159265 * 0.5);
  }
}

uint64_t std::__function::__func<double (*)(double),std::allocator<double (*)(double)>,double ()(double)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D2F458;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

Phase::Logger *Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Logger *a1, uint64_t a2, double *a3, __int128 *a4)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v6 = 0xAAAAAAAAAAAAAAABLL * ((a4 - a3) >> 4);
  if (v6 == 1)
  {
    Phase::Envelope<double>::InitializeFromSingleSegment(a1, a2, a3);
  }

  else if (v6)
  {
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>>(a1, a3, a4, v6);
    v7 = *(a1 + 1);
    v8 = 126 - 2 * __clz((v7 - *a1) >> 6);
    if (v7 == *a1)
    {
      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    v10 = std::__introsort<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*,false>(*a1, v7, &v20, v9, 1);
    v11 = *a1;
    if (*a2 > *(*a1 + 16))
    {
      v16 = **(Phase::Logger::GetInstance(v10) + 656);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *a2;
        v18 = *(*a1 + 16);
        *buf = 136315906;
        *&buf[4] = "Envelope.hpp";
        *&buf[12] = 1024;
        *&buf[14] = 117;
        *&buf[18] = 2048;
        *&buf[20] = v17;
        v22 = 2048;
        v23 = v18;
        _os_log_impl(&dword_23A302000, v16, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (EnvelopeException::InvalidStartPoint) [!(inStartPoint.x <= mSegments[0].mEndPoint.x) is true]: Invalid start point x value: %f. Must be <= first end point x value: %f", buf, 0x26u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "Invalid start point x value: %f. Must be <= first end point x value: %f");
      exception->__vftable = &unk_284D2F430;
    }

    *v11 = *a2;
    *(v11 + 1) = *(a2 + 8);
    v12 = (*(a1 + 1) - v11) >> 6;
    v13 = v12 - 1;
    if (v12 != 1)
    {
      v14 = &v11[4 * v12 - 7];
      do
      {
        v14[3] = *v14;
        v14 -= 4;
        --v13;
      }

      while (v13);
    }
  }

  else
  {
    *&buf[16] = &unk_284D2F2E8;
    v24 = &buf[16];
    *buf = *a2;
    Phase::Envelope<double>::InitializeFromSingleSegment(a1, a2, buf);
    std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](&buf[16]);
  }

  return a1;
}

void sub_23A31A5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __cxa_free_exception(v11);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__assign_with_size[abi:ne200100]<std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>>(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 6)
  {
    std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vdeallocate(a1);
    if (!(a4 >> 58))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 5;
      if (v8 >> 5 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFC0)
      {
        v10 = 0x3FFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
  }

  v11 = (*(a1 + 8) - v7) >> 6;
  if (v11 >= a4)
  {
    result = std::__copy_impl::operator()[abi:ne200100]<Phase::Envelope<double>::Segment *,Phase::Envelope<double>::Segment *,Phase::Envelope<double>::SegmentInternal *>(&v19, a2, a3, v7);
    v15 = v14;
    v16 = *(a1 + 8);
    if (v16 != v14)
    {
      do
      {
        v17 = v16 - 64;
        result = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v16 - 32);
        v16 = v17;
      }

      while (v17 != v15);
    }

    *(a1 + 8) = v15;
  }

  else
  {
    v12 = &a2[3 * v11];
    std::__copy_impl::operator()[abi:ne200100]<Phase::Envelope<double>::Segment *,Phase::Envelope<double>::Segment *,Phase::Envelope<double>::SegmentInternal *>(&v18, a2, v12, v7);
    result = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::Envelope<double>::SegmentInternal>,Phase::Envelope<double>::Segment *,Phase::Envelope<double>::Segment *,Phase::Envelope<double>::SegmentInternal*>(a1, v12, a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<Phase::Envelope<double>::SegmentInternal>,Phase::Envelope<double>::Segment *,Phase::Envelope<double>::Segment *,Phase::Envelope<double>::SegmentInternal*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = 0;
    v7 = a2 + 16;
    do
    {
      v8 = (a4 + v6);
      *v8 = 0;
      v8[1] = 0;
      v9 = v7 - 16;
      v8[2] = *(v7 - 16);
      v8[3] = *(v7 - 8);
      std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](a4 + v6 + 32, v7);
      v6 += 64;
      v7 += 48;
    }

    while (v9 + 48 != a3);
    a4 += v6;
  }

  return a4;
}

void sub_23A31A7C8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    v4 = -v1;
    v5 = v2 - 32;
    do
    {
      v5 = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v5) - 64;
      v4 += 64;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__copy_impl::operator()[abi:ne200100]<Phase::Envelope<double>::Segment *,Phase::Envelope<double>::Segment *,Phase::Envelope<double>::SegmentInternal *>(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *a4)
{
  v4 = a2;
  v9[5] = *MEMORY[0x277D85DE8];
  if (a2 == a3)
  {
    return a2;
  }

  v5 = a3;
  do
  {
    v6 = a4;
    v8 = *v4;
    std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v9, (v4 + 1));
    *v6 = 0uLL;
    v6[1] = v8;
    std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v6 + 2), v9);
    std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v9);
    v4 += 3;
    a4 = v6 + 4;
  }

  while (v4 != v5);
  return v5;
}

void sub_23A31A8CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

__int128 *std::__introsort<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*,false>(__int128 *result, double *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a2;
  v8 = result;
  v37[5] = *MEMORY[0x277D85DE8];
  v29 = a2;
  v30 = result;
LABEL_2:
  for (i = 1 - a4; ; ++i)
  {
    v10 = (v7 - v8) >> 6;
    if (v10 <= 2)
    {
      if (v10 < 2)
      {
        return result;
      }

      if (v10 == 2)
      {
        v29 = v7 - 8;
        if (*(v7 - 6) < *(v8 + 2))
        {
          return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v30, &v29);
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v10 == 3)
    {
      break;
    }

    if (v10 == 4)
    {
      v29 = v7 - 8;
      return std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*,0>(v8, v8 + 8, v8 + 16, (v7 - 8));
    }

    if (v10 == 5)
    {
      v29 = v7 - 8;
      v34 = (v8 + 4);
      *&v35 = v8;
      v32 = (v8 + 12);
      v33 = (v8 + 8);
      v31 = v7 - 8;
      result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*,0>(v8, v8 + 8, v8 + 16, (v8 + 12));
      if (*(v7 - 6) < *(v8 + 26))
      {
        result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v32, &v31);
        if (v32[2] < *(v8 + 18))
        {
          result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v33, &v32);
          if (v33[2] < *(v8 + 10))
          {
            result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
            if (v34[2] < *(v8 + 2))
            {
              return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      if (a5)
      {
        return std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(v8, v7);
      }

      else
      {
        return std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(v8, v7);
      }
    }

    if (i == 1)
    {
      if (v8 != v7)
      {
        return std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*>(v8, v7, v7, a3);
      }

      return result;
    }

    v11 = &v8[4 * (v10 >> 1)];
    if (v10 < 0x81)
    {
      v34 = v8;
      *&v35 = &v8[4 * (v10 >> 1)];
      v33 = v7 - 8;
      v14 = *(v8 + 2);
      v15 = *(v7 - 6);
      if (v14 >= v11[2])
      {
        if (v15 < v14)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
          if (v34[2] < *(v35 + 16))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
          }
        }
      }

      else if (v15 >= v14)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
        if (v33[2] < v34[2])
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
        }
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v33);
      }

      if (a5)
      {
LABEL_36:
        v7 = v29;
        goto LABEL_57;
      }
    }

    else
    {
      v34 = &v8[4 * (v10 >> 1)];
      *&v35 = v8;
      v33 = v7 - 8;
      v12 = v11[2];
      v13 = *(v7 - 6);
      if (v12 >= *(v8 + 2))
      {
        if (v13 < v12)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
          if (v34[2] < *(v35 + 16))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
          }
        }
      }

      else if (v13 >= v12)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
        if (v33[2] < v34[2])
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
        }
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v33);
      }

      v34 = v11 - 8;
      *&v35 = v8 + 4;
      v33 = v7 - 16;
      v16 = *(v11 - 6);
      v17 = *(v7 - 14);
      if (v16 >= *(v8 + 10))
      {
        if (v17 < v16)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
          if (v34[2] < *(v35 + 16))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
          }
        }
      }

      else if (v17 >= v16)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
        if (v33[2] < v34[2])
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
        }
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v33);
      }

      v34 = v11 + 8;
      *&v35 = v8 + 8;
      v33 = v7 - 24;
      v18 = v11[10];
      v19 = *(v7 - 22);
      if (v18 >= *(v8 + 18))
      {
        if (v19 < v18)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
          if (v34[2] < *(v35 + 16))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
          }
        }
      }

      else if (v19 >= v18)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
        if (v33[2] < v34[2])
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
        }
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v33);
      }

      v34 = v11;
      *&v35 = v11 - 8;
      v33 = v11 + 8;
      v20 = v11[2];
      v21 = v11[10];
      if (v20 >= *(v11 - 6))
      {
        if (v21 < v20)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
          if (v34[2] < *(v35 + 16))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
          }
        }
      }

      else if (v21 >= v20)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
        if (v33[2] < v34[2])
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
        }
      }

      else
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v33);
      }

      v22 = v8[1];
      v35 = *v8;
      v36 = v22;
      std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v37, (v8 + 2));
      v23 = *(v11 + 1);
      *v8 = *v11;
      v8[1] = v23;
      std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v8 + 2), (v11 + 4));
      *v11 = v35;
      *(v11 + 1) = v36;
      std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v11 + 4), v37);
      std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v37);
      v8 = v30;
      if (a5)
      {
        goto LABEL_36;
      }
    }

    v7 = v29;
    if (*(v8 - 6) >= *(v8 + 2))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::SegmentInternal *,Phase::Envelope<double>::<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &>(v8, v29);
      v8 = result;
      goto LABEL_66;
    }

LABEL_57:
    v24 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::SegmentInternal *,Phase::Envelope<double>::<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &>(v8, v7);
    if ((v25 & 1) == 0)
    {
      goto LABEL_64;
    }

    v26 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(v8, v24);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>((v24 + 4), v7);
    if (result)
    {
      if (v26)
      {
        return result;
      }

      v29 = v24;
      v7 = v24;
    }

    else
    {
      if (!v26)
      {
LABEL_64:
        result = std::__introsort<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*,false>(v8, v24, a3, -i, a5 & 1);
        v8 = v24 + 4;
LABEL_66:
        a5 = 0;
        v30 = v8;
        a4 = -i;
        goto LABEL_2;
      }

      v30 = v24 + 4;
      v8 = v24 + 4;
    }
  }

  v29 = v7 - 8;
  v34 = (v8 + 4);
  *&v35 = v8;
  v33 = v7 - 8;
  v27 = *(v8 + 10);
  v28 = *(v7 - 6);
  if (v27 >= *(v8 + 2))
  {
    if (v28 < v27)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
      if (v34[2] < *(v35 + 16))
      {
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
      }
    }
  }

  else if (v28 >= v27)
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v34);
    if (v33[2] < v34[2])
    {
      return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v34, &v33);
    }
  }

  else
  {
    return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v35, &v33);
  }

  return result;
}

void sub_23A31AFE8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(__int128 **a1, void **a2)
{
  v7[5] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v5 = **a1;
  v6 = (*a1)[1];
  std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v7, (*a1 + 2));
  *v2 = *v3;
  *(v2 + 1) = v3[1];
  *(v2 + 2) = v3[2];
  *(v2 + 3) = v3[3];
  std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v2 + 2), (v3 + 4));
  *v3 = v5;
  *(v3 + 1) = v6;
  std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v3 + 4), v7);
  return std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v7);
}

void sub_23A31B0D4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*,0>(uint64_t result, double *a2, double *a3, uint64_t a4)
{
  v7 = result;
  v14 = a2;
  v15 = result;
  v12 = a4;
  v13 = a3;
  v18 = result;
  v16 = a3;
  v17 = a2;
  v8 = a2[2];
  v9 = a3[2];
  if (v8 >= *(result + 16))
  {
    if (v9 < v8)
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v17, &v16);
      if (v17[2] < v18[2])
      {
        v10 = &v18;
        v11 = &v17;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = &v18;
    if (v9 < v8)
    {
LABEL_5:
      v11 = &v16;
LABEL_9:
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(v10, v11);
      goto LABEL_10;
    }

    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v18, &v17);
    if (v16[2] < v17[2])
    {
      v10 = &v17;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 16) < a3[2])
  {
    result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v13, &v12);
    if (v13[2] < a2[2])
    {
      result = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v14, &v13);
      if (v14[2] < *(v7 + 16))
      {
        return std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v15, &v14);
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(uint64_t result, _OWORD *a2)
{
  v14[5] = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 64);
    if ((result + 64) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        if (*(v6 + 80) < *(v6 + 16))
        {
          *v12 = *v4;
          *&v12[16] = *(v6 + 80);
          v13 = *(v6 + 88);
          std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v14, v6 + 96);
          v8 = v5;
          while (1)
          {
            v9 = v8;
            v10 = v3 + v8;
            *(v10 + 64) = *v10;
            *(v10 + 72) = *(v10 + 8);
            *(v10 + 88) = *(v10 + 24);
            std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](v10 + 96, v10 + 32);
            if (!v9)
            {
              break;
            }

            v8 = v9 - 64;
            if (*&v12[16] >= *(v3 + v9 - 48))
            {
              v11 = v3 + v9;
              goto LABEL_10;
            }
          }

          v11 = v3;
LABEL_10:
          *v11 = *v12;
          *(v11 + 8) = *&v12[8];
          *(v11 + 24) = v13;
          std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](v3 + v9 + 32, v14);
          result = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v14);
        }

        v4 = v7 + 4;
        v5 += 64;
        v6 = v7;
      }

      while (v7 + 4 != a2);
    }
  }

  return result;
}

void sub_23A31B364(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(uint64_t result, _OWORD *a2)
{
  v13[5] = *MEMORY[0x277D85DE8];
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 64);
    if ((result + 64) != a2)
    {
      v5 = result + 96;
      do
      {
        v6 = v4;
        if (*(v3 + 80) < *(v3 + 16))
        {
          v10 = *v4;
          v11 = *(v3 + 80);
          v12 = *(v3 + 88);
          std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v13, v3 + 96);
          v7 = v5;
          do
          {
            *(v7 - 32) = *(v7 - 96);
            *(v7 - 24) = *(v7 - 88);
            *(v7 - 8) = *(v7 - 72);
            v8 = v7 - 64;
            std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](v7, v7 - 64);
            v9 = *(v7 - 144);
            v7 -= 64;
          }

          while (v11 < v9);
          *(v8 - 32) = v10;
          *(v8 - 16) = v11;
          *(v8 - 8) = v12;
          std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](v8, v13);
          result = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v13);
        }

        v4 = v6 + 4;
        v5 += 64;
        v3 = v6;
      }

      while (v6 + 4 != a2);
    }
  }

  return result;
}

void sub_23A31B4A0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::SegmentInternal *,Phase::Envelope<double>::<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &>(uint64_t a1, double *a2)
{
  v2 = a2;
  v20[5] = *MEMORY[0x277D85DE8];
  v16 = a2;
  v4 = *(a1 + 16);
  v18 = *a1;
  v19 = v4;
  std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v20, a1 + 32);
  if (*&v19 >= *(v2 - 6))
  {
    v8 = a1 + 64;
    do
    {
      v6 = v8;
      if (v8 >= v2)
      {
        break;
      }

      v9 = *(v8 + 16);
      v8 += 64;
    }

    while (*&v19 >= v9);
  }

  else
  {
    v5 = a1;
    do
    {
      v6 = (v5 + 64);
      v7 = *(v5 + 80);
      v5 += 64;
    }

    while (*&v19 >= v7);
  }

  v17 = v6;
  if (v6 < v2)
  {
    do
    {
      v10 = *(v2 - 6);
      v2 -= 8;
    }

    while (*&v19 < v10);
    v16 = v2;
  }

  if (v6 < v2)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v17, &v16);
      v6 = v17;
      do
      {
        v11 = *(v6 + 10);
        v6 += 4;
      }

      while (*&v19 >= v11);
      v17 = v6;
      v12 = v16 - 8;
      do
      {
        v16 = v12;
        v13 = v12[2];
        v12 -= 8;
      }

      while (*&v19 < v13);
    }

    while (v6 < v12 + 4);
  }

  if (v6 - 4 != a1)
  {
    *a1 = *(v6 - 8);
    *(a1 + 8) = *(v6 - 7);
    *(a1 + 16) = *(v6 - 6);
    *(a1 + 24) = *(v6 - 5);
    std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](a1 + 32, (v6 - 2));
  }

  *(v6 - 4) = v18;
  *(v6 - 3) = v19;
  std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v6 - 2), v20);
  v14 = v17;
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v20);
  return v14;
}

void sub_23A31B664(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::SegmentInternal *,Phase::Envelope<double>::<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &>(uint64_t a1, void *a2)
{
  v22[5] = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 16);
  v20 = *a1;
  v21 = v4;
  std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v22, a1 + 32);
  v5 = 0;
  do
  {
    v6 = *(a1 + v5 + 80);
    v5 += 64;
  }

  while (v6 < *&v21);
  v7 = (a1 + v5);
  v19 = (a1 + v5);
  if (v5 == 64)
  {
    if (v7 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v10 = (a2 - 8);
      do
      {
        v11 = v10 - 8;
        v12 = v10[2] < *&v21 || v7 >= v10;
        v10 -= 8;
      }

      while (!v12);
      v8 = v11 + 8;
    }
  }

  else
  {
    do
    {
      v8 = a2 - 8;
      v9 = *(a2 - 6);
      a2 -= 8;
    }

    while (v9 >= *&v21);
  }

  v18 = v8;
  v13 = v7;
  if (v7 < v8)
  {
    do
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v19, &v18);
      v13 = v19;
      do
      {
        v14 = *(v13 + 10);
        v13 += 4;
      }

      while (v14 < *&v21);
      v19 = v13;
      v15 = v18 - 8;
      do
      {
        v18 = v15;
        v16 = *(v15 + 2);
        v15 -= 8;
      }

      while (v16 >= *&v21);
    }

    while (v13 < v15 + 4);
  }

  if (v13 - 4 != a1)
  {
    *a1 = *(v13 - 8);
    *(a1 + 8) = *(v13 - 7);
    *(a1 + 16) = *(v13 - 6);
    *(a1 + 24) = *(v13 - 5);
    std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](a1 + 32, (v13 - 2));
  }

  *(v13 - 4) = v20;
  *(v13 - 3) = v21;
  std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v13 - 2), v22);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v22);
  return v13 - 4;
}

void sub_23A31B85C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(uint64_t a1, double *a2)
{
  v2 = a2;
  v26[5] = *MEMORY[0x277D85DE8];
  v17 = a2;
  v18 = a1;
  v4 = (a2 - a1) >> 6;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v22 = (a1 + 64);
        *&v23 = a1;
        v21 = a2 - 8;
        v5 = *(a1 + 80);
        v6 = *(a2 - 6);
        if (v5 >= *(a1 + 16))
        {
          if (v6 < v5)
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v22, &v21);
            if (v22[2] < *(v23 + 16))
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v23, &v22);
            }
          }
        }

        else if (v6 >= v5)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v23, &v22);
          if (v21[2] < v22[2])
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v22, &v21);
          }
        }

        else
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v23, &v21);
        }

        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*,0>(a1, (a1 + 64), (a1 + 128), (a2 - 8));
        return 1;
      case 5:
        v22 = (a1 + 64);
        *&v23 = a1;
        v20 = (a1 + 192);
        v21 = (a1 + 128);
        v19 = a2 - 8;
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*,0>(a1, (a1 + 64), (a1 + 128), a1 + 192);
        if (*(v2 - 6) < *(a1 + 208))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v20, &v19);
          if (v20[2] < *(a1 + 144))
          {
            std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v21, &v20);
            if (v21[2] < *(a1 + 80))
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v22, &v21);
              if (v22[2] < *(a1 + 16))
              {
                std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v23, &v22);
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v17 = a2 - 8;
      if (*(a2 - 6) < *(a1 + 16))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v18, &v17);
      }

      return 1;
    }
  }

  v7 = a1 + 128;
  v22 = (a1 + 64);
  *&v23 = a1;
  v21 = (a1 + 128);
  v8 = *(a1 + 80);
  v9 = *(a1 + 144);
  if (v8 >= *(a1 + 16))
  {
    if (v9 < v8)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v22, &v21);
      if (v22[2] < *(v23 + 16))
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v23, &v22);
      }
    }
  }

  else if (v9 >= v8)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v23, &v22);
    if (v21[2] < v22[2])
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v22, &v21);
    }
  }

  else
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v23, &v21);
  }

  v10 = a1 + 192;
  if (v10 != v2)
  {
    v11 = 0;
    do
    {
      v12 = *(v10 + 16);
      if (v12 < *(v7 + 16))
      {
        v23 = *v10;
        v13 = *(v10 + 24);
        v24 = v12;
        v25 = v13;
        std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v26, v10 + 32);
        do
        {
          v14 = v7;
          *(v7 + 64) = *v7;
          *(v7 + 72) = *(v7 + 8);
          *(v7 + 88) = *(v7 + 24);
          std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](v7 + 96, v7 + 32);
          if (v7 == v18)
          {
            break;
          }

          v7 -= 64;
        }

        while (v24 < *(v14 - 48));
        *v14 = v23;
        *(v14 + 16) = v24;
        *(v14 + 24) = v25;
        std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](v14 + 32, v26);
        if (++v11 == 8)
        {
          v15 = v10 + 64 == v17;
          std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v26);
          return v15;
        }

        std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v26);
        v2 = v17;
      }

      v7 = v10;
      v10 += 64;
    }

    while (v10 != v2);
  }

  return 1;
}

void sub_23A31BC58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*,Phase::Envelope<double>::SegmentInternal*>(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v17 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = (a2 - a1) >> 6;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[4 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(v7, a4, v8, v11);
        v11 -= 4;
        --v10;
      }

      while (v10);
    }

    v16 = v6;
    v12 = v6;
    if (v6 != a3)
    {
      do
      {
        if (*(v12 + 2) < *(v17 + 2))
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<Phase::Envelope<double>::SegmentInternal *&,Phase::Envelope<double>::SegmentInternal *&>(&v16, &v17);
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(v17, a4, v8, v17);
          v12 = v16;
        }

        v12 += 4;
        v16 = v12;
      }

      while (v12 != a3);
      v7 = v17;
      v8 = (v6 - v17) >> 6;
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1},Phase::Envelope<double>::SegmentInternal*>(v7, v6, a4, v8);
        v6 -= 4;
        v13 = v8 >= 2;
        v14 = v8-- == 2;
      }

      while (!v14 && v13);
      return v16;
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v19[5] = *MEMORY[0x277D85DE8];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 6)
    {
      v9 = (a4 - result) >> 5;
      v10 = v9 + 1;
      v11 = result + ((v9 + 1) << 6);
      v12 = v9 + 2;
      if (v12 < a3 && *(v11 + 16) < *(v11 + 80))
      {
        v11 += 64;
        v10 = v12;
      }

      if (*(v11 + 16) >= *(a4 + 2))
      {
        v16 = *a4;
        v17 = *(a4 + 2);
        v18 = *(a4 + 3);
        std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v19, (a4 + 2));
        do
        {
          v13 = v11;
          *v5 = *v11;
          v5[1] = *(v11 + 8);
          v5[2] = *(v11 + 16);
          v5[3] = *(v11 + 24);
          std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v5 + 4), v11 + 32);
          if (v7 < v10)
          {
            break;
          }

          v14 = 2 * v10;
          v10 = (2 * v10) | 1;
          v11 = v6 + (v10 << 6);
          v15 = v14 + 2;
          if (v15 < a3 && *(v11 + 16) < *(v11 + 80))
          {
            v11 += 64;
            v10 = v15;
          }

          v5 = v13;
        }

        while (*(v11 + 16) >= v17);
        *v13 = v16;
        *(v13 + 16) = v17;
        *(v13 + 24) = v18;
        std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](v13 + 32, v19);
        return std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v19);
      }
    }
  }

  return result;
}

void sub_23A31BFC0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

char *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1},Phase::Envelope<double>::SegmentInternal*>(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12[5] = *MEMORY[0x277D85DE8];
  if (a4 >= 2)
  {
    v7 = result;
    v10 = *result;
    v11 = *(result + 1);
    std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v12, (result + 32));
    v8 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(v7, a3, a4);
    v9 = v8;
    if (v8 == (a2 - 64))
    {
      *v8 = v10;
      *(v8 + 1) = v11;
      std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v8 + 4), v12);
    }

    else
    {
      *v8 = *(a2 - 64);
      v8[1] = *(a2 - 56);
      v8[2] = *(a2 - 48);
      v8[3] = *(a2 - 40);
      std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v8 + 4), a2 - 32);
      *(a2 - 64) = v10;
      *(a2 - 48) = v11;
      std::__function::__value_func<double ()(double)>::operator=[abi:ne200100](a2 - 32, v12);
      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(v7, (v9 + 8), a3, ((v9 + 8) - v7) >> 6);
    }

    return std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v12);
  }

  return result;
}

void sub_23A31C114(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = (a3 - 2) / 2;
  do
  {
    v6 = &a1[8 * v4];
    v7 = v6 + 8;
    if (2 * v4 + 2 >= a3)
    {
      v4 = (2 * v4) | 1;
    }

    else
    {
      v8 = *(v6 + 10);
      v9 = *(v6 + 18);
      v10 = v6 + 16;
      if (v8 >= v9)
      {
        v4 = (2 * v4) | 1;
      }

      else
      {
        v7 = v10;
        v4 = 2 * v4 + 2;
      }
    }

    *a1 = *v7;
    a1[1] = v7[1];
    a1[2] = v7[2];
    a1[3] = v7[3];
    std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((a1 + 4), (v7 + 4));
    a1 = v7;
  }

  while (v4 <= v5);
  return v7;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,Phase::Envelope<double>::Envelope<std::__wrap_iter<Phase::Envelope<double>::Segment *>>(Phase::Vector<double,2ul> const&,std::__wrap_iter<Phase::Envelope<double>::Segment *>,std::__wrap_iter<Phase::Envelope<double>::Segment *>)::{lambda(Phase::Envelope<double>::SegmentInternal const&,Phase::Envelope<double>::SegmentInternal const&)#1} &,Phase::Envelope<double>::SegmentInternal*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[5] = *MEMORY[0x277D85DE8];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + (v4 >> 1 << 6));
    if (v7[2] < *(a2 - 48))
    {
      v8 = (a2 - 64);
      v10 = *(a2 - 64);
      v11 = *(a2 - 48);
      v12 = *(a2 - 40);
      std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v13, a2 - 32);
      do
      {
        v9 = v7;
        *v8 = *v7;
        v8[1] = v7[1];
        v8[2] = v7[2];
        v8[3] = v7[3];
        std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v8 + 4), (v7 + 4));
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + (v6 << 6));
        v8 = v9;
      }

      while (v7[2] < v11);
      *v9 = v10;
      v9[2] = v11;
      *(v9 + 3) = v12;
      std::__function::__value_func<double ()(double)>::operator=[abi:ne200100]((v9 + 4), v13);
      return std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v13);
    }
  }

  return result;
}

void sub_23A31C318(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

double Phase::Envelope<double>::SegmentInternal::operator()(double *a1, double a2)
{
  v3 = *a1;
  v4 = a1[2];
  v5 = *a1 - v4;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 <= 0.001)
  {
    v6 = 0.0;
    if (v3 <= a2)
    {
      v6 = 1.0;
      if (v3 >= a2)
      {
        v6 = 0.5;
      }
    }
  }

  else
  {
    v6 = fmin(fmax((a2 - v3) / (v4 - v3), 0.0), 1.0);
  }

  std::function<double ()(double)>::operator()((a1 + 4), v6);
  return a1[1] + fmin(fmax(v7, 0.0), 1.0) * (a1[3] - a1[1]);
}

uint64_t std::function<double ()(double)>::operator()(uint64_t a1, double a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::UniqueObjectId>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
}

uint64_t std::unique_ptr<Phase::CommandQueue<Phase::LockFreeQueueMPSC>>::reset[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    Phase::CommandQueue<Phase::LockFreeQueueMPSC>::~CommandQueue(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(void *a1)
{
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(a1);

  JUMPOUT(0x23EE864A0);
}

void Phase::CommandQueue<Phase::LockFreeQueueMPSC>::~CommandQueue(uint64_t a1)
{
  for (; Phase::LockFreeQueueSPSC::HasData(a1); *(a1 + 4) += ((*(*(a1 + 16) + *(a1 + 4)) + 15) & 0xFFFFFFF0) + 16)
  {
    (**(*(a1 + 16) + *(a1 + 4) + 16))();
  }

  atomic_store(0, (a1 + 40));

  Phase::LockFreeQueueSPSC::~LockFreeQueueSPSC(a1);
}

uint64_t Phase::Fader<double>::SetInternal(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v12[4] = *MEMORY[0x277D85DE8];
  if (a4 < 0.0)
  {
    a4 = 0.0;
  }

  if (a4 == 0.0)
  {
    *(a1 + 40) = a3;
    v5 = a3;
  }

  else
  {
    v5 = *(a1 + 40);
  }

  v7[0] = 0.0;
  v7[1] = v5;
  v11[0] = a4;
  v11[1] = a3;
  std::__function::__value_func<double ()(double)>::__value_func[abi:ne200100](v12, a2);
  Phase::Envelope<double>::Envelope(&v8, v7, v11);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__vdeallocate(a1);
  *a1 = v8;
  *(a1 + 16) = v9;
  v9 = 0;
  v8 = 0uLL;
  v10 = &v8;
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](&v10);
  result = std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](v12);
  *(a1 + 24) = 0;
  return result;
}

void sub_23A31C6C8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  std::__function::__value_func<double ()(double)>::~__value_func[abi:ne200100](va);
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    std::terminate();
  }

  _Unwind_Resume(a1);
}

Phase::Logger *Phase::Envelope<double>::Envelope(Phase::Logger *a1, double *a2, double *a3)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  Phase::Envelope<double>::InitializeFromSingleSegment(a1, a2, a3);
  return a1;
}

void sub_23A31C738(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<Phase::Envelope<double>::SegmentInternal,std::allocator<Phase::Envelope<double>::SegmentInternal>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::__deallocate_node(int a1, void *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = v2[5];
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::~guarded_lookup_hash_table(uint64_t a1)
{
  if (atomic_load((a1 + 16)))
  {
    _os_assert_log();
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v3 = atomic_load((a1 + 8));
    if (v3)
    {
      v4 = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::~table_impl(v3);
      MEMORY[0x23EE864A0](v4, 0x1060C402CF69088);
    }

    std::mutex::~mutex((a1 + 48));
    v6 = (a1 + 24);
    std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](&v6);
    return a1;
  }

  return result;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::~table_impl(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = (a1 + 16);
    do
    {
      if (*v3 + 1 >= 2)
      {
        caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::element_t::release(*v3);
      }

      ++v3;
      --v2;
    }

    while (v2);
  }

  return a1;
}

unsigned int *caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::element_t::release(unsigned int *result)
{
  if ((atomic_fetch_add(result, 0xFFFF0000) & 0xFFFF0000) == 0x10000)
  {
    if (atomic_load(result))
    {
      _os_assert_log();
      _os_crash();
      __break(1u);
    }

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void std::vector<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>,void,0>(--v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::allocator_traits<std::allocator<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>>>::destroy[abi:ne200100]<std::unique_ptr<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl,std::default_delete<caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl>>,void,0>(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::~table_impl(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

uint64_t (**std::any_cast[abi:ne200100]<Phase::Controller::GroupManager * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Controller::GroupManager *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**std::any_cast[abi:ne200100]<Phase::GlobalMetaParameterManager * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::GlobalMetaParameterManager *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t (**std::any_cast[abi:ne200100]<Phase::Geometry::System * const>(uint64_t (**result)(uint64_t, void, void, void, void *)))(uint64_t, void, void, void, void *)
{
  if (result)
  {
    if (*result)
    {
      return (*result)(3, result, 0, 0, &std::__any_imp::__unique_typeinfo<Phase::Geometry::System *>::__id);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double Phase::TransformPositionByInverse<double>@<D0>(uint64_t a1@<X0>, float64x2_t *a2@<X1>, double *a3@<X8>)
{
  v3 = *(a1 + 24);
  v4 = -*(a1 + 16);
  v10 = vnegq_f64(*a1);
  v11 = v4;
  v12 = v3;
  v5 = *(a1 + 56);
  v6 = (a2[1].f64[0] - *(a1 + 48)) / *&v5;
  v8 = vdivq_f64(vsubq_f64(*a2, *(a1 + 32)), vdupq_lane_s64(v5, 0));
  v9 = v6;
  return Phase::operator*<double>(v10.f64, v8.f64, a3);
}

double Phase::operator*<double>@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  v3 = a1[1];
  v4 = *a1 + *a1;
  v5 = v3 + v3;
  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 + v6;
  v10 = a2[1];
  v9 = a2[2];
  v11 = *a1 * v10 - v3 * *a2;
  v12 = v3 * v9 - v6 * v10 + *a2 * v7;
  v13 = v6 * *a2 - *a1 * v9 + v10 * v7;
  v14 = v11 + v9 * v7;
  v15 = v5 * v14 - v8 * v13;
  result = v10 + v8 * v12 - v4 * v14;
  *a3 = *a2 + v15;
  a3[1] = result;
  a3[2] = v9 + v4 * v13 - v5 * v12;
  return result;
}

void std::__shared_ptr_pointer<Phase::Controller::StreamRenderer  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

Phase::Controller::StreamRenderer *std::__shared_ptr_pointer<Phase::Controller::StreamRenderer  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    Phase::Controller::StreamRenderer::~StreamRenderer(result);

    JUMPOUT(0x23EE864A0);
  }

  return result;
}

void caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::_addOrReplace(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 48));
  v8 = atomic_load((a1 + 8));
  v9 = *a1 + 1;
  *a1 = v9;
  if (v8)
  {
    v10 = 16 * v9;
    v11 = *(v8 + 8);
    if (v10 / v11 < 0xB)
    {
      goto LABEL_6;
    }

    v12 = 2 * v11;
  }

  else
  {
    v12 = 8;
  }

  v8 = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::rehash(a1, v12);
LABEL_6:
  if ((caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::findSlotForKey(v8, a2, a3) & 1) == 0)
  {
    operator new();
  }

  *(v13 + 24) = a4;
  --*a1;

  std::mutex::unlock((a1 + 48));
}

unint64_t caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::rehash(unint64_t *a1, unsigned int a2)
{
  v4 = atomic_load(a1 + 1);
  v5 = operator new(8 * (a2 - 1) + 24);
  v6 = v5;
  *v5 = a1;
  *(v5 + 2) = a2;
  *(v5 + 2) = 0;
  v7 = v5 + 16;
  if (a2)
  {
    v8 = a2 + 1;
    v9 = (v5 + 16);
    do
    {
      atomic_store(0, v9++);
      --v8;
    }

    while (v8 > 1);
  }

  if (v4)
  {
    v10 = *(v4 + 8);
    if (v10)
    {
      v11 = (v4 + 16);
      do
      {
        v12 = *v11;
        if (*v11 + 1 >= 2)
        {
          SlotForKey = caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::findSlotForKey(v6, *(v12 + 8), *(v12 + 16));
          if ((SlotForKey & 1) == 0)
          {
            atomic_fetch_add(v12, 0x10000u);
            atomic_store(v12, &v7[8 * HIDWORD(SlotForKey)]);
          }
        }

        ++v11;
        --v10;
      }

      while (v10);
    }

    atomic_store(v6, a1 + 1);
    v15 = a1[4];
    v14 = a1[5];
    if (v15 >= v14)
    {
      v17 = a1[3];
      v18 = v15 - v17;
      v19 = (v15 - v17) >> 3;
      v20 = v19 + 1;
      if ((v19 + 1) >> 61)
      {
        std::vector<Phase::MetaParamValue>::__throw_length_error[abi:ne200100]();
      }

      v21 = v14 - v17;
      if (v21 >> 2 > v20)
      {
        v20 = v21 >> 2;
      }

      if (v21 >= 0x7FFFFFFFFFFFFFF8)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v20;
      }

      if (v22)
      {
        if (!(v22 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v23 = (v15 - v17) >> 3;
      v24 = (8 * v19);
      v25 = (8 * v19 - 8 * v23);
      *v24 = v4;
      v16 = v24 + 1;
      memcpy(v25, v17, v18);
      a1[3] = v25;
      a1[4] = v16;
      a1[5] = 0;
      if (v17)
      {
        operator delete(v17);
      }
    }

    else
    {
      *v15 = v4;
      v16 = v15 + 1;
    }

    a1[4] = v16;
  }

  else
  {
    atomic_store(v5, a1 + 1);
  }

  return v6;
}

uint64_t caulk::concurrent::guarded_lookup_hash_table<Phase::UniqueObjectId,Phase::Controller::StreamRenderer *,(caulk::concurrent::guarded_lookup_hash_table_options)2,caulk::concurrent::guarded_lookup_default_hash_fn<Phase::UniqueObjectId>>::table_impl::findSlotForKey(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  v4 = *(result + 8);
  v15[0] = a2;
  v15[1] = a3;
  v5 = -2078137563;
  do
  {
    v5 = 435 * (v5 ^ *(v15 + v3++));
  }

  while (v3 != 16);
  v6 = v5 % v4;
  if (v6 >= 3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  v8 = v6 + v7 - 3;
  v9 = 0xFFFFFFFFLL;
  v10 = 1;
  v11 = v6;
  do
  {
    v12 = v11;
    v11 = v8;
    v13 = atomic_load((result + 16 + 8 * v12));
    if (v13 == -1)
    {
      if (v9 >= 0)
      {
        v9 = v9;
      }

      else
      {
        v9 = v12;
      }
    }

    else
    {
      if (!v13)
      {
        v10 = 0;
        if (v9 >= 0)
        {
          v12 = v9;
        }

        else
        {
          v12 = v12;
        }

        return v10 | (v12 << 32);
      }

      if (*(v13 + 8) == a2 && *(v13 + 16) == a3)
      {
        return v10 | (v12 << 32);
      }
    }

    if (v11 >= 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v4;
    }

    v8 = v11 + v14 - 3;
  }

  while (v11 != v6);
  if ((v9 & 0x80000000) == 0)
  {
    v10 = 0;
    v12 = v9;
    return v10 | (v12 << 32);
  }

  __break(1u);
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,int>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,int>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,int>>>::find<unsigned long long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void *std::__split_buffer<int *>::emplace_back<int *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__shared_ptr_emplace<Phase::ActionTreeObject>::__shared_ptr_emplace[abi:ne200100]<PHASESoundEventNodeAsset * {__strong}&,PHASESoundEvent * {__strong}&,std::allocator<Phase::ActionTreeObject>,0>(void *a1, PHASESoundEventNodeAsset **a2, PHASESoundEvent **a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_284D2F368;
  Phase::ActionTreeObject::ActionTreeObject((a1 + 3), *a2, *a3);
  return a1;
}

void std::__shared_ptr_emplace<Phase::ActionTreeObject>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284D2F368;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x23EE864A0);
}

void std::__shared_ptr_emplace<Phase::ActionTreeObject>::__on_zero_shared(std::__shared_weak_count *a1)
{
  v1 = a1;
  v20 = *MEMORY[0x277D85DE8];
  shared_owners = a1[3].__shared_owners_;
  shared_weak_owners = a1[3].__shared_weak_owners_;
  p_shared_owners = &a1[3].__shared_owners_;
  while (shared_owners != shared_weak_owners)
  {
    a1 = *(shared_owners + 40);
    *(shared_owners + 32) = 0;
    *(shared_owners + 40) = 0;
    if (a1)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](a1);
    }

    shared_owners += 160;
  }

  Instance = Phase::Logger::GetInstance(a1);
  if (*(Instance + 1637) == 1)
  {
    v6 = **(Phase::Logger::GetInstance(Instance) + 704);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v1[1].__vftable;
      v8 = [v1[1].__shared_weak_owners_ identifier];
      *v13 = 136315906;
      *&v13[4] = "ActionTreeManager.mm";
      v14 = 1024;
      v15 = 557;
      v16 = 2048;
      v17 = v7;
      v18 = 2080;
      v19 = [v8 UTF8String];
      _os_log_impl(&dword_23A302000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d (sound event: %llu) - destroyed (identifier: %s)", v13, 0x26u);
    }
  }

  objc_destroyWeak(&v1[13].__shared_weak_owners_);
  v9 = v1[12].__shared_weak_owners_;
  if (v9)
  {
    v1[13].__vftable = v9;
    operator delete(v9);
  }

  v10 = v1[11].__shared_weak_owners_;
  if (v10)
  {
    v1[12].__vftable = v10;
    operator delete(v10);
  }

  v11 = v1[10].__shared_weak_owners_;
  if (v11)
  {
    v1[11].__vftable = v11;
    operator delete(v11);
  }

  std::__hash_table<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::__unordered_map_hasher<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::hash<Phase::SpatialCategory>,std::equal_to<Phase::SpatialCategory>,true>,std::__unordered_map_equal<Phase::SpatialCategory,std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>,std::equal_to<Phase::SpatialCategory>,std::hash<Phase::SpatialCategory>,true>,std::allocator<std::__hash_value_type<Phase::SpatialCategory,Phase::Controller::SpatialCategoryParameters>>>::~__hash_table(&v1[5].__shared_owners_);
  v12 = v1[4].__shared_owners_;
  if (v12)
  {
    v1[4].__shared_weak_owners_ = v12;
    operator delete(v12);
  }

  *v13 = p_shared_owners;
  std::vector<Phase::ActionTreeObject::LeafNodeInfo>::__destroy_vector::operator()[abi:ne200100](v13);
  *v13 = v1 + 56;
  std::vector<Phase::MetaParamState>::__destroy_vector::operator()[abi:ne200100](v13);
}

void sub_23A31D524(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,void *>>>::operator()[abi:ne200100](char a1, void *__p)
{
  if (a1)
  {
    v3 = __p[5];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::find<Phase::UniqueObjectId>(void *a1, void *a2)
{
  v2 = 0;
  v3 = 0xCBF29CE484222325;
  do
  {
    v3 = 0x100000001B3 * (v3 ^ *(a2 + v2++));
  }

  while (v2 != 16);
  v4 = a1[1];
  if (!*&v4)
  {
    return 0;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v3;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7)
  {
    return 0;
  }

  result = *v7;
  if (*v7)
  {
    do
    {
      v9 = result[1];
      if (v9 == v3)
      {
        if (result[2] == *a2 && result[3] == a2[1])
        {
          return result;
        }
      }

      else
      {
        if (v5.u32[0] > 1uLL)
        {
          if (v9 >= *&v4)
          {
            v9 %= *&v4;
          }
        }

        else
        {
          v9 &= *&v4 - 1;
        }

        if (v9 != v6)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t Phase::CommandQueue<Phase::LockFreeQueueMPSC>::ExecuteCommands(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  for (i = 0; Phase::LockFreeQueueSPSC::HasData(a1); i = (i + 1))
  {
    v3 = (*(a1 + 16) + *(a1 + 4));
    v5 = *v3;
    v4 = v3 + 4;
    if (!v5)
    {
      v7 = **(a1 + 48);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v9 = 136315394;
        v10 = "CommandQueue.hpp";
        v11 = 1024;
        v12 = 115;
        _os_log_impl(&dword_23A302000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: numBytes > 0 is false.", &v9, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "POSTCONDITION: numBytes > 0 is false.");
    }

    (*(*v4 + 16))(v4);
    (**v4)(v4);
    *(a1 + 4) += ((*(*(a1 + 16) + *(a1 + 4)) + 15) & 0xFFFFFFF0) + 16;
  }

  return i;
}

void sub_23A31D834(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    (**v3)(v3);
    *(v2 + 4) += ((*(*(v2 + 16) + *(v2 + 4)) + 15) & 0xFFFFFFF0) + 16;
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_23A31D8A0(void *a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x23A31D8A8);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::__unordered_map_hasher<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::hash<Phase::UniqueObjectId>,std::equal_to<Phase::UniqueObjectId>,true>,std::__unordered_map_equal<Phase::UniqueObjectId,std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,std::equal_to<Phase::UniqueObjectId>,std::hash<Phase::UniqueObjectId>,true>,std::allocator<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v4 = *a2;
  v3 = a2[1];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v6 = *(*a1 + 8 * v3);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 != a1 + 2)
  {
    v8 = v7[1];
    if (v5.u32[0] > 1uLL)
    {
      if (v8 >= *&v2)
      {
        v8 %= *&v2;
      }
    }

    else
    {
      v8 &= *&v2 - 1;
    }

    v9 = *a2;
    if (v8 == v3)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }
  }

  if (!v4)
  {
    goto LABEL_19;
  }

  v10 = *(v4 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v10 >= *&v2)
    {
      v10 %= *&v2;
    }
  }

  else
  {
    v10 &= *&v2 - 1;
  }

  v9 = *a2;
  if (v10 != v3)
  {
LABEL_19:
    *(*a1 + 8 * v3) = 0;
    v9 = *a2;
    goto LABEL_20;
  }

LABEL_21:
  v11 = *(v9 + 8);
  if (v5.u32[0] > 1uLL)
  {
    if (v11 >= *&v2)
    {
      v11 %= *&v2;
    }
  }

  else
  {
    v11 &= *&v2 - 1;
  }

  if (v11 != v3)
  {
    *(*a1 + 8 * v11) = v7;
    v9 = *a2;
  }

LABEL_27:
  *v7 = v9;
  *a2 = 0;
  --a1[3];
  std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<Phase::UniqueObjectId,std::shared_ptr<Phase::ActionTreeObject>>,void *>>>::operator()[abi:ne200100](1, a2);
  return v4;
}

BOOL Phase::CommandQueue<Phase::LockFreeQueueMPSC>::Reset(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  for (result = Phase::LockFreeQueueSPSC::HasData(a1); result; result = Phase::LockFreeQueueSPSC::HasData(a1))
  {
    v3 = *(a1 + 16) + *(a1 + 4);
    if (!*v3)
    {
      v4 = **(a1 + 48);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "CommandQueue.hpp";
        v8 = 1024;
        v9 = 146;
        _os_log_impl(&dword_23A302000, v4, OS_LOG_TYPE_ERROR, "%25s:%-5d POSTCONDITION: numBytes > 0 is false.", &v6, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception, "POSTCONDITION: numBytes > 0 is false.");
    }

    (**(v3 + 16))();
    *(a1 + 4) += ((*(*(a1 + 16) + *(a1 + 4)) + 15) & 0xFFFFFFF0) + 16;
  }

  return result;
}

void std::unique_lock<std::mutex>::lock[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8) != 1)
    {
      std::mutex::lock(v2);
      *(a1 + 8) = 1;
      return;
    }
  }

  else
  {
    std::__throw_system_error(1, "unique_lock::lock: references null mutex");
  }

  std::__throw_system_error(11, "unique_lock::lock: already locked");
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v3, v4);
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void Phase::SpatialModeler::AmbientErrorCategory::message(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 7)
  {
    switch(a1)
    {
      case 130:
        v5 = "Ambient Modeler Error: QueryInput has an unsupported Subband Count.";
        break;
      case 129:
        v5 = "Ambient Modeler Error: Query has an invalid Source at the World Origin. Please translate the Source away from the World Origin and try again.";
        break;
      case 128:
        v5 = "Ambient Modeler Error: Query has an invalid Volumetric Source. Please replace with a Point Source and try again.";
        break;
      default:
        v5 = "Ambient Modeler Error: <unrecognized error>";
        break;
    }

    std::string::basic_string[abi:ne200100]<0>(a2, v5);
  }

  else
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "Ambient ");
    Phase::SpatialModeler::ModelerErrorMessage(a1, __p, a2);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_23A31DF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void Phase::SpatialModeler::AmbientErrorCategory::~AmbientErrorCategory(std::error_category *this)
{
  std::error_category::~error_category(this);

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::SpatialModeler::Ambient::GetSupportedQueryDescs@<X0>(void *a1@<X8>)
{
  v19 = 0u;
  v18 = 0u;
  v22 = 0u;
  v23 = 0u;
  BYTE7(v19) = 4;
  LODWORD(v18) = 1280070979;
  v20 = 0x100000001;
  v21 = 1;
  v12 = 0u;
  v16 = 0u;
  v17 = 0u;
  HIBYTE(v12) = 7;
  strcpy(v11, "CLUSTER");
  v13 = 1;
  v14 = 0x200000003;
  v15 = 1;
  v5 = 0u;
  v9 = 0u;
  v10 = 0u;
  HIBYTE(v5) = 7;
  strcpy(v4, "SPATIAL");
  v6 = 2;
  v7 = 0x300000002;
  v8 = 1;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  std::vector<Phase::SpatialModeler::QueryDesc>::push_back[abi:ne200100](a1, &v18);
  std::vector<Phase::SpatialModeler::QueryDesc>::push_back[abi:ne200100](a1, v11);
  return std::vector<Phase::SpatialModeler::QueryDesc>::push_back[abi:ne200100](a1, v4);
}

void sub_23A31E100(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  *(v3 - 40) = v2;
  std::vector<Phase::SpatialModeler::QueryDesc>::__destroy_vector::operator()[abi:ne200100]((v3 - 40));
  Phase::SpatialModeler::QueryDesc::~QueryDesc(va);
  Phase::SpatialModeler::QueryDesc::~QueryDesc(va1);
  Phase::SpatialModeler::QueryDesc::~QueryDesc((v3 - 120));
  _Unwind_Resume(a1);
}

uint64_t std::vector<Phase::SpatialModeler::QueryDesc>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 4);
    if (v7 + 1 > 0x333333333333333)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x199999999999999)
    {
      v10 = 0x333333333333333;
    }

    else
    {
      v10 = v9;
    }

    v32 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::QueryDesc>>(a1, v10);
    }

    v15 = 80 * v7;
    v28 = 0;
    v29 = v15;
    v30 = v15;
    v31 = 0;
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(v15, *a2, *(a2 + 1));
    }

    else
    {
      v16 = *a2;
      *(v15 + 16) = *(a2 + 2);
      *v15 = v16;
    }

    v17 = *(a2 + 24);
    v18 = *(a2 + 10);
    *(v15 + 48) = 0;
    *(v15 + 40) = v18;
    *(v15 + 24) = v17;
    *(v15 + 56) = 0;
    *(v15 + 64) = 0;
    std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v15 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 2);
    *(v15 + 72) = *(a2 + 9);
    v19 = v30;
    v20 = *a1;
    v21 = *(a1 + 8);
    v22 = v29 + *a1 - v21;
    if (*a1 != v21)
    {
      v23 = *a1;
      v24 = v29 + *a1 - v21;
      do
      {
        v25 = *v23;
        *(v24 + 16) = *(v23 + 16);
        *v24 = v25;
        *(v23 + 8) = 0;
        *(v23 + 16) = 0;
        *v23 = 0;
        v26 = *(v23 + 24);
        *(v24 + 40) = *(v23 + 40);
        *(v24 + 24) = v26;
        *(v24 + 56) = 0;
        *(v24 + 64) = 0;
        *(v24 + 48) = 0;
        *(v24 + 48) = *(v23 + 48);
        *(v24 + 64) = *(v23 + 64);
        *(v23 + 48) = 0;
        *(v23 + 56) = 0;
        *(v23 + 64) = 0;
        *(v24 + 72) = *(v23 + 72);
        v23 += 80;
        v24 += 80;
      }

      while (v23 != v21);
      do
      {
        std::__destroy_at[abi:ne200100]<Phase::SpatialModeler::QueryDesc,0>(v20);
        v20 += 80;
      }

      while (v20 != v21);
      v20 = *a1;
    }

    v14 = v19 + 80;
    *a1 = v22;
    *(a1 + 8) = v14;
    v27 = *(a1 + 16);
    *(a1 + 16) = v31;
    v30 = v20;
    v31 = v27;
    v28 = v20;
    v29 = v20;
    result = std::__split_buffer<Phase::SpatialModeler::QueryDesc>::~__split_buffer(&v28);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
    }

    else
    {
      v6 = *a2;
      *(v5 + 16) = *(a2 + 2);
      *v5 = v6;
    }

    v11 = *(a2 + 24);
    v12 = *(a2 + 10);
    *(v5 + 48) = 0;
    *(v5 + 40) = v12;
    *(v5 + 24) = v11;
    *(v5 + 56) = 0;
    *(v5 + 64) = 0;
    result = std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(v5 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 2);
    *(v5 + 72) = *(a2 + 9);
    v14 = v5 + 80;
    *(a1 + 8) = v14;
  }

  *(a1 + 8) = v14;
  return result;
}

void sub_23A31E37C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::SpatialModeler::QueryDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void Phase::SpatialModeler::QueryDesc::~QueryDesc(Phase::SpatialModeler::QueryDesc *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t Phase::SpatialModeler::Ambient::Init(uint64_t result)
{
  if (0xCF3CF3CF3CF3CF3DLL * ((*(result + 64) - *(result + 48)) >> 4) <= 0x7F)
  {
    operator new();
  }

  return result;
}

void Phase::SpatialModeler::Ambient::RunQuery(Phase::Logger *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v124 = *MEMORY[0x277D85DE8];
  v6 = a2[10];
  if (v6 == 2)
  {
    v33 = a2[11];
    if (!v33 || *v33 != 2)
    {
      goto LABEL_31;
    }

    v34 = a2[12];
    if (!v34 || *v34 != 3)
    {
LABEL_33:
      if (a1)
      {
        v41 = (**a1)(a1);
        v42 = 4;
        goto LABEL_35;
      }

      goto LABEL_119;
    }

    v35 = a2[8];
    if (!v35)
    {
LABEL_40:
      if (a1)
      {
        v41 = (**a1)(a1);
        v42 = 5;
        goto LABEL_35;
      }

      goto LABEL_119;
    }

    v36 = *(v33 + 552);
    if (*(v35 + 184) <= v36 || (v37 = *(v35 + 168) + 24 * v36, *(v37 + 20) != HIDWORD(v36)) || (v38 = *v37) == 0 || v38->i32[0] != 2)
    {
      if (a1)
      {
        v41 = (**a1)(a1);
        v42 = 7;
        goto LABEL_35;
      }

      goto LABEL_119;
    }

    *&v123 = 1;
    __p[1] = 0;
    v120 = 0;
    __p[0] = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(__p, &v123, &v123 + 8, 1uLL);
    v39 = __p[0];
    v40 = a2[11];
    if (__p[0] != __p[1])
    {
      while (*v39 != *(v40 + 8))
      {
        if (++v39 == __p[1])
        {
          goto LABEL_95;
        }
      }
    }

    if (v39 != __p[1])
    {
      v79 = Phase::SpatialModeler::AllocMetadata<float,Phase::SystemAllocator>(v34, a1 + 4, 1, *(v40 + 8));
      v80 = v38[6];
      v82 = v38[7].f32[0];
      v81 = v38[7].i32[1];
      *&v118[4] = 0;
      if (*(Phase::Logger::GetInstance(v79) + 1640) == 1)
      {
        v83 = *(v33 + 208);
        if (*(v35 + 184) <= v83 || (v84 = *(v35 + 168) + 24 * v83, *(v84 + 20) != HIDWORD(v83)) || (v85 = *v84) == 0 || *v85 != 3)
        {
          if (!a1)
          {
            goto LABEL_119;
          }

          v86 = (**a1)(a1);
          v87 = 7;
          goto LABEL_112;
        }

        if (*(v85 + 120) != *(v85 + 128))
        {
          v86 = (**a1)(a1);
          v87 = 128;
LABEL_112:
          *a3 = v87;
          *(a3 + 8) = v86;
          v104 = 2;
          goto LABEL_117;
        }

        v105 = *(v85 + 64);
        v106 = *(v85 + 68);
        v88 = *(v85 + 72);
        v107 = -v105;
        if (v105 >= 0.0)
        {
          v107 = *(v85 + 64);
        }

        if (v107 <= 0.00000011921)
        {
          v108 = -v106;
          if (v106 >= 0.0)
          {
            v108 = *(v85 + 68);
          }

          if (v108 <= 0.00000011921)
          {
            v109 = -v88;
            if (v88 >= 0.0)
            {
              v109 = *(v85 + 72);
            }

            if (v109 <= 0.00000011921)
            {
              v86 = (**a1)(a1);
              v87 = 129;
              goto LABEL_112;
            }
          }
        }

        *v118 = *(v85 + 64);
        *&v118[4] = v106;
      }

      else
      {
        *v118 = *(v33 + 232);
        v88 = *(v33 + 240);
      }

      *&v118[8] = v88;
      *&v123 = vneg_f32(v80);
      *(&v123 + 2) = -v82;
      HIDWORD(v123) = v81;
      Phase::operator*<float>(&v123, v118, &v115);
      v89 = v115;
      v90 = -v115;
      if (v115 >= 0.0)
      {
        v90 = v115;
      }

      if (v90 > 0.00000011921)
      {
        goto LABEL_107;
      }

      v91 = -v116;
      if (v116 >= 0.0)
      {
        v91 = v116;
      }

      if (v91 > 0.00000011921)
      {
        goto LABEL_107;
      }

      v92 = v117;
      if (v117 < 0.0)
      {
        v92 = -v117;
      }

      if (v92 <= 0.00000011921)
      {
        v96 = 0.0;
        v97 = 180.0;
      }

      else
      {
LABEL_107:
        v93 = v117;
        v94 = acosf(v116 / sqrtf(((v115 * v115) + (v116 * v116)) + (v93 * v93)));
        v95 = atan2f(v89, v93);
        v96 = v94 * 57.296;
        v97 = 180.0 - (v95 * 57.296);
      }

      v98 = *(v34 + 8);
      v99 = *(v34 + 56);
      v100 = *(v34 + 104);
      v101 = *(v34 + 144);
      *v98 = 1065353216;
      *(v98 + 4) = v96;
      v102 = v97 - (floorf(v97 / 360.0) * 360.0);
      if (v102 >= 360.0)
      {
        v103 = nextafterf(360.0, 0.0);
      }

      else
      {
        v103 = v102 + 0.0;
      }

      *(v98 + 8) = v103;
      *v99 = 0;
      if (*(a2[11] + 8) != 1)
      {
        goto LABEL_119;
      }

      *(v100 + 16) = 1065353216;
      *v101 = 0;
      v104 = 1;
      *(v34 + 201) = 1;
      *(v34 + 204) = 0;
      *(v34 + 4) = 1;
LABEL_117:
      *(a3 + 24) = v104;
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      return;
    }

LABEL_95:
    v86 = (**a1)(a1);
    v87 = 130;
    goto LABEL_112;
  }

  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = a2[12];
      if (v7 && *v7 == 1)
      {
        v7[2] = 0;
LABEL_7:
        v8 = 1;
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (a1)
    {
      v43 = (**a1)(a1);
      *a3 = 2;
      *(a3 + 8) = v43;
      *(a3 + 24) = 2;
      return;
    }

LABEL_119:
    std::terminate();
  }

  v9 = a2[11];
  if (!v9 || *v9 != 3)
  {
LABEL_31:
    if (a1)
    {
      v41 = (**a1)(a1);
      v42 = 3;
      goto LABEL_35;
    }

    goto LABEL_119;
  }

  v10 = a2[12];
  if (!v10 || *v10 != 2)
  {
    goto LABEL_33;
  }

  v11 = a2[8];
  if (!v11)
  {
    goto LABEL_40;
  }

  if (*(Phase::Logger::GetInstance(a1) + 1640) == 1)
  {
    Phase::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(__p, a1 + 32, *(v9 + 144));
    std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 8), __p);
    *(v10 + 48) = v121;
    std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](__p);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__p[1]);
    Phase::AllocArray<BOOL,Phase::SystemAllocator>(__p, a1 + 32, *(v9 + 144));
    std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 56), __p);
    *(v10 + 96) = v121;
    std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](__p);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__p[1]);
    Phase::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(__p, a1 + 32, *(v9 + 144));
    std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 104), __p);
    *(v10 + 144) = v121;
    std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](__p);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__p[1]);
    if (*(v10 + 144))
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      do
      {
        v16 = (*(v10 + 104) + v12);
        *v16 = v15;
        v16[1] = 0;
        *(*(v10 + 8) + v14) = *(*(v9 + 104) + v13);
        v17 = *(v9 + 104) + v13;
        v18 = *(v10 + 8) + v14;
        *(v18 + 16) = *(v17 + 144);
        v19 = *(v17 + 16);
        v20 = *(v17 + 32);
        v21 = *(v17 + 64);
        *(v18 + 224) = *(v17 + 48);
        *(v18 + 240) = v21;
        *(v18 + 192) = v19;
        *(v18 + 208) = v20;
        v22 = *(v17 + 80);
        v23 = *(v17 + 96);
        v24 = *(v17 + 128);
        *(v18 + 288) = *(v17 + 112);
        *(v18 + 304) = v24;
        *(v18 + 256) = v22;
        *(v18 + 272) = v23;
        v25 = (*(v9 + 104) + v13);
        v26 = *(v10 + 8) + v14;
        v27 = v25[16];
        v28 = v25[17];
        v29 = v25[15];
        *(v26 + 120) = v25[14];
        *(v26 + 168) = v28;
        *(v26 + 152) = v27;
        *(v26 + 136) = v29;
        v30 = v25[10];
        v31 = v25[11];
        v32 = v25[12];
        *(v26 + 104) = v25[13];
        *(v26 + 88) = v32;
        *(v26 + 72) = v31;
        *(v26 + 56) = v30;
        *(*(v10 + 56) + v15++) = 1;
        v14 += 336;
        v13 += 304;
        v12 += 16;
      }

      while (v15 < *(v10 + 144));
    }

    goto LABEL_7;
  }

  *(a1 + 7) = *(a1 + 6);
  v110 = a1 + 32;
  Phase::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(__p, a1 + 32, *(v9 + 144));
  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 104), __p);
  *(v10 + 144) = v121;
  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](__p);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__p[1]);
  v44 = *(v9 + 144);
  if (!v44)
  {
LABEL_78:
    v66 = (*(v9 + 96) - 0x30C30C30C30C30C3 * ((*(a1 + 7) - *(a1 + 6)) >> 4));
    Phase::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(__p, v110, v66);
    std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 8), __p);
    *(v10 + 48) = v121;
    std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](__p);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__p[1]);
    Phase::AllocArray<BOOL,Phase::SystemAllocator>(__p, v110, v66);
    std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100]((v10 + 56), __p);
    *(v10 + 96) = v121;
    std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](__p);
    std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&__p[1]);
    if (*(v9 + 96))
    {
      v67 = 0;
      v68 = 56;
      do
      {
        v69 = (*(v9 + 56) + v68);
        v70 = (*(v10 + 8) + v68);
        v71 = *(v69 - 7);
        *(v70 - 5) = *(v69 - 5);
        *(v70 - 7) = v71;
        *(v70 - 8) = *(v69 - 8);
        *(v70 - 7) = *(v69 - 7);
        *(v70 - 6) = *(v69 - 6);
        *(v70 - 5) = *(v69 - 5);
        *(v70 - 4) = *(v69 - 4);
        *(v70 - 3) = *(v69 - 3);
        *(v70 - 2) = *(v69 - 2);
        *(v70 - 1) = *(v69 - 1);
        memcpy(v70, v69, 0x109uLL);
        *(*(v10 + 56) + v67++) = 1;
        v68 += 336;
      }

      while (v67 < *(v9 + 96));
    }

    v72 = *(a1 + 6);
    if (*(a1 + 7) != v72)
    {
      v73 = 0;
      v74 = 56;
      do
      {
        v75 = *(v9 + 96);
        v76 = (v72 + v74);
        v77 = *(v10 + 8) + 336 * (v73 + v75);
        v78 = *(v76 - 7);
        *(v77 + 16) = *(v76 - 5);
        *v77 = v78;
        *(v77 + 24) = *(v76 - 8);
        *(v77 + 28) = *(v76 - 7);
        *(v77 + 32) = *(v76 - 6);
        *(v77 + 36) = *(v76 - 5);
        *(v77 + 40) = *(v76 - 4);
        *(v77 + 44) = *(v76 - 3);
        *(v77 + 48) = *(v76 - 2);
        *(v77 + 52) = *(v76 - 1);
        memcpy((v77 + 56), v76, 0x109uLL);
        *(*(v10 + 56) + v75 + v73++) = 1;
        v72 = *(a1 + 6);
        v74 += 336;
      }

      while (v73 < 0xCF3CF3CF3CF3CF3DLL * ((*(a1 + 7) - v72) >> 4));
    }

    goto LABEL_7;
  }

  v45 = 0;
  v111 = v11;
  while (1)
  {
    v46 = (*(v9 + 104) + 304 * v45);
    v47 = (*(v10 + 104) + 16 * v45);
    v48 = v46[36];
    if (v48 == -1)
    {
      break;
    }

    *v47 = v48;
    v47[1] = v46[37];
LABEL_77:
    if (++v45 >= v44)
    {
      goto LABEL_78;
    }
  }

  v49 = v46[18];
  if (*(v11 + 184) <= v49 || (v50 = *(v11 + 168) + 24 * v49, *(v50 + 20) != HIDWORD(v49)) || (v51 = *v50) == 0 || *v51 != 3)
  {
    if (a1)
    {
      v41 = (**a1)(a1);
      v42 = 6;
      goto LABEL_35;
    }

    goto LABEL_119;
  }

  if (*(v51 + 120) != *(v51 + 128))
  {
    v41 = (**a1)(a1);
    v42 = 128;
    goto LABEL_35;
  }

  v52 = *(v51 + 64);
  v53 = *(v51 + 68);
  *v118 = v52;
  *&v118[4] = v53;
  v54 = *(v51 + 72);
  *&v118[8] = v54;
  v55 = -v52;
  if (v52 >= 0.0)
  {
    v55 = v52;
  }

  if (v55 > 0.00000011921)
  {
    goto LABEL_62;
  }

  v56 = -v53;
  if (v53 >= 0.0)
  {
    v56 = v53;
  }

  if (v56 > 0.00000011921)
  {
    goto LABEL_62;
  }

  v57 = -v54;
  if (v54 >= 0.0)
  {
    v57 = v54;
  }

  if (v57 > 0.00000011921)
  {
LABEL_62:
    v114 = v47;
    v112 = v44;
    v58 = *(v9 + 96);
    if (v58)
    {
      v59 = 0;
      v60 = (*(v9 + 56) + 40);
      while (!Phase::IsNearlyEqual<float>(v60, v118))
      {
        ++v59;
        v60 += 84;
        if (v58 == v59)
        {
          goto LABEL_66;
        }
      }

      *v114 = v59;
      v114[1] = v46[37];
    }

    else
    {
LABEL_66:
      v61 = *(a1 + 6);
      v62 = *(a1 + 7) - v61;
      v113 = 0xCF3CF3CF3CF3CF3DLL * (v62 >> 4);
      if (!v62)
      {
LABEL_73:
        *v114 = v113 + v58;
        v114[1] = v46[37];
        Phase::SpatialModeler::RenderGroup::RenderGroup(__p);
        v11 = v111;
        MEMORY[0x23EE87040](&v123);
        *__p = v123;
        v121 = __PAIR64__(LODWORD(v53), LODWORD(v52));
        v122 = v54;
        std::vector<Phase::SpatialModeler::RenderGroup>::emplace_back<Phase::SpatialModeler::RenderGroup const&>(a1 + 48, __p);
        v44 = *(v9 + 144);
        goto LABEL_77;
      }

      if (v113 <= 1)
      {
        v63 = 1;
      }

      else
      {
        v63 = 0xCF3CF3CF3CF3CF3DLL * (v62 >> 4);
      }

      v64 = (v61 + 40);
      v65 = v58;
      while (!Phase::IsNearlyEqual<float>(v64, v118))
      {
        ++v65;
        v64 += 84;
        if (!--v63)
        {
          goto LABEL_73;
        }
      }

      *v114 = v65;
      v114[1] = v46[37];
      v11 = v111;
    }

    v44 = v112;
    goto LABEL_77;
  }

  v41 = (**a1)(a1);
  v42 = 129;
LABEL_35:
  *a3 = v42;
  *(a3 + 8) = v41;
  v8 = 2;
LABEL_36:
  *(a3 + 24) = v8;
}

void sub_23A31F194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Phase::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(uint64_t *a1, uint64_t a2, Phase::Logger *a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v9 = 16;
  v10 = a3;
  v8[0] = a2;
  v8[1] = &v10;
  v8[2] = &v9;
  v7 = a2;
  Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(a3, v8, &v7, &v11);
  v5 = v11;
  v11 = 0;
  *a1 = v5;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a1 + 1), v12);
  a1[5] = a3;
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](&v11);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v12);
}

uint64_t Phase::AllocArray<BOOL,Phase::SystemAllocator>(uint64_t *a1, uint64_t a2, Phase::Logger *a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v9 = 1;
  v10 = a3;
  v8[0] = a2;
  v8[1] = &v10;
  v8[2] = &v9;
  v7 = a2;
  Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(a3, v8, &v7, &v11);
  v5 = v11;
  v11 = 0;
  *a1 = v5;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a1 + 1), v12);
  a1[5] = a3;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v11);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v12);
}

uint64_t Phase::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(uint64_t *a1, uint64_t a2, Phase::Logger *a3)
{
  v12[4] = *MEMORY[0x277D85DE8];
  v9 = 8;
  v10 = a3;
  v8[0] = a2;
  v8[1] = &v10;
  v8[2] = &v9;
  v7 = a2;
  Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(a3, v8, &v7, &v11);
  v5 = v11;
  v11 = 0;
  *a1 = v5;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a1 + 1), v12);
  a1[5] = a3;
  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](&v11);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v12);
}

BOOL Phase::IsNearlyEqual<float>(float *a1, float *a2)
{
  v2 = *a1 - *a2;
  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  if (v2 > 0.00000011921)
  {
    return 0;
  }

  v3 = a1[1] - a2[1];
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  if (v3 > 0.00000011921)
  {
    return 0;
  }

  v5 = a1[2] - a2[2];
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  return v5 <= 0.00000011921;
}

uint64_t Phase::SpatialModeler::AllocMetadata<float,Phase::SystemAllocator>(uint64_t *a1, void *a2, Phase::Logger *a3, uint64_t a4)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v16 = 4;
  v17 = a3;
  v18 = a2;
  v19 = &v17;
  v20 = &v16;
  v15 = a2;
  Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(a3, &v18, &v15, &v22);
  v8 = v22;
  v22 = 0;
  v18 = v8;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v19, v23);
  v21 = a3;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v22);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v23);
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 1, &v18);
  a1[6] = v21;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](&v18);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v19);
  v16 = 4;
  v17 = a3;
  v18 = a2;
  v19 = &v17;
  v20 = &v16;
  v15 = a2;
  Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>(a3, &v18, &v15, &v22);
  v9 = v22;
  v22 = 0;
  v18 = v9;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v19, v23);
  v21 = a3;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v22);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v23);
  std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 7, &v18);
  a1[12] = v21;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](&v18);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v19);
  v10 = 4 * a3 * a4;
  v11 = (v10 + 16);
  if (v10 != -16)
  {
    v11 = operator new(v11, 8uLL);
  }

  v22 = &unk_284D2F748;
  v23[0] = a2;
  v23[2] = &v22;
  v18 = v11;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v19, &v22);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v22);
  v12 = v18;
  *v18 = a3;
  v12[1] = a4;
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 13, &v18);
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](&v18, 0);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v19);
  v16 = 1;
  v17 = a3;
  v18 = a2;
  v19 = &v17;
  v20 = &v16;
  v15 = a2;
  Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(a3, &v18, &v15, &v22);
  v13 = v22;
  v22 = 0;
  v18 = v13;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](&v19, v23);
  v21 = a3;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v22);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v23);
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](a1 + 18, &v18);
  a1[23] = v21;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](&v18);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](&v19);
}

float Phase::operator*<float>@<S0>(float *a1@<X0>, float *a2@<X1>, float *a3@<X8>)
{
  v3 = a1[1];
  v4 = *a1 + *a1;
  v5 = v3 + v3;
  v6 = a1[2];
  v7 = a1[3];
  v8 = v6 + v6;
  v10 = a2[1];
  v9 = a2[2];
  v11 = (*a1 * v10) - (v3 * *a2);
  v12 = ((v3 * v9) - (v6 * v10)) + (*a2 * v7);
  v13 = ((v6 * *a2) - (*a1 * v9)) + (v10 * v7);
  v14 = v11 + (v9 * v7);
  v15 = (v5 * v14) - (v8 * v13);
  result = v10 + ((v8 * v12) - (v4 * v14));
  *a3 = *a2 + v15;
  a3[1] = result;
  a3[2] = v9 + ((v4 * v13) - (v5 * v12));
  return result;
}

void Phase::SpatialModeler::Ambient::GetGraphDescription(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 0uLL;
    *a2 = 0uLL;
    std::string::__assign_external(a2, "AmbientSpatialQueryGraph", 0x18uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v6 = *(a2 + 24);
    std::string::__assign_external(v6, "FullAmbientSpatialGraph", 0x17uLL);
    goto LABEL_8;
  }

  if (a1 == 1)
  {
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 0uLL;
    *a2 = 0uLL;
    std::string::__assign_external(a2, "AmbientClusterQueryGraph", 0x18uLL);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v6 = *(a2 + 24);
    std::string::__assign_external(v6, "FullAmbientClusterGraph", 0x17uLL);
LABEL_8:
    v6[1].__r_.__value_.__r.__words[0] = 0xFFFFFFFFLL;
    return;
  }

  if (a1)
  {
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 0uLL;
    *a2 = 0uLL;
  }

  else
  {
    *(a2 + 16) = 0uLL;
    *(a2 + 32) = 0uLL;
    *(a2 + 23) = 21;
    qmemcpy(a2, "AmbientCullQuery", 16);
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize((a2 + 24), 1uLL);
    v4 = *(a2 + 24);
    if (*(v4 + 23) < 0)
    {
      *(v4 + 8) = 20;
      v5 = *v4;
    }

    else
    {
      *(v4 + 23) = 20;
      v5 = v4;
    }

    strcpy(v5, "FullAmbientCullGraph");
    *(v4 + 24) = 0xFFFFFFFFLL;
  }
}

void std::vector<Phase::SpatialModeler::GraphDescriptionNode>::resize(void *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = (v3 - *a1) >> 5;
  if (a2 <= v4)
  {
    if (a2 < v4)
    {
      v6 = *a1 + 32 * a2;
      while (v3 != v6)
      {
        v7 = *(v3 - 9);
        v3 -= 4;
        if (v7 < 0)
        {
          operator delete(*v3);
        }
      }

      a1[1] = v6;
    }
  }

  else
  {
    v5 = a2 - v4;

    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::__append(a1, v5);
  }
}

void Phase::SpatialModeler::GraphDescription::~GraphDescription(void **this)
{
  v2 = this + 3;
  std::vector<Phase::SpatialModeler::GraphDescriptionNode>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void Phase::SpatialModeler::Ambient::~Ambient(std::error_category *this)
{
  this->__vftable = &unk_284D2F500;
  v2 = this[6].__vftable;
  if (v2)
  {
    this[7].__vftable = v2;
    operator delete(v2);
  }

  std::error_category::~error_category(this + 5);
  this->__vftable = &unk_284D2F570;
  std::error_category::~error_category(this + 1);
}

{
  this->__vftable = &unk_284D2F500;
  v2 = this[6].__vftable;
  if (v2)
  {
    this[7].__vftable = v2;
    operator delete(v2);
  }

  std::error_category::~error_category(this + 5);
  this->__vftable = &unk_284D2F570;
  std::error_category::~error_category(this + 1);

  JUMPOUT(0x23EE864A0);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

uint64_t std::vector<unsigned int>::__init_with_size[abi:ne200100]<unsigned int *,unsigned int *>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned int>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A31FC78(_Unwind_Exception *exception_object)
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::QueryDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__destroy_at[abi:ne200100]<Phase::SpatialModeler::QueryDesc,0>(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

uint64_t std::__split_buffer<Phase::SpatialModeler::QueryDesc>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    std::__destroy_at[abi:ne200100]<Phase::SpatialModeler::QueryDesc,0>(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<Phase::SpatialModeler::QueryDesc>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 80;
        std::__destroy_at[abi:ne200100]<Phase::SpatialModeler::QueryDesc,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long const*,unsigned long const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<unsigned long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_23A31FEC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned long>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::RenderGroup>>(unint64_t a1)
{
  if (a1 < 0xC30C30C30C30C4)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::RenderGroup>,Phase::SpatialModeler::RenderGroup*>(void *result, void *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    do
    {
      v6 = *v5;
      *(a3 + 16) = v5[2];
      *a3 = v6;
      *(a3 + 24) = *(v5 + 6);
      *(a3 + 28) = *(v5 + 7);
      *(a3 + 32) = *(v5 + 8);
      *(a3 + 36) = *(v5 + 9);
      *(a3 + 40) = *(v5 + 10);
      *(a3 + 44) = *(v5 + 11);
      *(a3 + 48) = *(v5 + 12);
      *(a3 + 52) = *(v5 + 13);
      result = memcpy((a3 + 56), v5 + 7, 0x109uLL);
      v5 += 42;
      a3 += 336;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t std::function<void ()(void *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t *std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

Phase::SpatialModeler::RenderGroup *Phase::SpatialModeler::RenderGroup::RenderGroup(Phase::SpatialModeler::RenderGroup *this)
{
  v2 = 0;
  v7 = *MEMORY[0x277D85DE8];
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 36) = 1065353216;
  *(this + 44) = 0;
  *(this + 13) = 1065353216;
  do
  {
    v3 = this + v2;
    *(v3 + 14) = 0;
    *(v3 + 8) = 0;
    v2 += 16;
  }

  while (v2 != 128);
  *(this + 23) = 0;
  v5 = 0;
  v6 = 0;
  Phase::Subbands<float>::Subbands(this + 192, &v5, 3);
  *(this + 320) = 0;
  return this;
}

uint64_t Phase::Subbands<float>::Subbands(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  *(a1 + 108) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 124) = a3;
  if (a3)
  {
    v4 = 0;
    v5 = 0;
    v6 = 4 * a3;
    do
    {
      if (v5 < a3)
      {
        v4 = v5 + 1;
        *(a1 + 4 * v5++) = *a2;
      }

      ++a2;
      v6 -= 4;
    }

    while (v6);
    if (a3 > v4)
    {
      bzero((a1 + 4 * v4), 4 * (a3 - v4));
    }
  }

  return a1;
}

void std::vector<Phase::SpatialModeler::RenderGroup>::emplace_back<Phase::SpatialModeler::RenderGroup const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xCF3CF3CF3CF3CF3DLL * ((v4 - *a1) >> 4);
    if (v7 + 1 > 0xC30C30C30C30C3)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v8 = 0xCF3CF3CF3CF3CF3DLL * ((v3 - *a1) >> 4);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x61861861861861)
    {
      v10 = 0xC30C30C30C30C3;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::RenderGroup>>(v10);
    }

    v11 = 336 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(v11 + 24) = *(a2 + 6);
    *(v11 + 28) = *(a2 + 7);
    *(v11 + 32) = *(a2 + 8);
    *(v11 + 36) = *(a2 + 9);
    *(v11 + 40) = *(a2 + 10);
    *(v11 + 44) = *(a2 + 11);
    *(v11 + 48) = *(a2 + 12);
    *(v11 + 52) = *(a2 + 13);
    memcpy((336 * v7 + 56), a2 + 56, 0x109uLL);
    v6 = 336 * v7 + 336;
    v13 = *(a1 + 8);
    v14 = v11 + *a1 - v13;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::RenderGroup>,Phase::SpatialModeler::RenderGroup*>(*a1, v13, v14);
    v15 = *a1;
    *a1 = v14;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    *(v4 + 24) = *(a2 + 6);
    *(v4 + 28) = *(a2 + 7);
    *(v4 + 32) = *(a2 + 8);
    *(v4 + 36) = *(a2 + 9);
    *(v4 + 40) = *(a2 + 10);
    *(v4 + 44) = *(a2 + 11);
    *(v4 + 48) = *(a2 + 12);
    *(v4 + 52) = *(a2 + 13);
    memcpy((v4 + 56), a2 + 56, 0x109uLL);
    v6 = v4 + 336;
  }

  *(a1 + 8) = v6;
}

void std::vector<Phase::SpatialModeler::GraphDescriptionNode>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 5)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 32 * a2);
      v5 += 32 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 5);
    if (v7 >> 59)
    {
      std::vector<unsigned int>::__throw_length_error[abi:ne200100]();
    }

    v8 = v6 >> 5;
    v9 = v4 - *a1;
    if (v9 >> 4 > v7)
    {
      v7 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v7;
    }

    v18 = a1;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>>(a1, v10);
    }

    v15 = 0;
    v16 = 32 * v8;
    bzero((32 * v8), 32 * a2);
    v17 = 32 * v8 + 32 * a2;
    v11 = *(a1 + 8);
    v12 = 32 * v8 + *a1 - v11;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>,Phase::SpatialModeler::GraphDescriptionNode*>(a1, *a1, v11, v12);
    v13 = *a1;
    *a1 = v12;
    v14 = *(a1 + 16);
    *(a1 + 8) = v17;
    *&v17 = v13;
    *(&v17 + 1) = v14;
    v15 = v13;
    v16 = v13;
    std::__split_buffer<Phase::SpatialModeler::GraphDescriptionNode>::~__split_buffer(&v15);
  }
}

void sub_23A3205F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<Phase::SpatialModeler::GraphDescriptionNode>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>,Phase::SpatialModeler::GraphDescriptionNode*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v12 = a4;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      *(a4 + 16) = *(v6 + 2);
      *a4 = v7;
      *(v6 + 1) = 0;
      *(v6 + 2) = 0;
      *v6 = 0;
      *(a4 + 24) = *(v6 + 3);
      v6 += 2;
      a4 += 32;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    do
    {
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      v5 += 2;
    }

    while (v5 != a3);
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>,Phase::SpatialModeler::GraphDescriptionNode*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>,Phase::SpatialModeler::GraphDescriptionNode*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>,Phase::SpatialModeler::GraphDescriptionNode*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<Phase::SpatialModeler::GraphDescriptionNode>,Phase::SpatialModeler::GraphDescriptionNode*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 9);
    v1 -= 4;
    if (v3 < 0)
    {
      operator delete(*v1);
    }
  }
}

uint64_t std::__split_buffer<Phase::SpatialModeler::GraphDescriptionNode>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<Phase::SpatialModeler::GraphDescriptionNode>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<Phase::SpatialModeler::GraphDescriptionNode>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void std::vector<Phase::SpatialModeler::GraphDescriptionNode>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<Phase::SpatialModeler::GraphDescriptionNode>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<Phase::SpatialModeler::GraphDescriptionNode>::clear[abi:ne200100](void ***a1)
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

double Phase::SpatialModeler::BaseModeler::GetGraphDescription@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>@<X0>(Phase::Logger *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, size_t *a4@<X8>)
{
  *&v21[5] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v17 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315394;
      *&v19[4] = "ManagedPtr.hpp";
      *&v19[12] = 1024;
      *&v19[14] = 229;
      _os_log_impl(&dword_23A302000, v17, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v19, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v7 = 336 * **(a2 + 8);
  if (v7)
  {
    v8 = **(a2 + 16);
    if (!v8)
    {
      v9 = operator new(v7);
      goto LABEL_7;
    }

    if ((v8 & (v8 - 1)) == 0)
    {
      v9 = operator new(v7, v8);
LABEL_7:
      v7 = v9;
      goto LABEL_11;
    }

    v10 = **(Phase::Logger::GetInstance(a1) + 192);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315650;
      *&v19[4] = "SystemAllocator.hpp";
      *&v19[12] = 1024;
      *&v19[14] = 47;
      v20 = 2048;
      *v21 = v7;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error allocating memory - alignment must be power of two. Alignment requested %zu", v19, 0x1Cu);
    }

    v7 = 0;
  }

LABEL_11:
  v11 = v7 + 336 * a1;
  v12 = v7;
  do
  {
    v13 = 0;
    *(v12 + 32) = 0;
    *v12 = 0u;
    *(v12 + 16) = 0u;
    *(v12 + 36) = 1065353216;
    *(v12 + 44) = 0;
    *(v12 + 52) = 1065353216;
    do
    {
      v14 = v12 + v13;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      v13 += 16;
    }

    while (v13 != 128);
    *(v12 + 184) = 0;
    *v19 = 0;
    *&v19[8] = 0;
    Phase::Subbands<float>::Subbands(v12 + 192, v19, 3);
    *(v12 + 320) = 0;
    v12 += 336;
  }

  while (v12 != v11);
  v15 = *a3;
  *v19 = &unk_284D2F5E0;
  *&v19[8] = v15;
  *&v21[1] = v19;
  *a4 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v19);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v19);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::RenderGroup,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::RenderGroup*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D2F5E0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::SpatialModeler::RenderGroup*,0>(a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::RenderGroup [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::SpatialModeler::RenderGroup*,0>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>@<X0>(Phase::Logger *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v12 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "ManagedPtr.hpp";
      *&v14[12] = 1024;
      *&v14[14] = 229;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v6 = **(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = **(a2 + 16);
  if (!v7)
  {
    v8 = operator new(v6);
    goto LABEL_10;
  }

  if ((v7 & (v7 - 1)) != 0)
  {
    v9 = **(Phase::Logger::GetInstance(a1) + 192);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315650;
      *&v14[4] = "SystemAllocator.hpp";
      *&v14[12] = 1024;
      *&v14[14] = 47;
      v15 = 2048;
      *v16 = v6;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error allocating memory - alignment must be power of two. Alignment requested %zu", v14, 0x1Cu);
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = operator new(v6, v7);
LABEL_10:
  v10 = *a3;
  *v14 = &unk_284D2F628;
  *&v14[8] = v10;
  *&v16[1] = v14;
  *a4 = v8;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v14);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v14);
}

uint64_t std::__function::__func<std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<BOOL [],std::function<void ()(void *)>> Phase::details::AllocArray<BOOL,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(BOOL*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D2F628;
  a2[1] = v2;
  return result;
}

uint64_t *std::unique_ptr<BOOL [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100]<BOOL *,0>(a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t *std::unique_ptr<BOOL [],std::function<void ()(void *)>>::reset[abi:ne200100]<BOOL *,0>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>@<X0>(Phase::Logger *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v14 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315394;
      *&v16[4] = "ManagedPtr.hpp";
      *&v16[12] = 1024;
      *&v16[14] = 229;
      _os_log_impl(&dword_23A302000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v16, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v7 = 16 * **(a2 + 8);
  if (!v7)
  {
    goto LABEL_9;
  }

  v8 = **(a2 + 16);
  if (!v8)
  {
    v9 = operator new(v7);
    goto LABEL_10;
  }

  if ((v8 & (v8 - 1)) != 0)
  {
    v10 = **(Phase::Logger::GetInstance(a1) + 192);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v16 = 136315650;
      *&v16[4] = "SystemAllocator.hpp";
      *&v16[12] = 1024;
      *&v16[14] = 47;
      v17 = 2048;
      *v18 = v7;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error allocating memory - alignment must be power of two. Alignment requested %zu", v16, 0x1Cu);
    }

LABEL_9:
    v9 = 0;
    goto LABEL_10;
  }

  v9 = operator new(v7, v8);
LABEL_10:
  v11 = v9;
  do
  {
    *v11 = -1;
    v11[1] = 0;
    v11 += 2;
  }

  while (v11 != &v9[2 * a1]);
  v12 = *a3;
  *v16 = &unk_284D2F670;
  *&v16[8] = v12;
  *&v18[1] = v16;
  *a4 = v9;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v16);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v16);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::SpatialModeler::SubmixRoutingOutput,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::SpatialModeler::SubmixRoutingOutput*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D2F670;
  a2[1] = v2;
  return result;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::SpatialModeler::SubmixRoutingOutput*,0>(a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t *std::unique_ptr<Phase::SpatialModeler::SubmixRoutingOutput [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::SpatialModeler::SubmixRoutingOutput*,0>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>@<X0>(Phase::Logger *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, size_t *a4@<X8>)
{
  *&v17[5] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v13 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v15 = 136315394;
      *&v15[4] = "ManagedPtr.hpp";
      *&v15[12] = 1024;
      *&v15[14] = 229;
      _os_log_impl(&dword_23A302000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v15, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v7 = 12 * **(a2 + 8);
  if (v7)
  {
    v8 = **(a2 + 16);
    if (!v8)
    {
      v9 = operator new(v7);
      goto LABEL_7;
    }

    if ((v8 & (v8 - 1)) == 0)
    {
      v9 = operator new(v7, v8);
LABEL_7:
      v7 = v9;
      goto LABEL_11;
    }

    v10 = **(Phase::Logger::GetInstance(a1) + 192);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v15 = 136315650;
      *&v15[4] = "SystemAllocator.hpp";
      *&v15[12] = 1024;
      *&v15[14] = 47;
      v16 = 2048;
      *v17 = v7;
      _os_log_impl(&dword_23A302000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Error allocating memory - alignment must be power of two. Alignment requested %zu", v15, 0x1Cu);
    }

    v7 = 0;
  }

LABEL_11:
  bzero(v7, 12 * ((12 * a1 - 12) / 0xCuLL) + 12);
  v11 = *a3;
  *v15 = &unk_284D2F6B8;
  *&v15[8] = v11;
  *&v17[1] = v15;
  *a4 = v7;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v15);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v15);
}

uint64_t std::__function::__func<std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>> Phase::details::AllocArray<Phase::Vector<float,3ul>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(Phase::Vector<float,3ul>*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D2F6B8;
  a2[1] = v2;
  return result;
}

uint64_t *std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t *std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::Vector<float,3ul>*,0>(a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t *std::unique_ptr<Phase::Vector<float,3ul> [],std::function<void ()(void *)>>::reset[abi:ne200100]<Phase::Vector<float,3ul>*,0>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>@<X0>(Phase::Logger *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *&v16[5] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    v12 = **(Phase::Logger::GetInstance(0) + 128);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315394;
      *&v14[4] = "ManagedPtr.hpp";
      *&v14[12] = 1024;
      *&v14[14] = 229;
      _os_log_impl(&dword_23A302000, v12, OS_LOG_TYPE_ERROR, "%25s:%-5d EXCEPTION (std::logic_error) [inCount == 0 is true]: Attempting to allocate an array of 0 elements", v14, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Attempting to allocate an array of 0 elements");
  }

  v6 = 4 * **(a2 + 8);
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = **(a2 + 16);
  if (!v7)
  {
    v8 = operator new(v6);
    goto LABEL_10;
  }

  if ((v7 & (v7 - 1)) != 0)
  {
    v9 = **(Phase::Logger::GetInstance(a1) + 192);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v14 = 136315650;
      *&v14[4] = "SystemAllocator.hpp";
      *&v14[12] = 1024;
      *&v14[14] = 47;
      v15 = 2048;
      *v16 = v6;
      _os_log_impl(&dword_23A302000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Error allocating memory - alignment must be power of two. Alignment requested %zu", v14, 0x1Cu);
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  v8 = operator new(v6, v7);
LABEL_10:
  v10 = *a3;
  *v14 = &unk_284D2F700;
  *&v14[8] = v10;
  *&v16[1] = v14;
  *a4 = v8;
  std::__function::__value_func<void ()(void *)>::__value_func[abi:ne200100]((a4 + 1), v14);
  return std::__function::__value_func<void ()(void *)>::~__value_func[abi:ne200100](v14);
}

uint64_t std::__function::__func<std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&)::{lambda(void *)#1},std::allocator<std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void)#1} const&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&>(unsigned long,Phase::SystemAllocator&&,std::unique_ptr<float [],std::function<void ()(void *)>> Phase::details::AllocArray<float,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(float*)#1} const&)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D2F700;
  a2[1] = v2;
  return result;
}

uint64_t *std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v1);
  }

  return result;
}

uint64_t *std::unique_ptr<float [],std::function<void ()(void *)>>::operator=[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100]<float *,0>(a1, v4);
  std::__function::__value_func<void ()(void *)>::operator=[abi:ne200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t *std::unique_ptr<float [],std::function<void ()(void *)>>::reset[abi:ne200100]<float *,0>(uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t std::__function::__func<std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>> Phase::details::AllocMem<Phase::PackedSubbandArray<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void *)#1},std::allocator<std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>> Phase::details::AllocMem<Phase::PackedSubbandArray<float>,Phase::SystemAllocator>(Phase::SystemAllocator &,unsigned long,unsigned long)::{lambda(void *)#1}>,void ()(void *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284D2F748;
  a2[1] = v2;
  return result;
}

uint64_t *std::unique_ptr<Phase::PackedSubbandArray<float>,std::function<void ()(void *)>>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v3 = *result;
  *result = a2;
  if (v3)
  {
    return std::function<void ()(void *)>::operator()((result + 1), v3);
  }

  return result;
}

uint64_t Phase::Controller::DVM23::AmbientSubmixController::AmbientSubmixController(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  *(a1 + 24) = 0;
  *(a1 + 32) = 9;
  *a1 = &unk_284D2F790;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  std::vector<Phase::Controller::DVM23::SubmixController *>::resize((a1 + 40), a4);
  *(a1 + 32) = 3;
  return a1;
}

void sub_23A321D5C(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 48) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Phase::Controller::DVM23::SubmixController *>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<Phase::Controller::DVM23::SubmixController *>::__append(a1, a2 - v2);
  }
}

void Phase::Controller::DVM23::AmbientSubmixController::~AmbientSubmixController(Phase::Controller::DVM23::AmbientSubmixController *this)
{
  *this = &unk_284D2F790;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }
}

{
  *this = &unk_284D2F790;
  v2 = *(this + 5);
  if (v2)
  {
    *(this + 6) = v2;
    operator delete(v2);
  }

  JUMPOUT(0x23EE864A0);
}

uint64_t Phase::Controller::DVM23::AmbientSubmixController::SetPlaystate(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a3 == 2)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 16);
    std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](v7, a4);
    v8 = v4;
    v9 = v5;
    v10 = 0;
    operator new();
  }

  return 0;
}

void sub_23A321F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va1);
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t Phase::Controller::DVM23::AmbientSubmixController::ConnectToGenerator(Phase::Controller::DVM23::AmbientSubmixController *this, int64x2_t *a2, Phase::Controller::DVM23::GraphController *a3)
{
  v6 = (*(*a3 + 80))(a3);
  v7 = (*(*a2->i64[0] + 80))(a2->i64[0], v6);
  if (v7)
  {
    v8 = -858993459 * ((*(v7 + 40) - *(v7 + 32)) >> 3);
  }

  else
  {
    v8 = 0;
  }

  if (v8 != (*(this + 6) - *(this + 5)) >> 3)
  {
    return 14;
  }

  if (v8 < 1)
  {
    return 0;
  }

  v9 = 0;
  v10 = v8;
  while (1)
  {
    v11 = (*(*a3 + 80))(a3);
    v12 = *(*(this + 5) + 8 * v9);
    v13 = (*(*v12 + 80))(v12);
    result = Phase::Controller::DVM23::DspVoiceManager23::AddConnection(a2, v11, v9, v13, 0);
    if (result)
    {
      break;
    }

    if (v10 == ++v9)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Phase::Controller::DVM23::AmbientSubmixController::ConnectToGraph(uint64_t a1, Phase::Controller::DVM23::VoiceGraph **a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v6 == v7)
  {
    return 0;
  }

  for (i = 0; ; i += 4)
  {
    result = Phase::Controller::DVM23::SubmixController::ConnectToGraph(*v6, a2, a3, a5, *(*a4 + i), a6);
    if (result)
    {
      break;
    }

    if (++v6 == v7)
    {
      return 0;
    }
  }

  return result;
}

uint64_t Phase::Controller::DVM23::GraphController::ConfigureGraph()
{
  return 0;
}

{
  return 0;
}

{
  return 0;
}

void std::vector<Phase::Controller::DVM23::SubmixController *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<Phase::Controller::DVM23::SubmixController *>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::SubmixController *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<Phase::Controller::DVM23::SubmixController *>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = (a2 + 24);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**v3 + 24))(*v3, a1);
      return a1;
    }

    *(a1 + 24) = v4;
  }

  else
  {
    v3 = (a1 + 24);
  }

  *v3 = 0;
  return a1;
}

void *std::__function::__func<Phase::Controller::DVM23::AmbientSubmixController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284D2F7F8;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 1));
  return a1;
}

void std::__function::__func<Phase::Controller::DVM23::AmbientSubmixController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284D2F7F8;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100]((a1 + 1));

  JUMPOUT(0x23EE864A0);
}

__n128 std::__function::__func<Phase::Controller::DVM23::AmbientSubmixController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284D2F7F8;
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::__value_func[abi:ne200100](a2 + 8, a1 + 8);
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<Phase::Controller::DVM23::AmbientSubmixController::SetPlaystate(Phase::Controller::DVM23::DspVoiceManager23 *,Phase::Controller::DVM23::PlaystateCommand,std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&)::$_0,std::allocator<std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)> &&>,void ()(unsigned long long)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::~__value_func[abi:ne200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::function<void ()(unsigned long long,Phase::UniqueObjectId,Phase::Controller::DVM23::Playstate,Phase::DspLayer23::DspLayerError)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v11[0] = a3;
  v11[1] = a4;
  v10 = a2;
  v8 = a6;
  v9 = a5;
  v6 = *(a1 + 24);
  if (!v6)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v6 + 48))(v6, &v10, v11, &v9, &v8);
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void Phase::ArrayFunction::Interleave(const void **this, DSPComplex *__C, vDSP_Length __N, uint64_t a4)
{
  if (a4 == 1)
  {
    v7 = *this;
    v8 = 4 * __N;

    memcpy(__C, v7, v8);
  }

  else
  {
    v15 = v4;
    v16 = v5;
    if (a4 == 2)
    {
      v14 = *this;
      vDSP_ztoc(&v14, 1, __C, 2, __N);
    }

    else if (__N)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = this;
        for (i = a4; i; --i)
        {
          v13 = *v11;
          v11 = (v11 + 8);
          *(&__C->real + v10++) = *(v13 + 4 * v9);
        }

        ++v9;
      }

      while (v9 != __N);
    }
  }
}

uint64_t *Phase::ArrayFunction::InterleaveAdd(uint64_t *this, const float *const *a2, float *a3, uint64_t a4)
{
  if (a4 == 1)
  {
    JUMPOUT(0x23EE87280);
  }

  if (a3)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = this;
      for (i = a4; i; --i)
      {
        v8 = *v6++;
        *(a2 + v5) = *(v8 + 4 * v4) + *(a2 + v5);
        ++v5;
      }

      v4 = (v4 + 1);
    }

    while (v4 != a3);
  }

  return this;
}

void Phase::ArrayFunction::Deinterleave(DSPComplex *__C, const float *a2, vDSP_Length __N, uint64_t a4)
{
  if (a4 == 1)
  {
    v7 = *a2;
    v8 = 4 * __N;

    memcpy(v7, __C, v8);
  }

  else
  {
    v16 = v4;
    v17 = v5;
    if (a4 == 2)
    {
      v15 = *a2;
      vDSP_ctoz(__C, 2, &v15, 1, __N);
    }

    else if (__N)
    {
      v9 = 0;
      v10 = 0;
      do
      {
        v11 = a2;
        for (i = a4; i; --i)
        {
          v13 = *(&__C->real + v10++);
          v14 = *v11;
          v11 += 2;
          *(v14 + 4 * v9) = v13;
        }

        ++v9;
      }

      while (v9 != __N);
    }
  }
}

void sub_23A322A34(_Unwind_Exception *a1)
{
  objc_destroyWeak(v4);
  std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(v3);
  std::__list_imp<Phase::Controller::AssetUnloader::UnloadRequest>::clear(v2);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(v1);
  _Unwind_Resume(a1);
}

void Phase::Controller::AssetUnloader::UnregisterAsset(uint64_t a1, void *a2, void *a3)
{
  a2;
  a3;
  std::__list_imp<Phase::Controller::AssetUnloader::UnloadRequest>::__create_node[abi:ne200100]<PHASEAsset * {__strong}&,void({block_pointer} {__strong}&)(BOOL)>();
}

void Phase::Controller::AssetUnloader::Update(Phase::Controller::AssetUnloader *this)
{
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::ExecuteCommands(this);
  v2 = *(this + 6);
  if (v2 != (this + 40))
  {
    v3 = 0;
    while (1)
    {
      v4 = *(v2 + 2);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = *(this + 12);
        v6 = [v4 identifier];
        StringHashId = Phase::GetStringHashId(v6, v11);
        v9 = Phase::ActionTreeManager::StopActionTreesWithActionTreeAsset(v10, StringHashId);
        goto LABEL_9;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = *(this + 12);
        v6 = [v4 identifier];
        v15 = Phase::GetStringHashId(v6, v14);
        v9 = Phase::ActionTreeManager::StopActionTreesWithGlobalMetaParameterAsset(v13, v15);
        goto LABEL_9;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_11;
      }

      v6 = v4;
      v20 = [(Phase *)v6 getDataBundle];
      if (v20[1])
      {
        v21 = 0;
        v3 = 0;
        v22 = 0;
        do
        {
          if (Phase::ActionTreeManager::StopActionTreesWithActionTreeAsset(*(this + 12), *(v20[2] + v21)))
          {
            v3 = 1;
          }

          ++v22;
          v21 += 120;
        }

        while (v22 < v20[1]);
      }

      else
      {
        v3 = 0;
      }

      if (v20[3])
      {
        v23 = 0;
        v24 = 0;
        do
        {
          if (Phase::ActionTreeManager::StopActionTreesWithSoundAsset(*(this + 12), *(v20[4] + v23)))
          {
            v3 = 1;
          }

          ++v24;
          v23 += 1064;
        }

        while (v24 < v20[3]);
      }

      if (v20[7])
      {
        v25 = 0;
        v26 = 0;
        do
        {
          if (Phase::ActionTreeManager::StopActionTreesWithGlobalMetaParameterAsset(*(this + 12), *(v20[8] + v25)))
          {
            v3 = 1;
          }

          ++v26;
          v25 += 464;
        }

        while (v26 < v20[7]);
      }

LABEL_10:

LABEL_11:
      if (v3)
      {
        v16 = *(v2 + 1);
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(this + 13);
        [WeakRetained removeAssetInternal:v4];

        v18 = *(v2 + 3);
        if (v18)
        {
          (*(v18 + 16))(v18, 1);
        }

        v19 = *v2;
        v16 = *(v2 + 1);
        v19[1] = v16;
        *v16 = v19;
        --*(this + 7);
        std::__list_imp<Phase::Controller::AssetUnloader::UnloadRequest>::__delete_node[abi:ne200100](this + 40, v2);
      }

      v2 = v16;
      if (v16 == (this + 40))
      {
        goto LABEL_37;
      }
    }

    v5 = *(this + 12);
    v6 = [v4 identifier];
    v8 = Phase::GetStringHashId(v6, v7);
    v9 = Phase::ActionTreeManager::StopActionTreesWithSoundAsset(v5, v8);
LABEL_9:
    v3 = v9;
    goto LABEL_10;
  }

LABEL_37:
  v27 = *(this + 9);
  while (v27 != (this + 64))
  {
    v28.mData = v27[3];
    if (Phase::ActionTreeManager::StopActionTreesWithListenerSourceId(*(this + 12), v28))
    {
      v27 = v27[1];
    }

    else
    {
      (*(**(*(this + 11) + 368) + 288))(*(*(this + 11) + 368), v27[2], v27[3]);
      v29 = *v27;
      v30 = v27[1];
      *(v29 + 8) = v30;
      *v30 = v29;
      --*(this + 10);
      operator delete(v27);
      v27 = v30;
    }
  }
}

void Phase::Controller::AssetUnloader::~AssetUnloader(id *this)
{
  objc_destroyWeak(this + 13);
  std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(this + 8);
  std::__list_imp<Phase::Controller::AssetUnloader::UnloadRequest>::clear(this + 5);

  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);
}

{
  objc_destroyWeak(this + 13);
  std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(this + 8);
  std::__list_imp<Phase::Controller::AssetUnloader::UnloadRequest>::clear(this + 5);
  Phase::Commandable<128,Phase::LockFreeQueueMPSC>::~Commandable(this);

  JUMPOUT(0x23EE864A0);
}

void *std::__list_imp<Phase::Controller::AssetUnloader::ObjectUnloadRequest>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void std::__list_imp<Phase::Controller::AssetUnloader::UnloadRequest>::clear(void *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    v4[1] = v3;
    *v3 = v4;
    a1[2] = 0;
    while (v2 != a1)
    {
      v5 = *(v2 + 8);
      std::__list_imp<Phase::Controller::AssetUnloader::UnloadRequest>::__delete_node[abi:ne200100](a1, v2);
      v2 = v5;
    }
  }
}

void std::__list_imp<Phase::Controller::AssetUnloader::UnloadRequest>::__delete_node[abi:ne200100](uint64_t a1, id *a2)
{

  operator delete(a2);
}

float Phase::SpatialModeler::AudibleEarlyReflection::sAerPlaneHashingToleranceFactorOrientationInternal(Phase::SpatialModeler::AudibleEarlyReflection *this)
{
  v1 = &unk_27DF97000;
  {
    v1 = &unk_27DF97000;
    if (v3)
    {
      *&Phase::SpatialModeler::AudibleEarlyReflection::sAerPlaneHashingToleranceFactorOrientationInternal(void)::sToleranceFactor = 1.0 / tanf(0.17453);
      v1 = &unk_27DF97000;
    }
  }

  return v1[936];
}

int *Phase::SpatialModeler::AudibleEarlyReflection::AudibleEarlyReflection(int *a1, uint64_t a2, float *a3, uint64_t a4, int *a5, int *a6, int *a7, float a8)
{
  *(a1 + 1) = 0u;
  v8 = a1 + 4;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 37) = 0u;
  v9 = (a1 + 37);
  a1[67] = 0;
  *(a1 + 34) = 0;
  *(a1 + 41) = 0u;
  *(a1 + 45) = 0u;
  *(a1 + 49) = 0u;
  *(a1 + 53) = 0u;
  *(a1 + 57) = 0u;
  *(a1 + 15) = 0u;
  if (!a2)
  {
    std::terminate();
  }

  v14 = a3;
  v16 = *(a2 + 68);
  *a1 = v16;
  *(a1 + 1) = *(a2 + 60);
  *(a1 + 3) = a8;
  v17 = *(a3 + 31);
  v29 = 0uLL;
  v30 = 0uLL;
  v31 = 0uLL;
  v32 = 0uLL;
  v33 = 0uLL;
  v34 = 0uLL;
  memset(v35, 0, 28);
  *&v35[28] = v17;
  if (v17)
  {
    bzero(&v29, 4 * v17);
  }

  v18 = v34;
  v8[4] = v33;
  v8[5] = v18;
  v19 = *&v35[16];
  v8[6] = *v35;
  v8[7] = v19;
  v20 = v30;
  *v8 = v29;
  v8[1] = v20;
  v21 = v32;
  v8[2] = v31;
  v8[3] = v21;
  a1[61] = *a6;
  a1[62] = a6[1];
  a1[63] = a6[2];
  a1[55] = *a5;
  a1[56] = a5[1];
  a1[57] = a5[2];
  a1[58] = *a7;
  a1[59] = a7[1];
  a1[60] = a7[2];
  v22 = *(v14 + 31);
  if (v22)
  {
    do
    {
      v23 = *v14++;
      *v8 = sqrtf(v23);
      v8 = (v8 + 4);
      --v22;
    }

    while (v22);
  }

  v24 = 0;
  a1[36] = 1065353216;
  do
  {
    v25 = &a1[v24 / 4];
    v25[37] = *(a4 + v24);
    v25[38] = *(a4 + v24 + 4);
    v25[39] = *(a4 + v24 + 8);
    v25[40] = *(a4 + v24 + 12);
    v25[41] = *(a4 + v24 + 16);
    v25[42] = *(a4 + v24 + 20);
    v24 += 24;
  }

  while (v24 != 72);
  if (v16 < 1)
  {
    v27 = 0;
  }

  else
  {
    v26 = 0;
    v27 = 0;
    do
    {
      ++v26;
      v27 += Phase::SpatialModeler::AudibleEarlyReflection::sPlaneHashWithBucketNormal((v9 + 12), v9) * v26;
      v9 += 24;
    }

    while (v26 < *a1);
  }

  *(a1 + 32) = v27;
  return a1;
}

float Phase::SpatialModeler::AudibleEarlyReflection::updateISPositionEstimate(Phase::SpatialModeler::AudibleEarlyReflection *this, float a2)
{
  v3 = *(this + 3) * a2;
  v4 = *(this + 1) * 0.017453;
  v5 = __sincosf_stret((90.0 - *(this + 2)) * 0.017453);
  v6 = __sincosf_stret(v4);
  v7 = *(this + 59) + (v3 * v5.__cosval);
  v8 = *(this + 60);
  *(this + 67) = *(this + 58) + (v6.__sinval * (v3 * v5.__sinval));
  result = v8 + (v6.__cosval * (v3 * v5.__sinval));
  *(this + 68) = v7;
  *(this + 69) = result;
  return result;
}

float Phase::SpatialModeler::AudibleEarlyReflection::operator+=(unsigned int *a1, unsigned int *a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *(a1 + 36);
  v9 = v8 / (v8 + *(a2 + 36));
  v10 = 1.0 - v9;
  if (v9 >= (1.0 - v9))
  {
    v11 = a1;
  }

  else
  {
    v11 = a2;
  }

  v12 = *v11;
  *a1 = v12;
  v13 = *(a1 + 1);
  v14 = *(a2 + 1);
  v15 = vabds_f32(v13, v14);
  v16 = v14 + 360.0;
  v17 = v13 + 360.0;
  if (v13 >= v14)
  {
    v17 = *(a1 + 1);
  }

  else
  {
    v16 = *(a2 + 1);
  }

  if (v15 > 180.0)
  {
    v14 = v16;
    v13 = v17;
  }

  v18 = (v10 * v14) + (v13 * v9);
  if (v18 > 360.0)
  {
    v18 = v18 + -360.0;
  }

  *(a1 + 1) = v18;
  v19 = vmla_n_f32(vmul_n_f32(*(a2 + 2), v10), *(a1 + 2), v9);
  *(a1 + 1) = v19;
  v20 = (v9 * *(a1 + 63)) + (v10 * *(a2 + 63));
  v21 = vadd_f32(vmul_n_f32(*(a1 + 61), v9), vmul_n_f32(*(a2 + 61), v10));
  *&a8 = sqrtf(vaddv_f32(vmul_f32(v21, v21)) + (v20 * v20));
  *(a1 + 61) = vdiv_f32(v21, vdup_lane_s32(*&a8, 0));
  *(a1 + 63) = v20 / *&a8;
  v22 = v8 + *(a2 + 36);
  *(a1 + 36) = v22;
  v23 = (v9 * *(a1 + 60)) + (v10 * *(a2 + 60));
  *(a1 + 29) = vadd_f32(vmul_n_f32(*(a1 + 58), v9), vmul_n_f32(*(a2 + 58), v10));
  *(a1 + 60) = v23;
  v24 = v9 * *(a1 + 57);
  v25 = *(a2 + 57);
  *(a1 + 55) = vadd_f32(vmul_n_f32(*(a1 + 55), v9), vmul_n_f32(*(a2 + 55), v10));
  *(a1 + 57) = v24 + (v10 * v25);
  v26 = a1[35];
  memset(v77, 0, 124);
  v27 = a1 + 4;
  if (v26)
  {
    v28 = v77;
    v29 = (a1 + 4);
    v30 = v26;
    do
    {
      v31 = *v29++;
      *v28++ = v31 * v31;
      --v30;
    }

    while (v30);
    v83 = 0u;
    memset(v84, 0, 28);
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v32 = &v78;
    v33 = v77;
    v34 = v26;
    v78 = 0u;
    do
    {
      v35 = *v33++;
      *v32++ = v9 * v35;
      --v34;
    }

    while (v34);
  }

  else
  {
    memset(v84, 0, sizeof(v84));
    v82 = 0uLL;
    v83 = 0uLL;
    v80 = 0uLL;
    v81 = 0uLL;
    v78 = 0uLL;
    v79 = 0uLL;
  }

  v36 = a2[35];
  memset(v69, 0, 124);
  if (v36)
  {
    v37 = (a2 + 4);
    v38 = v69;
    v39 = v36;
    do
    {
      v40 = *v37++;
      *v38++ = v40 * v40;
      --v39;
    }

    while (v39);
    v75 = 0u;
    memset(v76, 0, 28);
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v41 = &v70;
    v42 = v69;
    v70 = 0u;
    do
    {
      v43 = *v42++;
      *v41++ = v10 * v43;
      --v36;
    }

    while (v36);
  }

  else
  {
    memset(v76, 0, sizeof(v76));
    v74 = 0uLL;
    v75 = 0uLL;
    v72 = 0uLL;
    v73 = 0uLL;
    v70 = 0uLL;
    v71 = 0uLL;
  }

  memset(v85, 0, 124);
  if (v26)
  {
    v44 = v85;
    v45 = &v70;
    v46 = &v78;
    v47 = v26;
    do
    {
      v48 = *v46++;
      v49 = v48;
      v50 = *v45++;
      *v44++ = v49 + v50;
      --v47;
    }

    while (v47);
    v91 = 0u;
    memset(v92, 0, 28);
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v86 = 0u;
    v51 = &v86;
    v52 = v85;
    HIDWORD(v92[1]) = v26;
    do
    {
      v53 = *v52++;
      *v51++ = sqrtf(v53);
      --v26;
    }

    while (v26);
  }

  else
  {
    memset(v92, 0, sizeof(v92));
    v90 = 0uLL;
    v91 = 0uLL;
    v88 = 0uLL;
    v89 = 0uLL;
    v86 = 0uLL;
    v87 = 0uLL;
  }

  v54 = v91;
  *(a1 + 5) = v90;
  *(a1 + 6) = v54;
  v55 = v92[1];
  *(a1 + 7) = v92[0];
  *(a1 + 8) = v55;
  v56 = v87;
  *v27 = v86;
  *(a1 + 2) = v56;
  v57 = v89;
  *(a1 + 3) = v88;
  *(a1 + 4) = v57;
  if (v12 >= 1)
  {
    v58 = (a2 + 42);
    v59 = (a1 + 42);
    do
    {
      v60 = (v9 * *(v59 - 3)) + (v10 * *(v58 - 3));
      v61 = vadd_f32(vmul_n_f32(*(v59 - 5), v9), vmul_n_f32(*(v58 - 5), v10));
      *(v59 - 5) = v61;
      *(v59 - 3) = v60;
      v62 = (v9 * *v59) + (v10 * *v58);
      v63 = vadd_f32(vmul_n_f32(*(v59 - 2), v9), vmul_n_f32(*(v58 - 2), v10));
      *v61.i32 = sqrtf(vaddv_f32(vmul_f32(v63, v63)) + (v62 * v62));
      *(v59 - 1) = vdiv_f32(v63, vdup_lane_s32(v61, 0));
      *v59 = v62 / *v61.i32;
      v59 += 6;
      v58 += 6;
      --v12;
    }

    while (v12);
  }

  if (v9 <= v10)
  {
    v64 = a2;
  }

  else
  {
    v64 = a1;
  }

  *(a1 + 32) = *(v64 + 32);
  v65 = a1[35];
  if (v65)
  {
    v66 = 0.0;
    do
    {
      v67 = *v27;
      v27 = (v27 + 4);
      v66 = v66 + (v67 * v67);
      --v65;
    }

    while (v65);
  }

  else
  {
    v66 = 0.0;
  }

  result = v22 * (v66 / COERCE_FLOAT(vmul_f32(v19, v19).i32[1]));
  *(a1 + 70) = result;
  return result;
}