void sub_21C41B528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48)
{
  if (STACK[0x258])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](STACK[0x258]);
  }

  _Unwind_Resume(a1);
}

uint64_t SKCRendererGenerateQuadIndexBufferData<unsigned int>(jet_buffer **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 12);
  v3 = (*(**a1 + 16))(*a1);
  result = jet_buffer::get_element_size(v1);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      *(v3 + 4 * i) = dword_21C4B926C[i % 6] + 4 * (i / 6);
    }
  }

  return result;
}

std::string *jet_command_buffer::set_fragment_constant_value(uint64_t a1, std::string *__str, float a3)
{
  v9 = 22;
  v6 = *(a1 + 16);
  if (v6 >= *(a1 + 24))
  {
    v7 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v9);
  }

  else
  {
    *v6 = &unk_282E15828;
    *(v6 + 8) = 22;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 16) = 0;
    *(v6 + 64) = 0;
    v7 = v6 + 192;
    *(v6 + 96) = 0;
  }

  *(a1 + 16) = v7;
  result = std::string::operator=((v7 - 176), __str);
  *(v7 - 64) = a3;
  return result;
}

__n128 jet_command_buffer::set_vertex_constant_value(uint64_t a1, std::string *__str, __n128 a3)
{
  v9 = 18;
  v5 = *(a1 + 16);
  if (v5 >= *(a1 + 24))
  {
    v6 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v9);
  }

  else
  {
    *v5 = &unk_282E15828;
    *(v5 + 8) = 18;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 16) = 0;
    *(v5 + 64) = 0;
    v6 = v5 + 192;
    *(v5 + 96) = 0;
  }

  *(a1 + 16) = v6;
  std::string::operator=((v6 - 176), __str);
  result = a3;
  *(v6 - 64) = a3;
  return result;
}

__n128 jet_command_buffer::set_vertex_constant_value(uint64_t a1, std::string *__str, __n128 a3, __n128 a4, __n128 a5, __n128 a6)
{
  v15 = 21;
  v8 = *(a1 + 16);
  if (v8 >= *(a1 + 24))
  {
    v9 = std::vector<jet_render_op>::__emplace_back_slow_path<jet_render_opcode>(a1 + 8, &v15);
  }

  else
  {
    *v8 = &unk_282E15828;
    *(v8 + 8) = 21;
    *(v8 + 24) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = 0;
    *(v8 + 64) = 0;
    v9 = v8 + 192;
    *(v8 + 96) = 0;
  }

  *(a1 + 16) = v9;
  std::string::operator=((v9 - 176), __str);
  *(v9 - 64) = a3;
  *(v9 - 48) = a4;
  result = a6;
  *(v9 - 32) = a5;
  *(v9 - 16) = a6;
  return result;
}

void **std::vector<std::shared_ptr<jet_buffer>>::push_back[abi:ne200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<jet_buffer>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = v12 - v14;
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<jet_buffer>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

uint64_t generateBatchID(SKTexture *a1, SKTexture *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3)
  {
    [(SKTexture *)v3 _backingTexture];
    if (v10)
    {
      [(SKTexture *)v3 _backingTexture];
      v5 = v8;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    else
    {
      v5 = 0;
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v4)
  {
    [(SKTexture *)v4 _backingTexture];
    if (v10)
    {
      [(SKTexture *)v4 _backingTexture];
      v6 = v8 << 32;
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }
    }

    else
    {
      v6 = 0;
    }

    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 | v5;
}

void sub_21C41BE98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

__n64 SKCTileMapNode::_chunkCoordinatesFromChunkID(SKCTileMapNode *this, int a2)
{
  result.n64_f32[0] = a2;
  result.n64_f32[1] = (~a2 >> 16);
  return result;
}

void SKCTileMapNode::setShader(id *this, SKShader *a2)
{
  objc_storeStrong(this + 71, a2);
  SKCNode::setDirty(this);

  SKCNode::recomputeFlags(this, 1);
}

void SKCTileMapNode::subclassRecomputeFlags(id *this)
{
  if ([this[71] _usesTimeUniform] && (*(this + 172) & 1) == 0 && (*(this + 171) & 0x60) != 0)
  {

    SKCNode::setFlags(this, 2, 1);
  }
}

void SKCTileMapNode::setTile(id *this, unsigned int a2, int a3)
{
  v6 = SKCTileMapNode::_ensureChunkForTileIndex(this, a2);
  v7 = *(this + 151);
  v8 = a2 / v7;
  v9 = (a2 % v7);
  v10 = v8;
  v11 = v9 % *(this + 612) + v8 % *(this + 613) * *(this + 612);
  v12 = *(*(v6 + 192) + 4 * v11);
  v13 = v12 & 0x7FFFFFFF;
  if ((v12 & 0x7FFFFFFF) == a3)
  {
    goto LABEL_19;
  }

  v14 = v6;
  if (a3 == 0x7FFFFFFF || v13 != 0x7FFFFFFF)
  {
    if (a3 == 0x7FFFFFFF && v13 != 0x7FFFFFFF)
    {
      v15 = this;
      v16 = v14;
      v17 = -1;
      goto LABEL_9;
    }

    if (a3 == 0x7FFFFFFF || v13 == 0x7FFFFFFF)
    {
      goto LABEL_10;
    }

    SKCTileMapNode::_cacheTileIfAnimated(this, v6, v12, -1);
  }

  else
  {
    ++*(v6 + 8);
  }

  v15 = this;
  v16 = v14;
  LOWORD(v13) = a3;
  v17 = 1;
LABEL_9:
  SKCTileMapNode::_cacheTileIfAnimated(v15, v16, v13, v17);
LABEL_10:
  *(*(v14 + 192) + 4 * v11) = v12 & 0x80000000 | a3;
  *(v14 + 4) |= 3u;
  v18 = *(this + 156);
  if (v18 >= v9)
  {
    v18 = v9;
  }

  *(this + 156) = v18;
  v19 = *(this + 157);
  if (v19 >= v10)
  {
    v19 = v10;
  }

  *(this + 157) = v19;
  v20 = *(this + 158);
  if (v9 > v20)
  {
    v20 = v9;
  }

  *(this + 158) = v20;
  v21 = *(this + 159);
  if (v10 > v21)
  {
    v21 = v10;
  }

  *(this + 159) = v21;
LABEL_19:

  SKCNode::setDirty(this);
}

uint64_t SKCTileMapNode::_ensureChunkForTileIndex(id *this, unsigned int a2)
{
  v4 = this[1];
  v5 = ((a2 % *(this + 151)) / *(this + 612)) | (~((a2 / *(this + 151)) / *(this + 613)) << 16);
  v10 = v5;
  v6 = this[81];
  if (!v6)
  {
LABEL_6:
    operator new();
  }

  while (1)
  {
    v7 = v6[8];
    if (v5 >= v7)
    {
      break;
    }

LABEL_5:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_6;
    }
  }

  if (v7 < v5)
  {
    v6 += 2;
    goto LABEL_5;
  }

  v11 = &v10;
  v8 = std::__tree<std::__value_type<unsigned int,SKCTileMapNodeChunk *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCTileMapNodeChunk *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCTileMapNodeChunk *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>((this + 80), &v10)[5];

  return v8;
}

void SKCTileMapNode::_cacheTileIfAnimated(uint64_t a1, uint64_t a2, unsigned __int16 a3, int a4)
{
  if (a2)
  {
    v19 = a3;
    if (a3 != 0xFFFF)
    {
      v8 = *(a1 + 8);
      v9 = [v8 tileSet];
      v10 = [v9 tileDefinitions];
      v11 = [v10 count];
      v12 = a3;

      if (v11 > a3)
      {
        v13 = [v8 tileSet];
        v14 = [v13 tileDefinitions];
        v15 = [v14 objectAtIndexedSubscript:v12];

        v16 = [v15 textures];
        v17 = [v16 count];

        if (v17 >= 2)
        {
          if (!std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::find<unsigned short>((a2 + 152), &v19))
          {
            v20 = &v19;
            *(std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a2 + 152), &v19) + 5) = 0;
            ++*(a1 + 620);
          }

          v20 = &v19;
          v18 = std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a2 + 152), &v19);
          *(v18 + 5) += a4;
          v20 = &v19;
          if (*(std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>((a2 + 152), &v19) + 5) <= 0)
          {
            std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::__erase_unique<unsigned short>((a2 + 152), &v19);
            --*(a1 + 620);
          }

          SKCNode::recomputeFlags(a1, 1);
        }
      }
    }
  }
}

void SKCTileMapNode::setAllTiles(SKCTileMapNode *this, int a2)
{
  v3 = *(this + 152) * *(this + 151);
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      SKCTileMapNode::setTile(this, i, a2);
    }
  }

  SKCNode::setDirty(this);
}

_DWORD *SKCTileMapNode::getRawTilesCopy(SKCTileMapNode *this)
{
  v1 = (*(this + 152) * *(this + 151));
  if (!v1)
  {
    return 0;
  }

  v3 = malloc_type_malloc(4 * (*(this + 152) * *(this + 151)), 0x100004052888210uLL);
  for (i = 0; i != v1; ++i)
  {
    v3[i] = SKCTileMapNode::getRawTile(this, i);
  }

  return v3;
}

uint64_t SKCTileMapNode::getRawTile(SKCTileMapNode *this, unsigned int a2)
{
  v2 = *(this + 151);
  v3 = a2 / v2;
  v4 = a2 % v2;
  v5 = *(this + 612);
  v6 = *(this + 613);
  v7 = (v4 / v5) | (~(v3 / v6) << 16);
  v11 = v7;
  v8 = *(this + 81);
  if (!v8)
  {
    return 0x7FFFFFFFLL;
  }

  while (1)
  {
    v9 = *(v8 + 8);
    if (v7 >= v9)
    {
      break;
    }

LABEL_5:
    v8 = *v8;
    if (!v8)
    {
      return 0x7FFFFFFFLL;
    }
  }

  if (v9 < v7)
  {
    ++v8;
    goto LABEL_5;
  }

  v12 = &v11;
  return *(*(std::__tree<std::__value_type<unsigned int,SKCTileMapNodeChunk *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCTileMapNodeChunk *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCTileMapNodeChunk *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 640, &v11)[5] + 192) + 4 * (v4 % v5 + (v3 % v6) * *(this + 612))) & 0x7FFFFFFF;
}

SKCTileMapNode *SKCTileMapNode::copyRawTilesIntoArray(SKCTileMapNode *this, unsigned int *a2)
{
  if (a2)
  {
    v2 = this;
    v3 = (*(this + 152) * *(this + 151));
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        this = SKCTileMapNode::getRawTile(v2, i);
        a2[i] = this;
      }
    }
  }

  return this;
}

SKCTileMapNode *SKCTileMapNode::copyRawTilesIntoArray(SKCTileMapNode *this, unsigned int *a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  if (a2)
  {
    v7 = a4;
    v9 = this;
    v10 = *(this + 151);
    v11 = *(this + 152);
    v12 = v10 <= a3 || v11 * v10 == 0;
    v13 = v12 || a6 == 0;
    v14 = v13 || a5 == 0;
    if (!v14 && v11 >= a4)
    {
      v17 = 0;
      do
      {
        if (v7 >= *(v9 + 152))
        {
          break;
        }

        v18 = v17 * a5;
        v19 = *(v9 + 151) * v7;
        v20 = a5;
        v21 = a3;
        do
        {
          if (v21 >= *(v9 + 151))
          {
            break;
          }

          this = SKCTileMapNode::getRawTile(v9, v19 + v21);
          a2[v18++] = this;
          ++v21;
          --v20;
        }

        while (v20);
        ++v17;
        ++v7;
      }

      while (v17 != a6);
    }
  }

  return this;
}

void SKCTileMapNode::copyRawTilesFromArray(SKCTileMapNode *this, unsigned int *a2)
{
  if (a2)
  {
    v3 = (*(this + 152) * *(this + 151));
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        SKCTileMapNode::setTile(this, i, a2[i]);
      }
    }
  }
}

void SKCTileMapNode::copyRawTilesFromArray(SKCTileMapNode *this, unsigned int *a2, unsigned int a3, unsigned int a4, int a5, int a6)
{
  if (a2)
  {
    v7 = a4;
    v10 = *(this + 151);
    v11 = *(this + 152);
    v12 = v10 <= a3 || v11 * v10 == 0;
    v13 = v12 || a6 == 0;
    v14 = v13 || a5 == 0;
    if (!v14 && v11 >= a4)
    {
      v17 = 0;
      do
      {
        if (v7 >= *(this + 152))
        {
          break;
        }

        v18 = *(this + 151) * v7;
        v19 = v17 * a5;
        v20 = a5;
        v21 = a3;
        do
        {
          if (v21 >= *(this + 151))
          {
            break;
          }

          v22 = v19 + 1;
          SKCTileMapNode::setTile(this, v18 + v21++, a2[v19]);
          v19 = v22;
          --v20;
        }

        while (v20);
        ++v17;
        ++v7;
      }

      while (v17 != a6);
    }
  }
}

void SKCTileMapNode::setRawTiles(SKCTileMapNode *this, const unsigned int *a2, int a3, int a4)
{
  *(this + 151) = a3;
  *(this + 152) = a4;
  v8 = *(this + 80);
  v9 = (this + 648);
  if (v8 != (this + 648))
  {
    do
    {
      free(*(v8[5] + 192));
      v10 = v8[1];
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
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
    }

    while (v11 != v9);
  }

  std::__tree<std::__value_type<unsigned short,double>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,double>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,double>>>::destroy(this + 640, *(this + 81));
  *(this + 80) = v9;
  *v9 = 0u;
  if (a3 && a4)
  {
    if (a2)
    {
      v13 = (a4 * a3);
      if (v13)
      {
        for (i = 0; i != v13; ++i)
        {
          SKCTileMapNode::setTile(this, i, a2[i]);
        }
      }
    }

    else
    {
      SKCTileMapNode::setAllTiles(this, 0x7FFFFFFF);
    }
  }

  SKCNode::setDirty(this);
}

void SKCTileMapNode::setChunkSize(SKCTileMapNode *this, int a2, int a3)
{
  v3 = a3;
  v4 = a2;
  if (*(this + 612) != a2 || *(this + 613) != a3)
  {
    RawTilesCopy = SKCTileMapNode::getRawTilesCopy(this);
    *(this + 612) = v4;
    *(this + 613) = v3;
    SKCTileMapNode::setRawTiles(this, RawTilesCopy, *(this + 151), *(this + 152));
    if (RawTilesCopy)
    {

      free(RawTilesCopy);
    }
  }
}

void SKCTileMapNode::forceRedraw(SKCTileMapNode **this, int a2)
{
  SKCNode::setDirty(this);
  v4 = this[80];
  if (v4 != (this + 81))
  {
    if (a2)
    {
      v5 = 3;
    }

    else
    {
      v5 = 1;
    }

    do
    {
      *(*(v4 + 5) + 4) |= v5;
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != (this + 81));
  }
}

double SKCTileMapNode::clearModifiedTileTracking(SKCTileMapNode *this)
{
  result = NAN;
  *(this + 39) = xmmword_21C4B9140;
  return result;
}

void sub_21C41CDCC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::shared_ptr<jet_buffer>::shared_ptr[abi:ne200100]<jet_buffer,0>(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<jet_buffer *,std::shared_ptr<jet_buffer>::__shared_ptr_default_delete<jet_buffer,jet_buffer>,std::allocator<jet_buffer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__shared_ptr_pointer<jet_buffer *,std::shared_ptr<jet_buffer>::__shared_ptr_default_delete<jet_buffer,jet_buffer>,std::allocator<jet_buffer>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<jet_buffer *,std::shared_ptr<jet_buffer>::__shared_ptr_default_delete<jet_buffer,jet_buffer>,std::allocator<jet_buffer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<jet_buffer>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void **std::__split_buffer<std::shared_ptr<jet_buffer>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<jet_buffer>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<jet_buffer>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__deallocate_node(uint64_t a1, id *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::find<unsigned long long>(void *a1, unint64_t *a2)
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
      if (v3 == v8)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2)
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

void std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,SKCTileMapNodeRenderBatch>,void *>>>::operator()[abi:ne200100](uint64_t a1, id *a2)
{
  if (*(a1 + 8) == 1)
  {
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t *std::__tree<std::__value_type<unsigned int,SKCTileMapNodeChunk *>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,SKCTileMapNodeChunk *>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,SKCTileMapNodeChunk *>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
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
      v5 = *(v2 + 32);
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

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::find<unsigned short>(void *a1, unsigned __int16 *a2)
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
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
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
  }

  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(void *a1, unsigned __int16 *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % a1[1];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 8) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::__erase_unique<unsigned short>(void *a1, unsigned __int16 *a2)
{
  result = std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::find<unsigned short>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::erase(a1, result);
    return 1;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<std::__hash_value_type<unsigned short,int>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,int>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,int>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,int>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

double SKCBoundingBoxMake(float32x4_t a1)
{
  *&v1 = vmuls_lane_f32(0.5, a1, 2);
  v2 = vmuls_lane_f32(0.5, a1, 3);
  a1.i64[1] = 0x3F80000000000000;
  LODWORD(v3) = 0;
  *(&v3 + 1) = v2;
  a1.i64[0] = vaddq_f32(a1, vaddq_f32(v1, v3)).u64[0];
  return *a1.i64;
}

BOOL SKCBoundingBoxEquals(const simd_float4x4 *a1, const simd_float4x4 *a2)
{
  v2 = a1->columns[1];
  v3 = vmulq_f32(v2, v2);
  if (sqrtf(vaddv_f32(vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))) <= 0.0 || (v4 = vmulq_f32(a1->columns[2], a1->columns[2]), sqrtf(vaddv_f32(vadd_f32(*v4.i8, *&vextq_s8(v4, v4, 8uLL)))) <= 0.0))
  {
    v5 = vmulq_f32(a2->columns[1], a2->columns[1]);
    if (sqrtf(vaddv_f32(vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))) <= 0.0)
    {
      return 1;
    }

    v6 = vmulq_f32(a2->columns[2], a2->columns[2]);
    if (sqrtf(vaddv_f32(vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL)))) <= 0.0)
    {
      return 1;
    }
  }

  v7 = vsubq_f32(a1->columns[0], a2->columns[0]);
  v8 = vmulq_f32(v7, v7);
  if (sqrtf(vaddv_f32(vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL)))) > 0.0)
  {
    return 0;
  }

  v9 = vsubq_f32(v2, a2->columns[1]);
  v10 = vmulq_f32(v9, v9);
  if (sqrtf(vaddv_f32(vadd_f32(*v10.i8, *&vextq_s8(v10, v10, 8uLL)))) > 0.0)
  {
    return 0;
  }

  v12 = vsubq_f32(a1->columns[2], a2->columns[2]);
  v13 = vmulq_f32(v12, v12);
  return sqrtf(vaddv_f32(vadd_f32(*v13.i8, *&vextq_s8(v13, v13, 8uLL)))) <= 0.0;
}

BOOL SKCBoundingBoxIsEmpty(const simd_float4x4 *a1)
{
  v1 = vmulq_f32(a1->columns[1], a1->columns[1]);
  if (sqrtf(vaddv_f32(vadd_f32(*v1.i8, *&vextq_s8(v1, v1, 8uLL)))) <= 0.0)
  {
    return 1;
  }

  v2 = vmulq_f32(a1->columns[2], a1->columns[2]);
  return sqrtf(vaddv_f32(vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL)))) <= 0.0;
}

float32x4_t SKCBoundingBoxUnion(const simd_float4x4 *a1, const simd_float4x4 *a2)
{
  v2 = a1->columns[1];
  v3 = vmulq_f32(v2, v2);
  if (sqrtf(vaddv_f32(vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL)))) <= 0.0)
  {
    return a2->columns[0];
  }

  v4 = a1->columns[2];
  v5 = vmulq_f32(v4, v4);
  if (sqrtf(vaddv_f32(vadd_f32(*v5.i8, *&vextq_s8(v5, v5, 8uLL)))) <= 0.0)
  {
    return a2->columns[0];
  }

  else
  {
    v6 = a2->columns[1];
    v7 = vmulq_f32(v6, v6);
    if (sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))) <= 0.0)
    {
      return a1->columns[0];
    }

    v8 = a2->columns[2];
    v9 = vmulq_f32(v8, v8);
    if (sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))) <= 0.0)
    {
      return a1->columns[0];
    }

    else
    {
      v10 = 0;
      v11 = vsubq_f32(a1->columns[0], v2);
      v12 = vaddq_f32(v2, a1->columns[0]);
      v24[0] = vsubq_f32(v11, v4);
      v24[1] = vsubq_f32(v12, v4);
      v24[2] = vaddq_f32(v12, v4);
      v24[3] = vaddq_f32(v11, v4);
      v13.i64[0] = 0x80000000800000;
      v13.i64[1] = 0x80000000800000;
      result = vnegq_f32(v13);
      do
      {
        v15 = v24[v10];
        result = vminnmq_f32(v15, result);
        v13 = vmaxnmq_f32(v15, v13);
        ++v10;
      }

      while (v10 != 4);
      v16 = 0;
      v17 = vsubq_f32(a2->columns[0], v6);
      v18 = vaddq_f32(v6, a2->columns[0]);
      v23[0] = vsubq_f32(v17, v8);
      v23[1] = vsubq_f32(v18, v8);
      v23[2] = vaddq_f32(v18, v8);
      v23[3] = vaddq_f32(v17, v8);
      do
      {
        v19 = v23[v16];
        result = vminnmq_f32(v19, result);
        v13 = vmaxnmq_f32(v19, v13);
        ++v16;
      }

      while (v16 != 4);
      v20 = vsubq_f32(v13, result).u64[0];
      result.i64[1] = 0x3F80000000000000;
      LODWORD(v21) = 0;
      HIDWORD(v21) = vmuls_lane_f32(0.5, v20, 1);
      result.i64[0] = vaddq_f32(result, vaddq_f32(COERCE_UNSIGNED_INT(0.5 * v20.f32[0]), v21)).u64[0];
    }
  }

  return result;
}

double SKCBoundingBoxIntersection(const simd_float4x4 *a1, const simd_float4x4 *a2)
{
  v2 = a1->columns[1];
  v3 = vmulq_f32(v2, v2);
  v4 = sqrtf(vaddv_f32(vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL))));
  result = 0.0;
  if (v4 > 0.0)
  {
    v6 = a1->columns[2];
    v7 = vmulq_f32(v6, v6);
    if (sqrtf(vaddv_f32(vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL)))) > 0.0)
    {
      v8 = a2->columns[1];
      v9 = vmulq_f32(v8, v8);
      if (sqrtf(vaddv_f32(vadd_f32(*v9.i8, *&vextq_s8(v9, v9, 8uLL)))) > 0.0)
      {
        v10 = a2->columns[2];
        v11 = vmulq_f32(v10, v10);
        if (sqrtf(vaddv_f32(vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL)))) > 0.0)
        {
          v12 = 0;
          v13 = vsubq_f32(a1->columns[0], v2);
          v14 = vaddq_f32(v2, a1->columns[0]);
          v28[0] = vsubq_f32(v13, v6);
          v28[1] = vsubq_f32(v14, v6);
          v28[2] = vaddq_f32(v14, v6);
          v28[3] = vaddq_f32(v13, v6);
          v15.i64[0] = 0x80000000800000;
          v15.i64[1] = 0x80000000800000;
          v16 = vnegq_f32(v15);
          do
          {
            v17 = v28[v12];
            v16 = vminnmq_f32(v17, v16);
            v15 = vmaxnmq_f32(v17, v15);
            ++v12;
          }

          while (v12 != 4);
          v18 = 0;
          v19 = vsubq_f32(a2->columns[0], v8);
          v20 = vaddq_f32(v8, a2->columns[0]);
          v27[0] = vsubq_f32(v19, v10);
          v27[1] = vsubq_f32(v20, v10);
          v27[2] = vaddq_f32(v20, v10);
          v27[3] = vaddq_f32(v19, v10);
          v21.i64[0] = 0x80000000800000;
          v21.i64[1] = 0x80000000800000;
          v22 = vnegq_f32(v21);
          do
          {
            v23 = v27[v18];
            v22 = vminnmq_f32(v23, v22);
            v21 = vmaxnmq_f32(v23, v21);
            ++v18;
          }

          while (v18 != 4);
          v24 = vmaxnmq_f32(v16, v22);
          v25 = vsubq_f32(vminnmq_f32(v15, v21), v24).u64[0];
          v24.i64[1] = 0x3F80000000000000;
          LODWORD(v26) = 0;
          HIDWORD(v26) = vmuls_lane_f32(0.5, v25, 1);
          *&result = vaddq_f32(v24, vaddq_f32(COERCE_UNSIGNED_INT(0.5 * v25.f32[0]), v26)).u64[0];
        }
      }
    }
  }

  return result;
}

float32x4_t SKCBoundingBoxGetAABB(const simd_float4x4 *a1)
{
  v1 = 0;
  v2 = a1->columns[1];
  v3 = vsubq_f32(a1->columns[0], v2);
  v4 = a1->columns[2];
  v8[2] = vaddq_f32(vaddq_f32(a1->columns[0], v2), v4);
  v8[3] = vaddq_f32(v3, v4);
  v5.i64[0] = 0x80000000800000;
  v5.i64[1] = 0x80000000800000;
  result = vnegq_f32(v5);
  do
  {
    v7 = v8[v1];
    result = vminnmq_f32(v7, result);
    v5 = vmaxnmq_f32(v7, v5);
    ++v1;
  }

  while (v1 != 4);
  return result;
}

BOOL SKCBoundingBoxIntersectsPoint(float32x4_t *a1, double a2)
{
  v2 = 0;
  v3 = a1[1];
  v4 = vsubq_f32(*a1, v3);
  v5 = a1[2];
  v12[2] = vaddq_f32(vaddq_f32(*a1, v3), v5);
  v12[3] = vaddq_f32(v4, v5);
  v6.i64[0] = 0x80000000800000;
  v6.i64[1] = 0x80000000800000;
  v7 = vnegq_f32(v6);
  do
  {
    v8 = v12[v2];
    v7 = vminnmq_f32(v8, v7);
    v6 = vmaxnmq_f32(v8, v6);
    ++v2;
  }

  while (v2 != 4);
  v9 = *&a2 < v7.f32[0] || *&a2 > v6.f32[0];
  result = 0;
  if (!v9)
  {
    v10 = vmvn_s8(vcge_f32(vzip2_s32(*v6.f32, *&a2), vzip2_s32(*&a2, *v7.f32)));
    if (((v10.i32[1] | v10.i32[0]) & 1) == 0)
    {
      return 1;
    }
  }

  return result;
}

BOOL SKCBoundingBoxIntersectsBoundingBox(const simd_float4x4 *a1, const simd_float4x4 *a2)
{
  v2 = a1->columns[1];
  v3 = vmulq_f32(v2, v2);
  v4 = vadd_f32(*v3.i8, *&vextq_s8(v3, v3, 8uLL));
  v5 = sqrtf(vaddv_f32(v4));
  if (v5 <= 0.0)
  {
    return 0;
  }

  v6 = a1->columns[2];
  v7 = vmulq_f32(v6, v6);
  v8 = vadd_f32(*v7.i8, *&vextq_s8(v7, v7, 8uLL));
  v9 = sqrtf(vaddv_f32(v8));
  if (v9 <= 0.0)
  {
    return 0;
  }

  v10 = a2->columns[1];
  v11 = vmulq_f32(v10, v10);
  v12 = vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  v13 = sqrtf(vaddv_f32(v12));
  if (v13 <= 0.0)
  {
    return 0;
  }

  v14 = a2->columns[2];
  v15 = vmulq_f32(v14, v14);
  v16 = vadd_f32(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
  v17 = sqrtf(vaddv_f32(v16));
  if (v17 <= 0.0)
  {
    return 0;
  }

  v18 = vadd_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
  v19 = vadd_f32(v8, vdup_lane_s32(v8, 1)).u32[0];
  v20 = vrsqrte_f32(v18);
  v21 = vmul_f32(v20, vrsqrts_f32(v18, vmul_f32(v20, v20)));
  v22 = vmulq_n_f32(v2, vmul_f32(v21, vrsqrts_f32(v18, vmul_f32(v21, v21))).f32[0]);
  v23 = vrsqrte_f32(v19);
  v24 = vmul_f32(v23, vrsqrts_f32(v19, vmul_f32(v23, v23)));
  v25 = vmulq_n_f32(v6, vmul_f32(v24, vrsqrts_f32(v19, vmul_f32(v24, v24))).f32[0]);
  v26 = vadd_f32(v12, vdup_lane_s32(v12, 1)).u32[0];
  v27 = vrsqrte_f32(v26);
  v28 = vmul_f32(v27, vrsqrts_f32(v26, vmul_f32(v27, v27)));
  v29 = vadd_f32(v16, vdup_lane_s32(v16, 1)).u32[0];
  v30 = vmulq_n_f32(v10, vmul_f32(v28, vrsqrts_f32(v26, vmul_f32(v28, v28))).f32[0]);
  v31 = vrsqrte_f32(v29);
  v32 = vmul_f32(v31, vrsqrts_f32(v29, vmul_f32(v31, v31)));
  v33 = vmulq_n_f32(v14, vmul_f32(v32, vrsqrts_f32(v29, vmul_f32(v32, v32))).f32[0]);
  v34 = &v91;
  v35 = 1;
  v36 = v22;
  do
  {
    v37 = 0;
    v38 = v35;
    v39 = *v34;
    v40 = 1;
    v41 = v30;
    do
    {
      v42 = v40;
      v43 = vmulq_f32(v36, v41);
      v87 = v39;
      *(&v87 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v37 & 1))) = vaddv_f32(vadd_f32(*v43.i8, *&vextq_s8(v43, v43, 8uLL)));
      v37 = 1;
      v39 = v87;
      v41 = v33;
      v40 = 0;
    }

    while ((v42 & 1) != 0);
    v35 = 0;
    *v34 = v87;
    v34 = &v90;
    v36 = v25;
  }

  while ((v38 & 1) != 0);
  *(&v45 + 1) = 0;
  *(&v44 + 1) = 0;
  *&v44 = v5;
  *&v45 = v13;
  v46 = vsubq_f32(a2->columns[0], a1->columns[0]);
  v47 = vmulq_f32(v22, v46);
  v48 = vextq_s8(v47, v47, 8uLL);
  *v47.i8 = vadd_f32(*v47.i8, *v48.i8);
  v48.i32[0] = vadd_f32(*v47.i8, vdup_lane_s32(*v47.i8, 1)).u32[0];
  v49 = vaddv_f32(*v47.i8);
  v50 = vmulq_f32(v25, v46);
  v51 = vadd_f32(*v50.i8, *&vextq_s8(v50, v50, 8uLL));
  v52 = &v91;
  v53 = &v89;
  v54 = 1;
  do
  {
    v55 = 0;
    v56 = v54;
    v57 = *v52;
    v58 = *v53;
    v59 = 1;
    do
    {
      v60 = v59;
      v85 = v57;
      v61 = fabsf(*(&v85 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v55 & 1))));
      v86 = v58;
      *(&v86 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v55 & 1))) = v61 + 0.00001;
      v55 = 1;
      v58 = v86;
      v59 = 0;
    }

    while ((v60 & 1) != 0);
    v54 = 0;
    *v53 = v86;
    v52 = &v90;
    v53 = &v88;
  }

  while ((v56 & 1) != 0);
  v62 = 0;
  *(&v44 + 1) = v9;
  *(&v45 + 1) = v17;
  v63 = vaddv_f32(v51);
  v48.i32[1] = vadd_f32(v51, vdup_lane_s32(v51, 1)).u32[0];
  v64 = &v89;
  v65 = 1;
  do
  {
    v66 = v65;
    v84 = v44;
    v67 = *(&v84 & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3)));
    v68 = vmuls_lane_f32(v17, *v64, 1) + (v13 * COERCE_FLOAT(*v64));
    v83 = v48;
    if (fabsf(*(&v83 & 0xFFFFFFFFFFFFFFF3 | (4 * (v62 & 3)))) > (v67 + v68))
    {
      return 0;
    }

    v65 = 0;
    v62 = 1;
    v64 = &v88;
  }

  while ((v66 & 1) != 0);
  v69 = 0;
  v70 = 1;
  do
  {
    v82 = v89;
    v71 = *(&v82 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v69 & 1)));
    v81 = v88;
    v72 = (v9 * *(&v81 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v69 & 1)))) + (v5 * v71);
    v80 = v45;
    v73 = *(&v80 & 0xFFFFFFFFFFFFFFF3 | (4 * (v69 & 3)));
    v79 = v91;
    v74 = *(&v79 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v69 & 1)));
    v78 = v90;
    v75 = fabsf((v63 * *(&v78 & 0xFFFFFFFFFFFFFFFBLL | (4 * (v69 & 1)))) + (v49 * v74));
    v76 = v73 + v72;
    result = v75 <= v76;
    if ((v70 & 1) == 0)
    {
      break;
    }

    v70 = 0;
    v69 = 1;
  }

  while (v75 <= v76);
  return result;
}

void sub_21C41E8F8(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x10A1C40E68DE135);

  _Unwind_Resume(a1);
}

void SKCRepeat::~SKCRepeat(SKCRepeat *this)
{
  SKCRepeat::~SKCRepeat(this);

  JUMPOUT(0x21CF0A160);
}

{
  this->var0 = &unk_282E16858;
  var19 = this->var19;
  if (var19)
  {
    v3 = var19->var1 - 1;
    var19->var1 = v3;
    if (!v3)
    {
      (*(var19->var0 + 1))(var19);
    }
  }

  this->var19 = 0;

  SKCAction::~SKCAction(this);
}

SKCAction *SKCRepeat::setBaseSpeed(SKCRepeat *this, float a2)
{
  SKCAction::setBaseSpeed(this, a2);
  result = this->var19;
  if (result)
  {
    v3.n128_f32[0] = this->var17 * this->var16;
    v5 = *(result->var0 + 5);

    return v5(v3);
  }

  return result;
}

SKCAction *SKCRepeat::setSpeed(SKCRepeat *this, float a2)
{
  SKCAction::setSpeed(this, a2);
  result = this->var19;
  if (result)
  {
    v3.n128_f32[0] = this->var17 * this->var16;
    v5 = *(result->var0 + 5);

    return v5(v3);
  }

  return result;
}

SKCAction *SKCRepeat::cpp_updateWithTargetForTime(SKCRepeat *this, SKCNode *a2, double a3)
{
  var19 = this->var19;
  if (!var19->var5)
  {
    goto LABEL_3;
  }

  for (result = (*(var19->var0 + 7))(var19, a2, a3); ; result = SKCAction::updateWithTargetForTime(var19, a2, a3))
  {
    v8 = this->var19;
    if (v8->var5)
    {
      if (!v8->var11)
      {
        break;
      }
    }

    else
    {
      result = [v8->var4 finished];
      if (!result)
      {
        break;
      }
    }

    var21 = this->var21;
    v10 = this->var20 + 1;
    this->var20 = v10;
    if (v10 >= var21 && !this->var22)
    {
      break;
    }

    v11 = this->var19;
    v11->var11 = 0;
    v12 = (*(v11->var0 + 2))(v11);
    if (v12 >= a3)
    {
      v12 = a3;
    }

    SKCAction::willStartWithTargetAtTime(this->var19, a2, v12);
    var19 = this->var19;
LABEL_3:
    ;
  }

  if (!this->var22 && this->var20 >= this->var21)
  {
    (*(this->var19->var0 + 2))(this->var19);

    return SKCAction::didFinishWithTargetAtTime(this, a2, v13);
  }

  return result;
}

uint64_t SKCRepeat::cpp_wasAddedToTargetAtTime(SKCRepeat *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_wasAddedToTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SKCAction::wasAddedToTargetAtTime(var19, a2, a3);
}

uint64_t SKCRepeat::cpp_wasRemovedFromTargetAtTime(SKCRepeat *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SKCAction::wasRemovedFromTargetAtTime(var19, a2, a3);
}

uint64_t SKCRepeat::cpp_willStartWithTargetAtTime(SKCRepeat *this, SKCNode *a2, double a3)
{
  this->var20 = 0;
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SKCAction::willStartWithTargetAtTime(var19, a2, a3);
}

uint64_t SKCRepeat::cpp_wasPausedWithTargetAtTime(SKCRepeat *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_wasPausedWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SKCAction::wasPausedWithTargetAtTime(var19, a2, a3);
}

uint64_t SKCRepeat::cpp_willResumeWithTargetAtTime(SKCRepeat *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willResumeWithTargetAtTime(this, a2, a3);
  var19 = this->var19;

  return SKCAction::willResumeWithTargetAtTime(var19, a2, a3);
}

void sub_21C41F694(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40983EBE18);

  _Unwind_Resume(a1);
}

void sub_21C41F928(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void SKCSpeed::SKCSpeed(SKCSpeed *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E168F0;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
}

void SKCSpeed::~SKCSpeed(SKCSpeed *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void SKCSpeed::cpp_updateWithTargetForTime(SKCSpeed *this, SKCNode *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6.n128_f32[0] = SKCAction::cpp_ratioForTime(this, a3);
  if (this->var25)
  {
    v7 = (this->var23 * v6.n128_f32[0]) + 1.0;
    *(a2 + 42) = (*(a2 + 42) * v7) / this->var22;
    this->var22 = v7;
  }

  else if (!this->var24)
  {
    *(a2 + 42) = (v6.n128_f32[0] * this->var19) + (this->var23 * (1.0 - v6.n128_f32[0]));
  }

  LODWORD(this->var21) = v6.n128_u32[0];
  if ((COERCE_UNSIGNED_INT(v6.n128_f32[0] + -1.0) & 0x60000000) == 0)
  {
    v6.n128_u64[0] = v3;

    SKCAction::didFinishWithTargetAtTime(this, a2, v6);
  }
}

SKCAction *SKCSpeed::cpp_willStartWithTargetAtTime(SKCSpeed *this, SKCNode *a2, double a3)
{
  result = SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var21 = 0.0;
  if (this->var25)
  {
    this->var22 = 1.0;
    v6 = this->var19 + -1.0;
  }

  else
  {
    v6 = *(a2 + 42);
  }

  this->var23 = v6;
  return result;
}

void sub_21C4201A4(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40DA192CF8);

  _Unwind_Resume(a1);
}

void sub_21C4205E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void SKCRotate::SKCRotate(SKCRotate *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E16988;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
}

void SKCRotate::~SKCRotate(SKCRotate *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void SKCRotate::cpp_updateWithTargetForTime(SKCRotate *this, __n128 *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6 = SKCAction::cpp_ratioForTime(this, a3);
  Rotation = SKCNode::getRotation(a2);
  if (this->var30)
  {
    if (this->var32)
    {
      var25 = this->var25;
      Rotation.n128_f32[0] = -(var25 - (v6 * this->var22));
      this->var25 = var25 - (var25 - (v6 * this->var22));
    }

    if (this->var33)
    {
      var26 = this->var26;
      Rotation.n128_f32[1] = Rotation.n128_f32[1] - (var26 - (v6 * this->var23));
      this->var26 = var26 - (var26 - (v6 * this->var23));
    }

    if (this->var34)
    {
      var27 = this->var27;
      Rotation.n128_f32[2] = Rotation.n128_f32[2] - (var27 - (v6 * this->var24));
      this->var27 = var27 - (var27 - (v6 * this->var24));
    }
  }

  else if (!this->var29)
  {
    if (this->var32)
    {
      Rotation.n128_f32[0] = (v6 * this->var19) + (this->var22 * (1.0 - v6));
    }

    if (this->var33)
    {
      Rotation.n128_f32[1] = (v6 * this->var20) + (this->var23 * (1.0 - v6));
    }

    if (this->var34)
    {
      Rotation.n128_f32[2] = (v6 * this->var21) + (this->var24 * (1.0 - v6));
    }
  }

  SKCNode::setRotation(a2, Rotation);
  this->var28 = v6;
  if ((COERCE_UNSIGNED_INT(v6 + -1.0) & 0x60000000) == 0)
  {
    v11.n128_u64[0] = v3;

    SKCAction::didFinishWithTargetAtTime(this, a2, v11);
  }
}

void SKCRotate::cpp_willStartWithTargetAtTime(SKCRotate *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  {
    NSLog(&cfstr_SksceneAnimati_0.isa);
  }

  *&this->var25 = 0;
  this->var27 = 0.0;
  if (this->var30)
  {
    *&this->var22 = *&this->var19;
    var21 = this->var21;
  }

  else if (this->var31)
  {
    var19 = this->var19;
    v7 = SKCNode::getRotation(a2).n128_f32[0];
    v8 = (var19 - v7) + ((floorf((var19 - v7) / 6.2832) * -2.0) * 3.1416);
    if (v8 >= 3.14159265)
    {
      v9 = v8 + -6.28318531;
      v8 = v9;
    }

    var20 = this->var20;
    this->var22 = this->var19 - v8;
    Rotation = SKCNode::getRotation(a2);
    v12 = (var20 - Rotation.n128_f32[1]) + ((floorf((var20 - Rotation.n128_f32[1]) / 6.2832) * -2.0) * 3.1416);
    if (v12 >= 3.14159265)
    {
      v13 = v12 + -6.28318531;
      v12 = v13;
    }

    v14 = this->var21;
    this->var23 = this->var20 - v12;
    v15 = SKCNode::getRotation(a2);
    v16 = (v14 - v15.n128_f32[2]) + ((floorf((v14 - v15.n128_f32[2]) / 6.2832) * -2.0) * 3.1416);
    if (v16 >= 3.14159265)
    {
      v17 = v16 + -6.28318531;
      v16 = v17;
    }

    var21 = this->var21 - v16;
  }

  else
  {
    *&this->var22 = SKCNode::getRotation(a2).n128_u64[0];
    LODWORD(var21) = SKCNode::getRotation(a2).n128_u32[2];
  }

  this->var24 = var21;
}

void sub_21C4216A0(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t SKCDataSlice::SKCDataSlice(uint64_t a1, __int128 *a2, int a3)
{
  *a1 = &unk_282E16A20;
  *(a1 + 8) = 0;
  *(a1 + 12) = a3;
  *(a1 + 16) = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 40) = *(a2 + 2);
    *(a1 + 24) = v4;
  }

  *(a1 + 48) = 257;
  return a1;
}

void **SKCDataSlice::resize(void **this, int a2)
{
  if (*(this + 2) != a2)
  {
    v2 = this;
    *(this + 2) = a2;
    this = malloc_type_realloc(this[2], (*(this + 3) * a2), 0xE9F48647uLL);
    v2[2] = this;
  }

  return this;
}

void SKCDataSlice::~SKCDataSlice(SKCDataSlice *this)
{
  *this = &unk_282E16A20;
  v2 = *(this + 2);
  if (v2)
  {
    free(v2);
    *(this + 2) = 0;
  }

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }
}

{
  SKCDataSlice::~SKCDataSlice(this);

  JUMPOUT(0x21CF0A160);
}

void sub_21C421F60(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C40E8145384);

  _Unwind_Resume(a1);
}

void SKCScale::SKCScale(SKCScale *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E16A50;
  *(v3 + 152) = 0;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
}

void SKCScale::~SKCScale(SKCScale *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void SKCScale::cpp_updateWithTargetForTime(SKCScale *this, __n128 *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v6 = SKCAction::cpp_ratioForTime(this, a3);
  LODWORD(v18) = SKCNode::getScale(a2).n128_u32[0];
  Scale = SKCNode::getScale(a2);
  if (this->var29)
  {
    if (this->var30)
    {
      v17 = Scale;
      v8 = (this->var26 * v6) + 1.0;
      v9 = (v18 * v8) / this->var24;
      v10 = SKCNode::getScale(a2);
      v10.n128_f32[0] = v9;
      SKCNode::setScale(a2, v10, v10.n128_f32[1]);
      Scale = v17;
      this->var24 = v8;
    }

    if (this->var31)
    {
      v11 = Scale.n128_f32[1];
      v12 = (this->var27 * v6) + 1.0;
      v13 = SKCNode::getScale(a2);
      SKCNode::setScale(a2, v13, (v11 * v12) / this->var25);
      this->var25 = v12;
    }
  }

  else if (!this->var28)
  {
    if (this->var30)
    {
      v14 = (v6 * this->var19) + (this->var26 * (1.0 - v6));
      v15 = SKCNode::getScale(a2);
      v15.n128_f32[0] = v14;
      SKCNode::setScale(a2, v15, v15.n128_f32[1]);
    }

    if (this->var31)
    {
      v16 = SKCNode::getScale(a2);
      SKCNode::setScale(a2, v16, (v6 * this->var20) + (this->var27 * (1.0 - v6)));
    }
  }

  this->var23 = v6;
  if ((COERCE_UNSIGNED_INT(v6 + -1.0) & 0x60000000) == 0)
  {
    Scale.n128_u64[0] = v3;

    SKCAction::didFinishWithTargetAtTime(this, a2, Scale);
  }
}

void SKCScale::cpp_willStartWithTargetAtTime(SKCScale *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  this->var23 = 0.0;
  {
    NSLog(&cfstr_SksceneAnimati_1.isa);
  }

  {
    v5 = vcvt_f32_f64(this->var33);
    v17 = *(a2 + 21);
    v6 = SKCNode::getScale(a2).n128_u64[0];
    v7 = vceqz_s32(vand_s8(*&v17, 0x6000000060000000));
    v8 = v7.i8[0] | v7.i8[4];
    v9 = vdiv_f32(v5, *&v17);
    if (v8)
    {
      v10 = -1;
    }

    else
    {
      v10 = 0;
    }

    *&this->var26 = v6;
    *&this->var19 = vbsl_s8(vdup_n_s32(v10), v6, v9);
  }

  else if (this->var29)
  {
    __asm { FMOV            V0.2S, #1.0 }

    *&this->var24 = _D0;
    __asm { FMOV            V1.2S, #-1.0 }

    *&this->var26 = vadd_f32(*&this->var19, _D1);
  }

  else
  {
    *&this->var26 = SKCNode::getScale(a2).n128_u64[0];
  }
}

void sub_21C423258(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C405F2FCA79);

  _Unwind_Resume(a1);
}

void SKCSequence::addCAction(SKCSequence *this, SKCAction *a2)
{
  if (a2)
  {
    ++a2->var1;
    v5 = *(this + 15);
    v4 = *(this + 16);
    if (v5 >= v4)
    {
      v7 = *(this + 14);
      v8 = (v5 - v7) >> 3;
      if ((v8 + 1) >> 61)
      {
        std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
      }

      v9 = v4 - v7;
      v10 = v9 >> 2;
      if (v9 >> 2 <= (v8 + 1))
      {
        v10 = v8 + 1;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF8)
      {
        v11 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      if (v11)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<PKCLineSeg *>>(this + 112, v11);
      }

      v12 = (8 * v8);
      *v12 = a2;
      v6 = 8 * v8 + 8;
      v13 = *(this + 14);
      v14 = *(this + 15) - v13;
      v15 = v12 - v14;
      memcpy(v12 - v14, v13, v14);
      v16 = *(this + 14);
      *(this + 14) = v15;
      *(this + 15) = v6;
      *(this + 16) = 0;
      if (v16)
      {
        operator delete(v16);
      }
    }

    else
    {
      *v5 = a2;
      v6 = (v5 + 1);
    }

    *(this + 15) = v6;
  }
}

void SKCSequence::~SKCSequence(SKCAction *this)
{
  SKCSequence::~SKCSequence(this);

  JUMPOUT(0x21CF0A160);
}

{
  this->var0 = &unk_282E16AE8;
  var0 = this[1].var0;
  v2 = *&this[1].var1;
  if (var0 != v2)
  {
    do
    {
      v4 = *var0;
      v5 = *(*var0 + 2) - 1;
      v4[2] = v5;
      if (v4)
      {
        v6 = v5 == 0;
      }

      else
      {
        v6 = 0;
      }

      if (v6)
      {
        (*(*v4 + 8))(v4);
        v2 = *&this[1].var1;
      }

      ++var0;
    }

    while (var0 != v2);
    var0 = this[1].var0;
  }

  *&this[1].var1 = var0;
  if (var0)
  {
    operator delete(var0);
  }

  SKCAction::~SKCAction(this);
}

void SKCSequence::setBaseSpeed(SKCAction *this, float a2)
{
  SKCAction::setBaseSpeed(this, a2);
  var0 = this[1].var0;
  if (var0 != *&this[1].var1)
  {
    v4 = this->var16 * this->var17;
    do
    {
      v5 = *var0++;
      (*(*v5 + 40))(v5, v4);
    }

    while (var0 != *&this[1].var1);
  }
}

void SKCSequence::setSpeed(SKCAction *this, float a2)
{
  SKCAction::setSpeed(this, a2);
  var0 = this[1].var0;
  if (var0 != *&this[1].var1)
  {
    v4 = this->var16 * this->var17;
    do
    {
      v5 = *var0++;
      (*(*v5 + 40))(v5, v4);
    }

    while (var0 != *&this[1].var1);
  }
}

void SKCSequence::cpp_updateWithTargetForTime(SKCAction *this, SKCNode *a2, __n128 a3)
{
  SKCAction::cpp_adjustedTime(this, a3);
  var4 = this[1].var4;
  var0 = this[1].var0;
  if (var4 >= (*&this[1].var1 - var0) >> 3)
  {
LABEL_16:
    std::vector<SKTexture * {__strong}>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = v5;
  v9 = var0[var4];
LABEL_3:
  SKCAction::updateWithTargetForTime(v9, a2, v8);
  while (1)
  {
    if (v9->var5)
    {
      if (!v9->var11)
      {
        return;
      }
    }

    else if (![v9->var4 finished])
    {
      return;
    }

    v10 = this[1].var4 + 1;
    this[1].var4 = v10;
    v11 = ((*&this[1].var1 - this[1].var0) >> 3) - 1;
    if (v10 > v11)
    {
      break;
    }

    (*(v9->var0 + 2))(v9);
    v13 = this[1].var4;
    v14 = this[1].var0;
    if (v13 >= (*&this[1].var1 - v14) >> 3)
    {
      goto LABEL_16;
    }

    v15 = fmin(v8, v12);
    SKCAction::wasAddedToTargetAtTime(v14[v13], a2, v15);
    v16 = this[1].var4;
    v17 = this[1].var0;
    if (v16 >= (*&this[1].var1 - v17) >> 3)
    {
      goto LABEL_16;
    }

    SKCAction::willStartWithTargetAtTime(v17[v16], a2, v15);
    v18 = this[1].var4;
    v19 = this[1].var0;
    if (v18 >= (*&this[1].var1 - v19) >> 3)
    {
      goto LABEL_16;
    }

    v9 = v19[v18];
    if (v15 < v8)
    {
      goto LABEL_3;
    }
  }

  this[1].var4 = v11;
  v20.n128_f64[0] = (*(v9->var0 + 2))(v9);
  SKCAction::didFinishWithTargetAtTime(this, a2, v20);
  this->var10 = (*(v9->var0 + 2))(v9);
}

uint64_t SKCSequence::cpp_wasRemovedFromTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_wasRemovedFromTargetAtTime(this, a2, a3);
  v6.n128_f64[0] = a3;
  SKCAction::cpp_adjustedTime(this, v6);
  var4 = this[1].var4;
  var0 = this[1].var0;
  if (var4 >= (*&this[1].var1 - var0) >> 3)
  {
    std::vector<SKTexture * {__strong}>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = var0[var4];

  return SKCAction::wasRemovedFromTargetAtTime(v10, a2, v7);
}

uint64_t SKCSequence::cpp_willStartWithTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  v6.n128_f64[0] = a3;
  SKCAction::cpp_adjustedTime(this, v6);
  this[1].var4 = 0;
  var0 = this[1].var0;
  if (*&this[1].var1 == var0 || (v9 = v7, SKCAction::wasAddedToTargetAtTime(*var0, a2, v7), var4 = this[1].var4, v11 = this[1].var0, var4 >= (*&this[1].var1 - v11) >> 3))
  {
    std::vector<SKTexture * {__strong}>::__throw_out_of_range[abi:ne200100]();
  }

  v12 = v11[var4];

  return SKCAction::willStartWithTargetAtTime(v12, a2, v9);
}

uint64_t SKCSequence::cpp_wasPausedWithTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_wasPausedWithTargetAtTime(this, a2, a3);
  v6.n128_f64[0] = a3;
  SKCAction::cpp_adjustedTime(this, v6);
  var4 = this[1].var4;
  var0 = this[1].var0;
  if (var4 >= (*&this[1].var1 - var0) >> 3)
  {
    std::vector<SKTexture * {__strong}>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = var0[var4];

  return SKCAction::wasPausedWithTargetAtTime(v10, a2, v7);
}

uint64_t SKCSequence::cpp_willResumeWithTargetAtTime(SKCAction *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willResumeWithTargetAtTime(this, a2, a3);
  v6.n128_f64[0] = a3;
  SKCAction::cpp_adjustedTime(this, v6);
  var4 = this[1].var4;
  var0 = this[1].var0;
  if (var4 >= (*&this[1].var1 - var0) >> 3)
  {
    std::vector<SKTexture * {__strong}>::__throw_out_of_range[abi:ne200100]();
  }

  v10 = var0[var4];

  return SKCAction::willResumeWithTargetAtTime(v10, a2, v7);
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE6resizeEm(void *a1, unint64_t a2)
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
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(a1, a2 - v2);
  }
}

void _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE8__appendEm(uint64_t a1, unint64_t a2)
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
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
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
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v9);
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

void sub_21C4254D0(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1081C403602C3BFLL);

  _Unwind_Resume(a1);
}

void sub_21C4255E8(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v3, 0x1081C403602C3BFLL);

  _Unwind_Resume(a1);
}

void SKCWait::SKCWait(SKCWait *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E16B90;
  *(v3 + 24) = a2->var4;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 72) = *&a2->var11;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 88) = a2->var14;
  *(v3 + 32) = 1;
}

void SKCWait::~SKCWait(SKCWait *this)
{
  SKCAction::~SKCAction(this);

  JUMPOUT(0x21CF0A160);
}

void sub_21C425908(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x10A1C40DCC7CF7ELL);

  _Unwind_Resume(a1);
}

void sub_21C4260F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SKFollowPath;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_21C42639C(_Unwind_Exception *a1)
{
  MEMORY[0x21CF0A160](v2, 0x1060C402159C14DLL);

  _Unwind_Resume(a1);
}

void SKCFollowPath::SKCFollowPath(SKCFollowPath *this, SKCAction *a2)
{
  SKCAction::SKCAction(this);
  *v3 = &unk_282E16C28;
  *(v3 + 136) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 112) = 0;
  *(v3 + 40) = *&a2->var6;
  *(v3 + 73) = a2->var12;
  var11 = a2->var11;
  var14 = a2->var14;
  *(v3 + 96) = *&a2->var15;
  *(v3 + 72) = var11;
  var10 = a2->var10;
  *(v3 + 56) = *&a2->var8;
  *(v3 + 64) = var10;
  *(v3 + 88) = var14;
  *(v3 + 32) = 1;
}

void SKCFollowPath::~SKCFollowPath(SKCFollowPath *this)
{
  SKCFollowPath::~SKCFollowPath(this);

  JUMPOUT(0x21CF0A160);
}

{
  this->var0 = &unk_282E16C28;
  var21 = this->var21;
  if (var21)
  {
    PKPath::~PKPath(var21);
    MEMORY[0x21CF0A160]();
  }

  SKCAction::~SKCAction(this);
}

void SKCFollowPath::cpp_updateWithTargetForTime(SKCFollowPath *this, __n128 *a2, __n128 a3)
{
  v23 = a3.n128_u64[0];
  v5 = SKCAction::cpp_ratioForTime(this, a3);
  v6 = -(this->var19 - (v5 * *this->var21));
  Translation = SKCNode::getTranslation(a2);
  v26 = SKCNode::getTranslation(a2);
  ZRotation = SKCNode::getZRotation(a2);
  if (v6 >= 0.0)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0.0;
  }

  v11 = Translation;
  v10.n128_u64[1] = v26.n128_u64[1];
  v11.n128_u32[1] = v26.n128_u32[1];
  if (v9 > 0.0)
  {
    while (1)
    {
      var20 = this->var20;
      var21 = this->var21;
      v14 = *(var21 + 1);
      if (((*(var21 + 2) - v14) >> 3) - 1 <= var20)
      {
        break;
      }

      v15 = var20 + 1;
      v16 = *(v14 + 8 * var20);
      v17 = vsub_f32(*(v14 + 8 * (var20 + 1)), v16);
      v18 = sqrtf(COERCE_FLOAT(vmul_f32(v17, v17).i32[1]) + (v17.f32[0] * v17.f32[0]));
      if (v9 <= v18)
      {
        v19 = v9 / v18;
        if ((v9 / v18) > 1.0)
        {
          v19 = 1.0;
        }

        *&v7 = vmul_n_f32(v17, v19);
        if (this->var24)
        {
          v25 = v11;
          v27 = v7;
          if (SKGetGlobalFlippedFlag())
          {
            v20 = 1.5708;
          }

          else
          {
            v20 = -1.5708;
          }

          v10.n128_f32[0] = atan2f(*(&v27 + 1), *&v27);
          v11 = v25;
          v7 = v27;
          ZRotation = v10.n128_f32[0] + v20;
        }

        v10.n128_u64[0] = vadd_f32(v16, *&v7);
        if (this->var23)
        {
          v21 = vsub_f32(v10.n128_u64[0], this->var22);
          this->var22 = v10.n128_u64[0];
          v10.n128_u64[0] = vadd_f32(v11.n128_u64[0], v21);
        }

        if (v9 < v18)
        {
          goto LABEL_22;
        }

        v15 = this->var20 + 1;
        v11.n128_u64[0] = v10.n128_u64[0];
      }

      else
      {
        v10.n128_u64[0] = v11.n128_u64[0];
      }

      v9 = v9 - v18;
      this->var20 = v15;
      this->var19 = v18 + this->var19;
      if (v9 <= 0.0)
      {
        goto LABEL_22;
      }
    }
  }

  v10.n128_u64[0] = v11.n128_u64[0];
LABEL_22:
  SKCNode::setTranslation(a2, v10);
  if (this->var24)
  {
    SKCNode::setZRotation(a2, ZRotation);
  }

  if ((COERCE_UNSIGNED_INT(v5 + -1.0) & 0x60000000) == 0)
  {
    v22.n128_u64[0] = v23;

    SKCAction::didFinishWithTargetAtTime(this, a2, v22);
  }
}

void SKCFollowPath::cpp_willStartWithTargetAtTime(SKCFollowPath *this, SKCNode *a2, double a3)
{
  SKCAction::cpp_willStartWithTargetAtTime(this, a2, a3);
  *&this->var19 = 0;
  var21 = this->var21;
  if (var21)
  {
    var23 = this->var23;
    v8 = **(var21 + 1);
    this->var22 = v8;
    if (var23)
    {
      Translation = SKCNode::getTranslation(a2);
      Translation.n128_u64[0] = vadd_f32(Translation.n128_u64[0], this->var22);

      SKCNode::setTranslation(a2, Translation);
    }

    else
    {
      v5.n128_u32[0] = LODWORD(v8.var0);

      SKCNode::setTranslation(a2, v5, v8.var1);
    }
  }

  else
  {
    this->var22 = 0;
  }
}

void std::vector<PKPoint>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void *std::vector<PKPoint>::reserve(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      _ZNSt3__119__allocate_at_leastB8ne200100INS_9allocatorIDv2_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(result, a2);
    }

    std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void PKPath::~PKPath(PKPath *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    CGPathRelease(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t std::vector<PKPoint>::__init_with_size[abi:ne200100]<PKPoint*,PKPoint*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE11__vallocateB8ne200100Em(result, a4);
  }

  return result;
}

void sub_21C4269D4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void SKCompositeBezierPathPathApplyCGPath(void *a1, const CGPathElement *a2)
{
  if (*a1)
  {
    return;
  }

  v2 = *(a1[3] - 8);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  v5 = v2 + 16;
  type = a2->type;
  if (v4 == v3 && type == kCGPathElementMoveToPoint)
  {
    v53 = vcvt_f32_f64(*a2->points);
    std::vector<PKPoint>::push_back[abi:ne200100](v5, &v53);
    *(v2 + 4) = 0;
    *(v2 + 8) = 0;
    return;
  }

  if (type <= kCGPathElementAddLineToPoint)
  {
    if (type == kCGPathElementMoveToPoint)
    {
      v48 = *(v2 + 4);
      if (v48 >= 1)
      {
        v49 = vceq_f32(*v4, v4[3 * v48]);
        *(v2 + 1) = v49.i8[0] & v49.i8[4] & 1;
      }

      *v2 = 1;
      v50 = *(a1 + 2);
      *(a1 + 1) += v48;
      *(a1 + 2) = v50 + *(v2 + 8);
      operator new();
    }

    if (type != kCGPathElementAddLineToPoint)
    {
      return;
    }

    v21 = v3[-1].f32[0];
    v22 = v3[-1].f32[1];
    v23 = vcvt_f32_f64(*a2->points);
    if (v21 == v23.f32[0] && v22 == v23.f32[1])
    {
      return;
    }

    v25 = v21 + ((v23.f32[0] - v21) * 0.33);
    v26 = v22 + ((v23.f32[1] - v22) * 0.33);
    v27 = v21 + ((v23.f32[0] - v21) * 0.66);
    v28 = v22 + ((v23.f32[1] - v22) * 0.66);
    v53 = __PAIR64__(LODWORD(v26), LODWORD(v25));
    v52 = __PAIR64__(LODWORD(v28), LODWORD(v27));
    v51 = v23;
    v29 = v3[-1].f32[0];
    v30 = v3[-1].f32[1];
    if (v29 == v23.f32[0] && v30 == v23.f32[1])
    {
      return;
    }

    if ((COERCE_UNSIGNED_INT(fabsf(((v25 * (v28 - v30)) + (v29 * (v26 - v28))) + (v27 * (v30 - v26))) + -0.002) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    v20 = ((v27 * (v23.f32[1] - v26)) + (v25 * (v28 - v23.f32[1]))) + (v23.f32[0] * (v26 - v28));
LABEL_46:
    if ((COERCE_UNSIGNED_INT(fabsf(v20) + -0.002) & 0x80000000) != 0)
    {
      ++*(v2 + 8);
    }

    goto LABEL_48;
  }

  switch(type)
  {
    case kCGPathElementAddQuadCurveToPoint:
      points = a2->points;
      v33 = vcvt_f32_f64(*points);
      v34 = vdup_n_s32(0x3F2AAAABu);
      v35 = vadd_f32(v3[-1], vmul_f32(vsub_f32(v33, v3[-1]), v34));
      v36 = vcvt_f32_f64(points[1]);
      v37 = vadd_f32(vmul_f32(vsub_f32(v33, v36), v34), v36);
      v52 = v37;
      v53 = v35;
      v51 = v36;
      v38 = v3[-1].f32[0];
      v39 = v3[-1].f32[1];
      if (v38 == v36.f32[0] && v39 == v36.f32[1])
      {
        return;
      }

      if ((COERCE_UNSIGNED_INT(fabsf((((v37.f32[1] - v39) * v35.f32[0]) + (v38 * (v35.f32[1] - v37.f32[1]))) + (v37.f32[0] * (v39 - v35.f32[1]))) + -0.002) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      v20 = ((v37.f32[0] * (v36.f32[1] - v35.f32[1])) + (v35.f32[0] * (v37.f32[1] - v36.f32[1]))) + (v36.f32[0] * (v35.f32[1] - v37.f32[1]));
      goto LABEL_46;
    case kCGPathElementAddCurveToPoint:
      v41 = a2->points;
      v42 = vcvt_f32_f64(*v41);
      v43 = vcvt_f32_f64(v41[1]);
      v52 = v43;
      v53 = v42;
      v44 = vcvt_f32_f64(v41[2]);
      v51 = v44;
      v45 = v3[-1].f32[0];
      v46 = v3[-1].f32[1];
      if (v45 == v44.f32[0] && v46 == v44.f32[1])
      {
        return;
      }

      if ((COERCE_UNSIGNED_INT(fabsf((((v43.f32[1] - v46) * v42.f32[0]) + (v45 * (v42.f32[1] - v43.f32[1]))) + (v43.f32[0] * (v46 - v42.f32[1]))) + -0.002) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

      v20 = (((v44.f32[1] - v42.f32[1]) * v43.f32[0]) + (v42.f32[0] * (v43.f32[1] - v44.f32[1]))) + (v44.f32[0] * (v42.f32[1] - v43.f32[1]));
      goto LABEL_46;
    case kCGPathElementCloseSubpath:
      v8 = v3[-1].f32[0];
      v9 = v3[-1].f32[1];
      v10 = v4->f32[0];
      v11 = v4->f32[1];
      if (v8 != v4->f32[0] || v9 != v11)
      {
        v13 = v8 + ((v10 - v8) * 0.33);
        v14 = v9 + ((v11 - v9) * 0.33);
        v15 = v8 + ((v10 - v8) * 0.66);
        v16 = v9 + ((v11 - v9) * 0.66);
        v53 = __PAIR64__(LODWORD(v14), LODWORD(v13));
        v52 = __PAIR64__(LODWORD(v16), LODWORD(v15));
        v51 = __PAIR64__(LODWORD(v11), LODWORD(v10));
        v17 = v3[-1].f32[0];
        v18 = v3[-1].f32[1];
        if (v17 != v10 || v18 != v11)
        {
          if ((COERCE_UNSIGNED_INT(fabsf(((v13 * (v16 - v18)) + (v17 * (v14 - v16))) + (v15 * (v18 - v14))) + -0.002) & 0x80000000) != 0)
          {
            v20 = ((v15 * (v11 - v14)) + (v13 * (v16 - v11))) + (v10 * (v14 - v16));
            goto LABEL_46;
          }

LABEL_48:
          std::vector<PKPoint>::push_back[abi:ne200100](v5, &v53);
          std::vector<PKPoint>::push_back[abi:ne200100](v5, &v52);
          std::vector<PKPoint>::push_back[abi:ne200100](v5, &v51);
          ++*(v2 + 4);
        }
      }

      break;
  }
}

void SKBezierPathApplyCGPath(void *a1, const CGPathElement *a2)
{
  if (!a1 || (*a1 & 1) != 0)
  {
    return;
  }

  v4 = a1[2];
  v3 = a1[3];
  type = a2->type;
  if (v4 == v3 && type == kCGPathElementMoveToPoint)
  {
    v41 = vcvt_f32_f64(*a2->points);
    std::vector<PKPoint>::push_back[abi:ne200100]((a1 + 2), &v41);
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    return;
  }

  if (type <= kCGPathElementAddLineToPoint)
  {
    if (type == kCGPathElementMoveToPoint)
    {
      v37 = *(a1 + 1);
      if (v37 >= 1)
      {
        v38 = vceq_f32(*v4, v4[3 * v37]);
        *(a1 + 1) = v38.i8[0] & v38.i8[4] & 1;
      }

      *a1 = 1;
      return;
    }

    if (type != kCGPathElementAddLineToPoint)
    {
      return;
    }

    v15 = v3[-1].f32[0];
    v16 = v3[-1].f32[1];
    v17 = vcvt_f32_f64(*a2->points);
    v41 = __PAIR64__(LODWORD(v16), LODWORD(v15));
    v39 = v17;
    v40 = v17;
    v18 = v3[-1].f32[0];
    v19 = v3[-1].f32[1];
    if (v18 == v17.f32[0] && v19 == v17.f32[1])
    {
      return;
    }

    if ((COERCE_UNSIGNED_INT(fabsf(((v15 * (v17.f32[1] - v19)) + (v18 * (v16 - v17.f32[1]))) + (v17.f32[0] * (v19 - v16))) + -0.002) & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

    v14 = (((v17.f32[1] - v16) * v17.f32[0]) + (v15 * (v17.f32[1] - v17.f32[1]))) + (v17.f32[0] * (v16 - v17.f32[1]));
LABEL_38:
    if ((COERCE_UNSIGNED_INT(fabsf(v14) + -0.002) & 0x80000000) != 0)
    {
      ++*(a1 + 2);
    }

    goto LABEL_40;
  }

  switch(type)
  {
    case kCGPathElementAddQuadCurveToPoint:
      points = a2->points;
      v22 = vcvt_f32_f64(*points);
      v23 = vdup_n_s32(0x3F2AAAABu);
      v24 = vadd_f32(v3[-1], vmul_f32(vsub_f32(v22, v3[-1]), v23));
      v25 = vcvt_f32_f64(points[1]);
      v26 = vadd_f32(vmul_f32(vsub_f32(v22, v25), v23), v25);
      v40 = v26;
      v41 = v24;
      v39 = v25;
      v27 = v3[-1].f32[0];
      v28 = v3[-1].f32[1];
      if (v27 == v25.f32[0] && v28 == v25.f32[1])
      {
        return;
      }

      if ((COERCE_UNSIGNED_INT(fabsf((((v26.f32[1] - v28) * v24.f32[0]) + (v27 * (v24.f32[1] - v26.f32[1]))) + (v26.f32[0] * (v28 - v24.f32[1]))) + -0.002) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      v14 = ((v26.f32[0] * (v25.f32[1] - v24.f32[1])) + (v24.f32[0] * (v26.f32[1] - v25.f32[1]))) + (v25.f32[0] * (v24.f32[1] - v26.f32[1]));
      goto LABEL_38;
    case kCGPathElementAddCurveToPoint:
      v30 = a2->points;
      v31 = vcvt_f32_f64(*v30);
      v32 = vcvt_f32_f64(v30[1]);
      v40 = v32;
      v41 = v31;
      v33 = vcvt_f32_f64(v30[2]);
      v39 = v33;
      v34 = v3[-1].f32[0];
      v35 = v3[-1].f32[1];
      if (v34 == v33.f32[0] && v35 == v33.f32[1])
      {
        return;
      }

      if ((COERCE_UNSIGNED_INT(fabsf((((v32.f32[1] - v35) * v31.f32[0]) + (v34 * (v31.f32[1] - v32.f32[1]))) + (v32.f32[0] * (v35 - v31.f32[1]))) + -0.002) & 0x80000000) == 0)
      {
        goto LABEL_40;
      }

      v14 = (((v33.f32[1] - v31.f32[1]) * v32.f32[0]) + (v31.f32[0] * (v32.f32[1] - v33.f32[1]))) + (v33.f32[0] * (v31.f32[1] - v32.f32[1]));
      goto LABEL_38;
    case kCGPathElementCloseSubpath:
      v7 = v3[-1].f32[0];
      v8 = v3[-1].f32[1];
      v9 = v4->f32[0];
      v10 = v4->f32[1];
      v41 = __PAIR64__(LODWORD(v8), LODWORD(v7));
      v40 = __PAIR64__(LODWORD(v10), LODWORD(v9));
      v39 = __PAIR64__(LODWORD(v10), LODWORD(v9));
      v11 = v3[-1].f32[0];
      v12 = v3[-1].f32[1];
      if (v11 != v9 || v12 != v10)
      {
        if ((COERCE_UNSIGNED_INT(fabsf(((v7 * (v10 - v12)) + (v11 * (v8 - v10))) + (v9 * (v12 - v8))) + -0.002) & 0x80000000) != 0)
        {
          v14 = ((v9 * (v10 - v8)) + (v7 * (v10 - v10))) + (v9 * (v8 - v10));
          goto LABEL_38;
        }

LABEL_40:
        std::vector<PKPoint>::push_back[abi:ne200100]((a1 + 2), &v41);
        std::vector<PKPoint>::push_back[abi:ne200100]((a1 + 2), &v40);
        std::vector<PKPoint>::push_back[abi:ne200100]((a1 + 2), &v39);
        ++*(a1 + 1);
      }

      break;
  }
}

double skRunTime(void)
{
  v0 = *&_skBaseTime;
  v1 = *&_skCurrentTime;
  if (*&_skBaseTime >= 0.0)
  {
    v2 = *&_skTimeOffset;
  }

  else
  {
    if (*&_skCurrentTime < 0.0)
    {
      v1 = CACurrentMediaTime();
      _skCurrentTime = *&v1;
    }

    v2 = *&_skTimeOffset;
    v0 = v1 + *&_skTimeOffset;
    *&_skBaseTime = v1 + *&_skTimeOffset;
  }

  return v1 - v0 + v2;
}

double skCurrentTime()
{
  v0 = *&_skCurrentTime;
  if (*&_skCurrentTime < 0.0)
  {
    v0 = CACurrentMediaTime();
    _skCurrentTime = *&v0;
  }

  return v0 + *&_skTimeOffset;
}

double skPrevTime(void)
{
  v0 = *&_skPrevTime;
  if (*&_skPrevTime >= 0.0)
  {
    v2 = *&_skTimeOffset;
  }

  else
  {
    v1 = *&_skCurrentTime;
    if (*&_skCurrentTime < 0.0)
    {
      v1 = CACurrentMediaTime();
      _skCurrentTime = *&v1;
    }

    v2 = *&_skTimeOffset;
    v0 = v1 + *&_skTimeOffset;
    _skPrevTime = *&v0;
  }

  return v0 + v2;
}

void skSetTime(double a1)
{
  _skPrevTime = _skCurrentTime;
  _skCurrentTime = *&a1;
  if (*&_skBaseTime > a1)
  {
    _skBaseTime = *&a1;
  }
}

uint64_t SKGetGlobalFlippedFlag(void)
{
  if ((_skIsFlippedSet & 1) == 0)
  {
    v0 = SKGetResourceBundle();
    v1 = [v0 infoDictionary];

    v2 = [v1 objectForKey:@"SKIsFlipped"];
    if (v2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _skIsFlipped = [v2 BOOLValue];
      }
    }

    _skIsFlippedSet = 1;
  }

  return _skIsFlipped;
}

uint64_t SKEnsureGlobalMetalDevice(void)
{
  if (!_metalDevice)
  {
    v5 = v0;
    v6 = v1;
    MEMORY[0x21CF0A040](v3, 0);
    objc_storeStrong(&_metalDevice, obj);
    return MEMORY[0x21CF0A050](v3);
  }

  return result;
}

void SKEnsureGlobalMetalLibrary(void)
{
  if (!_metalLibrary)
  {
    SKEnsureGlobalMetalDevice();
    v0 = [MEMORY[0x277CCA8D8] bundleForClass:NSClassFromString(&cfstr_Sknode_0.isa)];
    v1 = MEMORY[0x277CBEBC0];
    v2 = [v0 pathForResource:@"default" ofType:@"metallib"];
    v3 = [v1 fileURLWithPath:v2];

    v4 = _metalDevice;
    v8 = 0;
    v5 = [v4 newLibraryWithURL:v3 error:&v8];
    v6 = v8;
    v7 = _metalLibrary;
    _metalLibrary = v5;
  }
}

id SKDeviceSupportsExtendedXR10Formats(void *a1)
{
  v1 = a1;
  v2 = NSSelectorFromString(&cfstr_Originalobject.isa);
  if (v1)
  {
    v3 = v2;
    do
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        break;
      }

      v4 = [v1 v3];

      v1 = v4;
    }

    while (v4);
  }

  NSSelectorFromString(&cfstr_Supportsextend.isa);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v1 NSSelectorFromString(&cfstr_Supportsextend.isa)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t SKGetShouldEnableMetal(void)
{
  if (SKGetShouldEnableMetal(void)::onceToken != -1)
  {
    SKGetShouldEnableMetal();
  }

  return SKGetShouldEnableMetal(void)::enableMetal;
}

uint64_t ___Z22SKGetShouldEnableMetalv_block_invoke()
{
  if (sk_debug_option_exists(&cfstr_Enablemetal.isa))
  {
    v0 = sk_debug_option_get_BOOL(&cfstr_Enablemetal.isa);
    SKGetShouldEnableMetal(void)::enableMetal = v0;
  }

  else
  {
    v0 = SKGetShouldEnableMetal(void)::enableMetal != 0;
  }

  result = SKGetPrefersOpenGL();
  SKGetShouldEnableMetal(void)::enableMetal = v0 & (result ^ 1);
  return result;
}

uint64_t SKGetShouldUseExtendedRangeColor(void)
{
  if (sk_debug_option_exists(&cfstr_Useextendedran.isa))
  {

    return sk_debug_option_get_BOOL(&cfstr_Useextendedran.isa);
  }

  else
  {

    return SKGetDeviceSupportsExtendedRangeColor();
  }
}

uint64_t SKGetDeviceSupportsExtendedRangeColor(void)
{
  if (SKGetShouldEnableMetal(void)::onceToken != -1)
  {
    SKGetShouldEnableMetal();
  }

  if (SKGetShouldEnableMetal(void)::enableMetal != 1)
  {
    return 0;
  }

  return MEMORY[0x2821F5C58](@"Aixt/MEN2O2B7f+8m4TxUA");
}

void SKEnsureGlobalGLShareContext(void)
{
  if (!_glShareContext)
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
    v0 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [v3 setObject:v0 forKey:@"EAGLContextPropertyVisibleInDebugTools"];

    v1 = [objc_alloc(MEMORY[0x277CD9388]) initWithAPI:2 properties:v3];
    v2 = _glShareContext;
    _glShareContext = v1;
  }
}

void SKEnsureGlobalGLResourceLoadContext(void)
{
  if (!_glResourceLoadContext)
  {
    SKEnsureGlobalGLShareContext();
    [MEMORY[0x277CD9388] setCurrentContext:_glShareContext];
    v1 = _glShareContext;

    objc_storeStrong(&_glResourceLoadContext, v1);
  }
}

uint64_t SKBindGlobalGLShareContext(void)
{
  SKEnsureGlobalGLShareContext();
  v0 = MEMORY[0x277CD9388];
  v1 = _glShareContext;

  return [v0 setCurrentContext:v1];
}

uint64_t SKBindGlobalGLResourceLoadContext(void)
{
  SKEnsureGlobalGLResourceLoadContext();
  v0 = MEMORY[0x277CD9388];
  v1 = _glResourceLoadContext;

  return [v0 setCurrentContext:v1];
}

uint64_t quadIsVisible(float32x4_t *a1)
{
  v1 = a1[1];
  __asm { FMOV            V4.4S, #1.0 }

  v7 = vaddq_f32(vbslq_s8(vcgtq_f32(xmmword_21C4B93B0, *a1), 0, _Q4), vbslq_s8(vcgtq_f32(xmmword_21C4B93B0, v1), 0, _Q4));
  v8 = vaddq_f32(vbslq_s8(vcgtq_f32(xmmword_21C4B93C0, *a1), 0, _Q4), vbslq_s8(vcgtq_f32(xmmword_21C4B93C0, v1), 0, _Q4));
  v9 = a1[2];
  v10 = a1[3];
  v11.i64[0] = vaddq_f32(vaddq_f32(v7, vbslq_s8(vcgtq_f32(xmmword_21C4B93B0, v9), 0, _Q4)), vbslq_s8(vcgtq_f32(xmmword_21C4B93B0, v10), 0, _Q4)).u64[0];
  v11.i64[1] = vaddq_f32(vaddq_f32(v8, vbslq_s8(vcgtq_f32(xmmword_21C4B93C0, v9), 0, _Q4)), vbslq_s8(vcgtq_f32(xmmword_21C4B93C0, v10), 0, _Q4)).u64[0];
  v9.i32[0] = vmovn_s32(vmvnq_s8(vcgtq_f32(xmmword_21C4B93D0, v11))).u32[0];
  v9.i32[1] = vmovn_s32(vmvnq_s8(vcgtq_f32(v11, xmmword_21C4B93D0))).i32[1];
  return vminv_u16(*v9.f32) & 1;
}

void SKCNode::SKCNode(SKCNode *this)
{
  *this = &unk_282E16CE0;
  *(this + 1) = 0;
  *(this + 16) = 1;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 1065353216;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 20) = 0;
  *(this + 42) = 1065353216;
  *(this + 172) = 0;
  *(this + 22) = this + 176;
  *(this + 23) = this + 176;
  *(this + 24) = 0;
  *(this + 25) = this + 200;
  *(this + 26) = this + 200;
  *(this + 27) = 0;
  *(this + 224) = 0;
  *(this + 29) = 0;
  __asm { FMOV            V1.4S, #1.0 }

  *(this + 15) = _Q1;
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 34) = 0x200000002;
  *(this + 280) = 0;
  *(this + 36) = 0;
  *(this + 19) = _Q1;
  *(this + 40) = 0x3F80000000000000;
  *&v6 = 0x3F0000003F000000;
  *(&v6 + 1) = 0x3F0000003F000000;
  *(this + 21) = 0u;
  *(this + 22) = v6;
  *(this + 184) = 257;
  v7 = MEMORY[0x277D860B8];
  v8 = *(MEMORY[0x277D860B8] + 16);
  *(this + 24) = *MEMORY[0x277D860B8];
  *(this + 25) = v8;
  v9 = *(v7 + 48);
  *(this + 26) = *(v7 + 32);
  *(this + 27) = v9;
  *(this + 32) = xmmword_21C4B84C0;
  *(this + 33) = 0u;
  *(this + 34) = _Q1;
}

uint64_t SKCNode::generatesVisibleGeometry(SKCNode *this, const simd_float4x4 *a2)
{
  *&v3 = (*(*this + 120))(this);
  v4 = 0;
  v5 = a2->columns[0];
  v6 = a2->columns[1];
  v7 = a2->columns[2];
  v8 = a2->columns[3];
  v24[0] = v3;
  v24[1] = v9;
  v24[2] = v10;
  v24[3] = v11;
  do
  {
    v25.columns[v4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v5, COERCE_FLOAT(v24[v4])), v6, *&v24[v4], 1), v7, v24[v4], 2), v8, v24[v4], 3);
    ++v4;
  }

  while (v4 != 4);
  *v12.i64 = SKCBoundingBoxGetVerts(&v25);
  __asm { FMOV            V6.4S, #1.0 }

  v18 = vbslq_s8(vcgtq_f32(xmmword_21C4B93B0, v12), 0, _Q6);
  v20 = vaddq_f32(vbslq_s8(vcgtq_f32(xmmword_21C4B93C0, v12), 0, _Q6), vbslq_s8(vcgtq_f32(xmmword_21C4B93C0, v19), 0, _Q6));
  v19.i64[0] = vaddq_f32(vbslq_s8(vcgtq_f32(xmmword_21C4B93B0, v22), 0, _Q6), vaddq_f32(vbslq_s8(vcgtq_f32(xmmword_21C4B93B0, v21), 0, _Q6), vaddq_f32(v18, vbslq_s8(vcgtq_f32(xmmword_21C4B93B0, v19), 0, _Q6)))).u64[0];
  v19.i64[1] = vaddq_f32(vbslq_s8(vcgtq_f32(xmmword_21C4B93C0, v22), 0, _Q6), vaddq_f32(vbslq_s8(vcgtq_f32(xmmword_21C4B93C0, v21), 0, _Q6), v20)).u64[0];
  v21.i32[0] = vmovn_s32(vmvnq_s8(vcgtq_f32(xmmword_21C4B93D0, v19))).u32[0];
  v21.i32[1] = vmovn_s32(vmvnq_s8(vcgtq_f32(v19, xmmword_21C4B93D0))).i32[1];
  return vminv_u16(*v21.f32) & 1;
}

double SKCNode::getBatchInfo@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 12) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 60) = 0u;
  *&result = 0x300000000;
  *(a1 + 4) = 0x300000000;
  return result;
}

void SKCNode::addBatchAttributeValues(id *this, SKCRenderInfo *a2, SKShader *a3, unsigned int a4, unsigned int a5)
{
  v50 = *MEMORY[0x277D85DE8];
  v30 = a3;
  if (this[1])
  {
    if (*(this + 16) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::clear((this + 3));
      [this[1] attributeValues];
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v17 = v45 = 0u;
      v18 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
      if (v18)
      {
        v19 = *v45;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v45 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v44 + 1) + 8 * i);
            std::string::basic_string[abi:ne200100]<0>(&v39, "a_");
            v22 = v21;
            std::string::basic_string[abi:ne200100]<0>(__p, [v21 UTF8String]);
            if ((v42 & 0x80u) == 0)
            {
              v23 = __p;
            }

            else
            {
              v23 = __p[0];
            }

            if ((v42 & 0x80u) == 0)
            {
              v24 = v42;
            }

            else
            {
              v24 = __p[1];
            }

            v25 = std::string::append(&v39, v23, v24);
            v26 = v25->__r_.__value_.__r.__words[0];
            size = v25->__r_.__value_.__l.__size_;
            v43[0] = v25->__r_.__value_.__r.__words[2];
            *(v43 + 3) = *(&v25->__r_.__value_.__r.__words[2] + 3);
            v28 = SHIBYTE(v25->__r_.__value_.__r.__words[2]);
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            if (v42 < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v39.__r_.__value_.__l.__data_);
            }

            v29 = [v17 objectForKeyedSubscript:{v21, v30}];
            if (v28 < 0)
            {
              std::string::__init_copy_ctor_external(&v39, v26, size);
            }

            else
            {
              v39.__r_.__value_.__r.__words[0] = v26;
              v39.__r_.__value_.__l.__size_ = size;
              LODWORD(v39.__r_.__value_.__r.__words[2]) = v43[0];
              *(&v39.__r_.__value_.__r.__words[2] + 3) = *(v43 + 3);
              *(&v39.__r_.__value_.__s + 23) = v28;
            }

            v40 = v29;
            std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::__emplace_unique_key_args<std::string,std::pair<std::string,SKAttributeValue * {__strong}>>(this + 3, &v39.__r_.__value_.__l.__data_);
            std::pair<std::string,SKAttributeValue * {__strong}>::~pair(&v39);
            if (v28 < 0)
            {
              operator delete(v26);
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v44 objects:v49 count:16];
        }

        while (v18);
      }

      *(this + 16) = 0;
    }

    v6 = v30;
    v32 = [(SKShader *)v30 _attributeBuffers];
    [(SKShader *)v6 attributes];
    v7 = this;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    obj = v36 = 0u;
    v8 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
    if (v8)
    {
      v9 = *v36;
      do
      {
        for (j = 0; j != v8; ++j)
        {
          if (*v36 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v35 + 1) + 8 * j);
          v12 = [v11 getNameString];
          v39.__r_.__value_.__r.__words[0] = v12;
          v13 = std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v32, v12);
          SKCRendererEnsureBufferPoolCapacity(v13 + 56, a5, a4);
          v14 = *(v13 + 56);
          data = jet_buffer_pool::get_data(v14);
          element_size = jet_buffer_pool::get_element_size(v14);
          v39.__r_.__value_.__r.__words[0] = v12;
          [std::__hash_table<std::__hash_value_type<std::string SKAttributeValue * {:std::__unordered_map_hasher<std::string :{std::__hash_value_type<std::string, SKAttributeValue * {__strong}>, std::hash<std::string>, std::equal_to<std::string>, true>, std::__unordered_map_equal<std::string, std::__hash_value_type<std::string, SKAttributeValue * {__strong}>, std::equal_to<std::string>, std::hash<std::string>, true>, std::allocator<std::__hash_value_type<std::string, SKAttributeValue * {__strong}>>>::__emplace_unique_key_args<std::string, std::piecewise_construct_t const&, std::tuple<std::string const&>, std::tuple<>>(v7 + 3, v12)[5], "copyValueTo:type:count:", data + element_size * a5, objc_msgSend(v11, "type"), a4}strong}>];
        }

        v8 = [obj countByEnumeratingWithState:&v35 objects:v48 count:16];
      }

      while (v8);
    }
  }
}

uint64_t std::pair<std::string,SKAttributeValue * {__strong}>::~pair(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *SKCNode::addRenderableChildren(char *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = *(result + 15);
  v7 = *(result + 14);
  if (v7 != v6 || *(result + 11) != *(result + 12))
  {
    std::vector<SKCNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<SKCNode **>,std::__wrap_iter<SKCNode **>>(a3, *(a3 + 8), v7, v6, (v6 - v7) >> 3);
    result = std::vector<SKCNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<SKCNode **>,std::__wrap_iter<SKCNode **>>(a3, *(a3 + 8), *(v5 + 88), *(v5 + 96), (*(v5 + 96) - *(v5 + 88)) >> 3);
    *(*(a2 + 664) + 156) += (*(v5 + 96) - *(v5 + 88)) >> 3;
  }

  return result;
}

id SKCNode::getScene(SKCNode *this)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = __Block_byref_object_copy__1;
  v8 = __Block_byref_object_dispose__1;
  v9 = 0;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = ___ZN7SKCNode8getSceneEv_block_invoke;
  v3[3] = &unk_27830FDA8;
  v3[4] = &v4;
  SKCNode::walkUp(this, v3, 1);
  v1 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_21C428BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SKCNode::walkUp(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if ((a3 & 1) == 0)
  {
    a1 = *(a1 + 80);
  }

  v6 = 0;
  if (a1)
  {
    do
    {
      v5[2](v5, a1, &v6);
      a1 = *(a1 + 80);
    }

    while (a1 && (v6 & 1) == 0);
  }
}

void ___ZN7SKCNode8getSceneEv_block_invoke(uint64_t a1, id *lpsrc, _BYTE *a3)
{
  {
    v6 = lpsrc[1];
    if (v6)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_storeStrong((*(*(a1 + 32) + 8) + 40), lpsrc[1]);
        *a3 = 1;
      }
    }
  }
}

BOOL SKCNode::intersectsNode(SKCNode **this, SKCNode **a2)
{
  if (!a2)
  {
    return 0;
  }

  *v3.i64 = SKCNode::getWorldBoundingBox(this);
  v13.columns[0] = v3;
  v13.columns[1] = v4;
  v13.columns[2] = v5;
  v13.columns[3] = v6;
  *v7.i64 = SKCNode::getWorldBoundingBox(a2);
  v12.columns[0] = v7;
  v12.columns[1] = v8;
  v12.columns[2] = v9;
  v12.columns[3] = v10;
  return SKCBoundingBoxIntersectsBoundingBox(&v13, &v12);
}

double SKCNode::getWorldBoundingBox(SKCNode **this)
{
  (*(*this + 15))(this);
  v6 = this[10];
  if (v6)
  {
    v15 = v4;
    v16 = v5;
    v13 = v2;
    v14 = v3;
    ConversionMatrixToWorld = SKCNode::getConversionMatrixToWorld(v6);
    v11 = 0;
    v17[0] = v13;
    v17[1] = v14;
    v17[2] = v15;
    v17[3] = v16;
    do
    {
      *(&v18 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(ConversionMatrixToWorld, COERCE_FLOAT(v17[v11])), v8, *&v17[v11], 1), v9, v17[v11], 2), v10, v17[v11], 3);
      ++v11;
    }

    while (v11 != 4);
    *&v2 = v18;
  }

  return *&v2;
}

void SKCNode::recomputeFlags(SKCNode *this, int a2)
{
  v4 = *(this + 68) & 2;
  *(this + 68) = v4;
  if (*(this + 24))
  {
    *(this + 68) = v4 | 4;
  }

  v5 = *(this + 1);
  if (v5)
  {
    v6 = [v5 constraints];
    if (v6)
    {
      v7 = v6;
      v8 = [*(this + 1) constraints];
      v9 = [v8 count];

      if (v9)
      {
        *(this + 68) |= 0x10u;
      }
    }
  }

  if (*(this + 29))
  {
    *(this + 68) |= 8u;
  }

  if ((*(*this + 176))(this))
  {
    *(this + 68) |= 0x20u;
  }

  (*(*this + 168))(this);
  if (a2)
  {

    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setColor(SKCNode *this, _OWORD *a2)
{
  *(this + 19) = *a2;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setDirty(SKCNode *this)
{
  v1 = *(this + 68);
  if ((v1 & 2) == 0)
  {
    *(this + 68) = v1 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setAnchor(SKCNode *this, _OWORD *a2)
{
  *(this + 22) = *a2;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setAlpha(SKCNode *this, float *a2)
{
  *(this + 81) = *a2;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setSize(SKCNode *this, _OWORD *a2)
{
  *(this + 21) = *a2;
  v3 = *(this + 33);
  *(this + 32) = 0;
  *(this + 33) = 0;
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 68);
  if ((v4 & 2) == 0)
  {
    *(this + 68) = v4 | 2;

    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setColorBlendFactor(SKCNode *this, float *a2)
{
  *(this + 80) = *a2;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setHidden(SKCNode *this, int a2)
{
  if (*(this + 280) != a2)
  {
    *(this + 280) = a2;
    v2 = *(this + 68);
    if ((v2 & 2) == 0)
    {
      *(this + 68) = v2 | 2;
      SKCNode::propagateFlags(this);
    }
  }
}

void SKCNode::setBlendMode(SKCNode *this, SKBlendMode a2)
{
  *(this + 36) = a2;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::walkDown(uint64_t *a1, void *a2, int a3, int a4)
{
  v7 = a2;
  v13 = 0;
  v10 = &v10;
  v11 = &v10;
  v12 = 0;
  if (a3)
  {
    operator new();
  }

  std::list<SKCNode *>::__insert_with_sentinel[abi:ne200100]<std::__wrap_iter<SKCNode **>,std::__wrap_iter<SKCNode **>>(&v10, &v10, a1[11], a1[12]);
  if (a4)
  {
    std::list<SKCNode *>::__insert_with_sentinel[abi:ne200100]<std::__wrap_iter<SKCNode **>,std::__wrap_iter<SKCNode **>>(&v10, &v10, a1[14], a1[15]);
  }

  for (i = v11; i != &v10; i = i[1])
  {
    v9 = i[2];
    v7[2](v7, v9, &v13);
    if (v13)
    {
      break;
    }

    std::list<SKCNode *>::__insert_with_sentinel[abi:ne200100]<std::__wrap_iter<SKCNode **>,std::__wrap_iter<SKCNode **>>(&v10, &v10, v9[11], v9[12]);
    if (a4)
    {
      std::list<SKCNode *>::__insert_with_sentinel[abi:ne200100]<std::__wrap_iter<SKCNode **>,std::__wrap_iter<SKCNode **>>(&v10, &v10, v9[14], v9[15]);
    }
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(&v10);
}

void sub_21C42932C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__list_imp<SKCRenderSortInfo *>::clear(&a9);

  _Unwind_Resume(a1);
}

void SKCNode::walkChildren(char **a1, void *a2, int a3, int a4)
{
  v7 = a2;
  __p = 0;
  __dst = 0;
  v15 = 0;
  if (a3)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PKCLineSeg *>>(&__p, 1uLL);
  }

  std::vector<SKCNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<SKCNode **>,std::__wrap_iter<SKCNode **>>(&__p, 0, a1[11], a1[12], (a1[12] - a1[11]) >> 3);
  if (a4)
  {
    std::vector<SKCNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<SKCNode **>,std::__wrap_iter<SKCNode **>>(&__p, __dst, a1[14], a1[15], (a1[15] - a1[14]) >> 3);
  }

  v12 = 0;
  v8 = __p;
  v9 = __dst;
  if (__p != __dst)
  {
    v10 = __p + 8;
    do
    {
      v7[2](v7, *(v10 - 1), &v12);
      if (v12)
      {
        break;
      }

      v11 = v10 == v9;
      v10 += 8;
    }

    while (!v11);
    v8 = __p;
  }

  if (v8)
  {
    __dst = v8;
    operator delete(v8);
  }
}

void sub_21C429480(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 SKCNode::getConversionMatrixToWorld(SKCNode *this)
{
  v1 = *(this + 10);
  (*(*this + 104))(this);
  for (; v1; v1 = v1[10])
  {
    v11 = result;
    v12 = v3;
    v13 = v4;
    v14 = v5;
    (*(*v1 + 104))(v1);
    v10 = 0;
    v15[0] = v11;
    v15[1] = v12;
    v15[2] = v13;
    v15[3] = v14;
    do
    {
      v16[v10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v15[v10])), v7, *&v15[v10], 1), v8, v15[v10], 2), v9, v15[v10], 3);
      ++v10;
    }

    while (v10 != 4);
    result = v16[0];
    v3 = v16[1];
    v4 = v16[2];
    v5 = v16[3];
  }

  return result;
}

double SKCNode::getWorldAccumulatedBoundingBox(char **this)
{
  AccumulatedBoundingBox = SKCNode::getAccumulatedBoundingBox(this);
  v6 = this[10];
  if (v6)
  {
    v15 = v4;
    v16 = v5;
    v13 = AccumulatedBoundingBox;
    v14 = v3;
    ConversionMatrixToWorld = SKCNode::getConversionMatrixToWorld(v6);
    v11 = 0;
    v17[0] = v13;
    v17[1] = v14;
    v17[2] = v15;
    v17[3] = v16;
    do
    {
      *(&v18 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(ConversionMatrixToWorld, COERCE_FLOAT(v17[v11])), v8, *&v17[v11], 1), v9, v17[v11], 2), v10, v17[v11], 3);
      ++v11;
    }

    while (v11 != 4);
    AccumulatedBoundingBox.n128_u64[0] = v18;
  }

  return AccumulatedBoundingBox.n128_f64[0];
}

__n128 SKCNode::getAccumulatedBoundingBox(char **this)
{
  v27 = 0;
  v28 = &v27;
  v29 = 0x7012000000;
  v30 = __Block_byref_object_copy__2;
  v33 = SKCBoundingBoxEmpty;
  v34 = *algn_21C4B92D0;
  v35 = xmmword_21C4B92E0;
  v31 = __Block_byref_object_dispose__3;
  v32 = "";
  v36 = unk_21C4B92F0;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = ___ZN7SKCNode25getAccumulatedBoundingBoxEv_block_invoke;
  v26[3] = &unk_27830FDA8;
  v26[4] = &v27;
  SKCNode::walkChildren(this, v26, 0, 1);
  (*(*this + 13))(this);
  v6 = 0;
  v7 = v28;
  v8 = (v28 + 6);
  v9 = *(v28 + 4);
  v10 = *(v28 + 5);
  v11 = *(v28 + 6);
  v37[0] = *(v28 + 3);
  v37[1] = v9;
  v37[2] = v10;
  v37[3] = v11;
  do
  {
    v38.columns[v6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v2, COERCE_FLOAT(v37[v6])), v3, *&v37[v6], 1), v4, v37[v6], 2), v5, v37[v6], 3);
    ++v6;
  }

  while (v6 != 4);
  v12 = v38.columns[1];
  v13 = v38.columns[2];
  v14 = v38.columns[3];
  v7[3] = v38.columns[0];
  v7[4] = v12;
  v7[5] = v13;
  v7[6] = v14;
  *v15.i64 = (*(*this + 15))(this);
  v38.columns[0] = v15;
  v38.columns[1] = v16;
  v38.columns[2] = v17;
  v38.columns[3] = v18;
  v19 = SKCBoundingBoxUnion(v8, &v38);
  v20 = v28;
  *(v28 + 3) = v19;
  *(v20 + 4) = v21;
  *(v20 + 5) = v22;
  *(v20 + 6) = v23;
  v25 = *(v20 + 3);
  _Block_object_dispose(&v27, 8);
  return v25;
}

void sub_21C4297E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 SKCNode::getConversionMatrixFromNode(SKCNode *this, const SKCNode *a2)
{
  v16[0] = v16;
  v16[1] = v16;
  v16[2] = 0;
  v13 = &v13;
  v14 = &v13;
  v15 = 0;
  if (a2)
  {
    operator new();
  }

  if (this)
  {
    operator new();
  }

  v11 = *(MEMORY[0x277D860B8] + 16);
  v12 = *MEMORY[0x277D860B8];
  v9 = *(MEMORY[0x277D860B8] + 48);
  v10 = *(MEMORY[0x277D860B8] + 32);
  for (i = v14; i != &v13; i = i[1])
  {
    (*(*i[2] + 112))(i[2]);
    v7 = 0;
    v17[0] = v12;
    v17[1] = v11;
    v17[2] = v10;
    v17[3] = v9;
    do
    {
      v18[v7] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v3, COERCE_FLOAT(v17[v7])), v4, *&v17[v7], 1), v5, v17[v7], 2), v6, v17[v7], 3);
      ++v7;
    }

    while (v7 != 4);
    v11 = v18[1];
    v12 = v18[0];
    v9 = v18[3];
    v10 = v18[2];
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(&v13);
  std::__list_imp<SKCRenderSortInfo *>::clear(v16);
  return v12;
}

void sub_21C429A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  std::__list_imp<SKCRenderSortInfo *>::clear(va);
  std::__list_imp<SKCRenderSortInfo *>::clear(va1);
  _Unwind_Resume(a1);
}

__n128 SKCNode::getConversionMatrixFromWorld(SKCNode *this)
{
  v1 = *(this + 10);
  (*(*this + 112))(this);
  for (; v1; v1 = v1[10])
  {
    v11 = v5;
    v12 = v4;
    v13 = v3;
    v14 = result;
    *&v6 = (*(*v1 + 112))(v1);
    v7 = 0;
    v15[0] = v6;
    v15[1] = v8;
    v15[2] = v9;
    v15[3] = v10;
    do
    {
      v16[v7] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, COERCE_FLOAT(v15[v7])), v13, *&v15[v7], 1), v12, v15[v7], 2), v11, v15[v7], 3);
      ++v7;
    }

    while (v7 != 4);
    result = v16[0];
    v3 = v16[1];
    v4 = v16[2];
    v5 = v16[3];
  }

  return result;
}

double SKCNode::convertPointToNode(SKCNode *a1, SKCNode *this, float32x4_t a3)
{
  ConversionMatrixFromNode = SKCNode::getConversionMatrixFromNode(this, a1);
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(ConversionMatrixFromNode, a3.f32[0]), v4, *a3.f32, 1), v5, a3, 2), v6, a3, 3).u64[0];
  return result;
}

double SKCNode::convertPointFromNode(SKCNode *a1, const SKCNode *a2, float32x4_t a3)
{
  ConversionMatrixFromNode = SKCNode::getConversionMatrixFromNode(a1, a2);
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(ConversionMatrixFromNode, a3.f32[0]), v4, *a3.f32, 1), v5, a3, 2), v6, a3, 3).u64[0];
  return result;
}

__n128 __Block_byref_object_copy__2(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  v4 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v4;
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void ___ZN7SKCNode25getAccumulatedBoundingBoxEv_block_invoke(uint64_t a1, SKCNode *this)
{
  v3 = *(*(a1 + 32) + 8);
  SKCNode::getAccumulatedBoundingBox(this);
  v13.columns[0] = v4;
  v13.columns[1] = v5;
  v13.columns[2] = v6;
  v13.columns[3] = v7;
  v8 = SKCBoundingBoxUnion((v3 + 48), &v13);
  v9 = *(*(a1 + 32) + 8);
  *(v9 + 48) = v8;
  *(v9 + 64) = v10;
  *(v9 + 80) = v11;
  *(v9 + 96) = v12;
}

double SKCNode::getUntransformedBoundingBox(SKCNode *this)
{
  *&v2 = (*(*this + 120))(this);
  v12 = v3;
  v13 = v2;
  v14 = v5;
  v15 = v4;
  (*(*this + 112))(this);
  v10 = 0;
  v16[0] = v13;
  v16[1] = v12;
  v16[2] = v15;
  v16[3] = v14;
  do
  {
    *(&v17 + v10 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v6, COERCE_FLOAT(v16[v10])), v7, *&v16[v10], 1), v8, v16[v10], 2), v9, v16[v10], 3);
    ++v10;
  }

  while (v10 != 4);
  return *&v17;
}

void SKCNode::update(SKCNode *this, double a2, float a3)
{
  if (*(this + 172))
  {
    return;
  }

  v5 = *(this + 42) * a3;
  *(this + 224) = 1;
  if ((*(this + 272) & 4) != 0)
  {
    v12 = this + 176;
    i = *(this + 23);
    if (i == (this + 176))
    {
      goto LABEL_23;
    }

    while (1)
    {
      v14 = *(i + 16);
      if (!v14->var12)
      {
        SKCAction::willStartWithTargetAtTime(*(i + 16), this, a2);
      }

      if (v14->var5)
      {
        if (!v14->var11)
        {
          goto LABEL_18;
        }
      }

      else if (([v14->var4 finished] & 1) == 0)
      {
LABEL_18:
        if (v14->var16 != v5)
        {
          SKCNode::update(v14);
        }

        SKCAction::updateWithTargetForTime(v14, this, a2);
      }

      i = *(i + 8);
      if (i == v12)
      {
        for (i = *(this + 23); ; i = *(i + 8))
        {
LABEL_23:
          if (i == v12)
          {
            goto LABEL_3;
          }

          v15 = *(i + 16);
          if (v15->var5)
          {
            if (!v15->var11)
            {
              continue;
            }
          }

          else if (![v15->var4 finished])
          {
            continue;
          }

          SKCNode::removeAction(this, v15);
        }
      }
    }
  }

LABEL_3:
  if ((*(this + 276) & 0x20) != 0)
  {
    *(this + 69) = 0;
    __p = 0;
    v25 = 0;
    v26 = 0;
    std::vector<SKCNode *>::__init_with_size[abi:ne200100]<SKCNode **,SKCNode **>(&__p, *(this + 11), *(this + 12), (*(this + 12) - *(this + 11)) >> 3);
    v6 = __p;
    v7 = v25;
    if (__p == v25)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = *v6;
        v10 = *(*v6 + 272);
        if ((v10 & 0x20) != 0 || (v11 = v9[69], (v11 & 0x20) != 0))
        {
          (*(*v9 + 152))(*v6, a2, v5);
          v10 = v9[68];
          v11 = v9[69];
        }

        v8 |= v10 | v11;
        ++v6;
      }

      while (v6 != v7);
    }

    v21 = 0;
    v22 = 0;
    v23 = 0;
    std::vector<SKCNode *>::__init_with_size[abi:ne200100]<SKCNode **,SKCNode **>(&v21, *(this + 14), *(this + 15), (*(this + 15) - *(this + 14)) >> 3);
    v16 = v21;
    v17 = v22;
    if (v21 != v22)
    {
      do
      {
        v18 = *v16;
        v19 = *(*v16 + 272);
        if ((v19 & 0x20) != 0 || (v20 = v18[69], (v20 & 0x20) != 0))
        {
          (*(*v18 + 152))(*v16, a2, v5);
          v19 = v18[68];
          v20 = v18[69];
        }

        v8 |= v19 | v20;
        ++v16;
      }

      while (v16 != v17);
      v16 = v21;
    }

    *(this + 69) |= v8;
    if (v16)
    {
      v22 = v16;
      operator delete(v16);
    }

    if (__p)
    {
      v25 = __p;
      operator delete(__p);
    }
  }

  *(this + 224) = 0;
  SKCNode::cleanup(this);
  SKCNode::recomputeFlags(this, 1);
}

void sub_21C42A004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SKCNode::removeAction(SKCNode *this, SKCAction *a2)
{
  v7 = a2;
  v3 = a2->var4;
  if (*(this + 224) == 1)
  {
    operator new();
  }

  std::list<SKCAction *>::remove(this + 176, &v7);
  v4 = v7;
  v5 = skCurrentTime();
  SKCAction::wasRemovedFromTargetAtTime(v4, this, v5);
  if (v3)
  {
    v6 = *(this + 1);
    if (v6)
    {
      [v6 _removeAction:v3];
    }
  }
}

uint64_t SKCNode::cleanup(SKCNode *this)
{
  v2 = *(this + 17);
  v3 = *(this + 18);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      SKCNode::removeChild(this, v4);
      SKCNode::removeInternalChild(this, v4);
    }

    while (v2 != v3);
    v2 = *(this + 17);
  }

  *(this + 18) = v2;
  for (i = *(this + 26); i != (this + 200); i = i[1])
  {
    v7 = i[2];
    std::list<SKCAction *>::remove(this + 176, &v7);
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(this + 25);
  return [*(this + 20) removeAllObjects];
}

void SKCNode::insertChildAtIndex(SKCNode *this, SKCNode *a2, unsigned int a3)
{
  v17 = a2;
  if (*(this + 224) == 1)
  {
    v7 = *(this + 17);
    v6 = *(this + 18);
    if (v7 != v6)
    {
      v8 = *(this + 17);
      while (*v8 != a2)
      {
        ++v8;
        ++v7;
        if (v8 == v6)
        {
          v7 = *(this + 18);
          break;
        }
      }
    }

    if (v6 != v7)
    {
      v9 = (v6 - (v7 + 1));
      if (v6 != v7 + 1)
      {
        memmove(v7, v7 + 1, v6 - (v7 + 1));
      }

      *(this + 18) = &v9[v7];
      v11 = *(this + 11);
      v10 = *(this + 12);
      if (v11 != v10)
      {
        v12 = *(this + 11);
        while (*v12 != a2)
        {
          ++v12;
          ++v11;
          if (v12 == v10)
          {
            v11 = *(this + 12);
            break;
          }
        }
      }

      v13 = (v10 - (v11 + 1));
      if (v10 != v11 + 1)
      {
        memmove(v11, v11 + 1, v10 - (v11 + 1));
      }

      *(this + 12) = &v13[v11];
    }
  }

  v14 = (this + 88);
  v15 = *(this + 11);
  if ((a3 & 0x80000000) != 0 || (*(this + 12) - v15) >> 3 == a3)
  {
    std::vector<PKCLineSeg *>::push_back[abi:ne200100](v14, &v17);
  }

  else
  {
    std::vector<SKCNode *>::insert(v14, (v15 + 8 * a3), &v17);
  }

  v16 = *(this + 68);
  if ((v16 & 2) == 0)
  {
    *(this + 68) = v16 | 2;
    SKCNode::propagateFlags(this);
  }

  SKCNode::recomputeFlags(v17, 1);
  SKCNode::recomputeFlags(this, 1);
}

char *std::vector<SKCNode *>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v29 = a1;
    if (v14)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKCLineSeg *>>(a1, v14);
    }

    v26 = 0;
    v27 = 8 * v15;
    v28 = (8 * v15);
    std::__split_buffer<SKCNode *>::emplace_back<SKCNode * const&>(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 8;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_21C42A528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void SKCNode::removeChild(SKCNode *this, id *a2)
{
  v2 = a2;
  v13 = a2;
  v4 = a2[1];
  if (*(this + 224) != 1)
  {
    v9 = *(this + 11);
    v8 = *(this + 12);
    if (v9 != v8)
    {
      v10 = v8 - v9 - 8;
      while (*v9 != v2)
      {
        ++v9;
        v10 -= 8;
        if (v9 == v8)
        {
          goto LABEL_16;
        }
      }

      if (v9 + 1 != v8)
      {
        memmove(v9, v9 + 1, v10);
      }

      *(this + 12) = v9 + v10;
    }

    goto LABEL_16;
  }

  std::vector<PKCLineSeg *>::push_back[abi:ne200100](this + 136, &v13);
  if (v4)
  {
    v5 = *(this + 20);
    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = *(this + 20);
      *(this + 20) = v6;

      v5 = *(this + 20);
    }

    [v5 addObject:v4];
    v2 = v13;
LABEL_16:
    if (v2[10] == this)
    {
      v2[10] = 0;
      if (v4)
      {
        [v4 setParent:0];
        v12 = *(this + 1);
        if (v12)
        {
          [v12 _removeChild:v4];
        }
      }
    }

    goto LABEL_17;
  }

  if (v13[10] == this)
  {
    v13[10] = 0;
  }

LABEL_17:
  v11 = *(this + 68);
  if ((v11 & 2) == 0)
  {
    *(this + 68) = v11 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::removeInternalChild(SKCNode *this, id *a2)
{
  v2 = a2;
  v13 = a2;
  v4 = a2[1];
  if (*(this + 224) != 1)
  {
    v9 = *(this + 14);
    v8 = *(this + 15);
    if (v9 != v8)
    {
      v10 = v8 - v9 - 8;
      while (*v9 != v2)
      {
        ++v9;
        v10 -= 8;
        if (v9 == v8)
        {
          goto LABEL_16;
        }
      }

      if (v9 + 1 != v8)
      {
        memmove(v9, v9 + 1, v10);
      }

      *(this + 15) = v9 + v10;
    }

    goto LABEL_16;
  }

  std::vector<PKCLineSeg *>::push_back[abi:ne200100](this + 136, &v13);
  if (v4)
  {
    v5 = *(this + 20);
    if (!v5)
    {
      v6 = [MEMORY[0x277CBEB58] set];
      v7 = *(this + 20);
      *(this + 20) = v6;

      v5 = *(this + 20);
    }

    [v5 addObject:v4];
    v2 = v13;
LABEL_16:
    if (v2[10] == this)
    {
      v2[10] = 0;
      if (v4)
      {
        [v4 setParent:0];
        v12 = *(this + 1);
        if (v12)
        {
          [v12 _removeChild:v4];
        }
      }
    }

    goto LABEL_17;
  }

  if (v13[10] == this)
  {
    v13[10] = 0;
  }

LABEL_17:
  v11 = *(this + 68);
  if ((v11 & 2) == 0)
  {
    *(this + 68) = v11 | 2;
    SKCNode::propagateFlags(this);
  }
}

void *std::list<SKCAction *>::remove(uint64_t a1, void *a2)
{
  v10[0] = v10;
  v10[1] = v10;
  v10[2] = 0;
  v2 = *(a1 + 8);
  if (v2 != a1)
  {
    do
    {
      v6 = v2[1];
      v5 = v2[2];
      if (v5 == *a2)
      {
        if (v6 == a1)
        {
          v8 = 1;
        }

        else
        {
          do
          {
            v7 = v6[2];
            v8 = v7 == v5;
            if (v7 != v5)
            {
              break;
            }

            v6 = v6[1];
          }

          while (v6 != a1);
        }

        std::list<SKCAction *>::splice(v10, v10, a1, v2, v6);
        if (!v8)
        {
          v6 = v6[1];
        }
      }

      v2 = v6;
    }

    while (v6 != a1);
  }

  return std::__list_imp<SKCRenderSortInfo *>::clear(v10);
}

void sub_21C42A8F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<SKCRenderSortInfo *>::clear(va);
  _Unwind_Resume(a1);
}

void SKCNode::setTranslation(SKCNode *this, __n128 a2)
{
  *(this + 32) = a2;
  *(this + 184) = 257;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

{
  a2.n128_u64[1] = vextq_s8(*(this + 32), *(this + 32), 8uLL).u64[0];
  *(this + 32) = a2;
  *(this + 184) = 257;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setZTranslation(SKCNode *this, float a2)
{
  *(this + 130) = a2;
  *(this + 184) = 257;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setTranslation(SKCNode *this, __n128 a2, float a3)
{
  if ((COERCE_UNSIGNED_INT(COERCE_FLOAT(*(this + 32)) - a2.n128_f32[0]) & 0x60000000) != 0 || (COERCE_UNSIGNED_INT(COERCE_FLOAT(HIDWORD(*(this + 64))) - a3) & 0x60000000) != 0)
  {
    a2.n128_f32[1] = a3;
    a2.n128_u64[1] = *(this + 65);
    *(this + 32) = a2;
    *(this + 184) = 257;
    v4 = *(this + 68);
    if ((v4 & 2) == 0)
    {
      *(this + 68) = v4 | 2;
      SKCNode::propagateFlags(this);
    }
  }
}

void SKCNode::setRotation(SKCNode *this, __n128 a2)
{
  *(this + 33) = a2;
  *(this + 184) = 257;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setZRotation(SKCNode *this, float a2)
{
  *(this + 134) = a2;
  *(this + 184) = 257;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setScale(SKCNode *this, __n128 a2)
{
  *(this + 34) = a2;
  *(this + 184) = 257;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

{
  a2.n128_u64[1] = vextq_s8(*(this + 34), *(this + 34), 8uLL).u64[0];
  *(this + 34) = a2;
  *(this + 184) = 257;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setScale(SKCNode *this, __n128 a2, float a3)
{
  a2.n128_f32[1] = a3;
  a2.n128_u64[1] = *(this + 69);
  *(this + 34) = a2;
  *(this + 184) = 257;
  v3 = *(this + 68);
  if ((v3 & 2) == 0)
  {
    *(this + 68) = v3 | 2;
    SKCNode::propagateFlags(this);
  }
}

void SKCNode::setScale(SKCNode *this, int32x2_t a2)
{
  *(this + 34) = vdupq_lane_s32(a2, 0);
  *(this + 184) = 257;
  v2 = *(this + 68);
  if ((v2 & 2) == 0)
  {
    *(this + 68) = v2 | 2;
    SKCNode::propagateFlags(this);
  }
}

BOOL SKCNode::intersectsPoint(char **a1, double a2)
{
  v7[0] = SKCNode::getAccumulatedBoundingBox(a1);
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  return SKCBoundingBoxIntersectsPoint(v7, a2);
}

BOOL SKCNode::containsPoint(uint64_t a1, float32x4_t a2)
{
  *v3.i64 = (*(*a1 + 112))(a1);
  v19 = v3;
  v20 = v4;
  v17 = v6;
  v18 = v5;
  *&v7 = (*(*a1 + 120))(a1);
  v8 = 0;
  v22[0] = v7;
  v22[1] = v9;
  v22[2] = v10;
  v22[3] = v11;
  do
  {
    *(&v23 + v8 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, COERCE_FLOAT(v22[v8])), v20, *&v22[v8], 1), v18, v22[v8], 2), v17, v22[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  *v12.i64 = (*(*a1 + 112))(a1);
  return SKCBoundingBoxIntersectsPoint(&v23, *vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v12, a2.f32[0]), v13, *a2.f32, 1), v14, a2, 2), v15, a2, 3).i64);
}

uint64_t SKCNode::intersectsCircle(char **a1, __n128 a2, float a3)
{
  v9[0] = SKCNode::getAccumulatedBoundingBox(a1);
  v9[1] = v4;
  v9[2] = v5;
  v9[3] = v6;
  return SKCBoundingBoxIntersectsCircle(v9, a2, a3);
}

uint64_t SKCNode::nodeAtPoint(uint64_t a1, float32x4_t a2)
{
  v2 = a1;
  v4 = &v4;
  v5 = &v4;
  v6 = 0;
  if (SKCNode::sortedNodesAtPoint(a1, a2))
  {
    v2 = v5[2];
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(&v4);
  return v2;
}

void sub_21C42ACE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<SKCRenderSortInfo *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t SKCNode::sortedNodesAtPoint(uint64_t a1, float32x4_t a2)
{
  v9 = &v9;
  v10 = &v9;
  v11 = 0;
  v2 = *(a1 + 88);
  v3 = *(a1 + 96);
  if (v2 == v3)
  {
    v5 = 0;
    v4 = &v9;
  }

  else
  {
    do
    {
      _sortedNodesAtPoint(*v2++, a2);
    }

    while (v2 != v3);
    v4 = v10;
    v5 = v11;
  }

  _ZNSt3__14listINS_5tupleIJP7SKCNodefjbEEENS_9allocatorIS4_EEE6__sortIZNS2_18sortedNodesAtPointEDv4_fPNS0_IS3_NS5_IS3_EEEEE3__0EENS_15__list_iteratorIS4_PvEESG_SG_mRT_(v4, &v9, v5);
  if (v10 != &v9)
  {
    operator new();
  }

  v6 = v11;
  std::__list_imp<SKCRenderSortInfo *>::clear(&v9);
  return v6;
}

void sub_21C42ADF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__list_imp<SKCRenderSortInfo *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t SKCNode::nodesAtPoint(char **a1, uint64_t a2, int a3, float32x4_t a4)
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x4812000000;
  v24 = __Block_byref_object_copy__5;
  v25 = __Block_byref_object_dispose__6;
  v26 = 0;
  v27[0] = v27;
  v27[1] = v27;
  v27[2] = 0;
  *v7.i64 = (*(*a1 + 13))(a1);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = ___ZN7SKCNode12nodesAtPointEDv4_fPNSt3__14listIPS_NS1_9allocatorIS3_EEEEb_block_invoke;
  v18[3] = &unk_27830FE60;
  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, a4.f32[0]), v8, *a4.f32, 1), v9, a4, 2), v10, a4, 3);
  v19 = v17;
  v20 = &v21;
  SKCNode::walkChildren(a1, v18, 0, 0);
  v11 = v22;
  if (a3)
  {
    v12 = v22 + 6;
    v13 = v22[7];
    if (v13 != v22 + 6)
    {
      do
      {
        SKCNode::nodesAtPoint(v13[2], v22 + 6, 1, v17);
        v13 = v13[1];
      }

      while (v13 != v12);
      v11 = v22;
    }
  }

  std::list<SKCNode *>::__insert_with_sentinel[abi:ne200100]<std::__list_iterator<SKCNode *,void *>,std::__list_iterator<SKCNode *,void *>>(a2, a2, v11[7], (v11 + 6));
  v14 = *(v22 + 16);
  _Block_object_dispose(&v21, 8);
  std::__list_imp<SKCRenderSortInfo *>::clear(v27);
  return v14;
}

void sub_21C42AFA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  std::__list_imp<SKCRenderSortInfo *>::clear(v10);
  _Unwind_Resume(a1);
}

void *__Block_byref_object_copy__5(void *result, void *a2)
{
  result[6] = result + 6;
  result[7] = result + 6;
  result[8] = 0;
  v2 = a2[8];
  if (v2)
  {
    v4 = a2[6];
    v3 = a2[7];
    v5 = *(v4 + 8);
    v6 = *v3;
    *(v6 + 8) = v5;
    *v5 = v6;
    v7 = result[6];
    *(v7 + 8) = v3;
    *v3 = v7;
    result[6] = v4;
    *(v4 + 8) = result + 6;
    result[8] = v2;
    a2[8] = 0;
  }

  return result;
}

BOOL ___ZN7SKCNode12nodesAtPointEDv4_fPNSt3__14listIPS_NS1_9allocatorIS3_EEEEb_block_invoke(uint64_t a1, char **this)
{
  v6 = *(a1 + 32);
  v7[0] = SKCNode::getAccumulatedBoundingBox(this);
  v7[1] = v2;
  v7[2] = v3;
  v7[3] = v4;
  result = SKCBoundingBoxIntersectsPoint(v7, *&v6);
  if (result)
  {
    operator new();
  }

  return result;
}

uint64_t SKCNode::pushToPhysics(uint64_t this)
{
  if (*(this + 232))
  {
    v1 = this;
    v11 = 0u;
    v9 = 0u;
    v10 = 0u;
    SKCNode::resolveWorldPositionRotationAndScale(this, &v11, &v10, &v9);
    v2.i64[0] = 0x80000000800000;
    v2.i64[1] = 0x80000000800000;
    v3 = vnegq_f32(v2);
    v4 = vminnmq_f32(vmaxnmq_f32(vabsq_f32(v9), vdupq_n_s32(0x38D1B717u)), v3);
    v3.i64[0] = 0;
    v5 = v4;
    *v5.i32 = -*v4.i32;
    v6 = vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v3, v9), 0), v5, v4);
    v7 = v6;
    v7.i32[1] = vnegq_f32(v6).i32[1];
    v8 = vdivq_f32(vbslq_s8(vdupq_lane_s32(*&vcgtq_f32(v3, vdupq_lane_s32(*v9.f32, 1)), 0), v7, v6), *(v1 + 240)).u64[0];
    [*(v1 + 232) setPosition:vcvtq_f64_f32(*&v11)];
    [*(v1 + 232) setRotation:*(&v10 + 2)];
    return [*(v1 + 232) reapplyScale:*&v8 yScale:*(&v8 + 1)];
  }

  return this;
}

void SKCNode::resolveWorldPositionRotationAndScale(_OWORD *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v18 = &v17;
  v7 = a1[33];
  v20 = a1[32];
  v16 = a1[34];
  v19 = 0x3020000000;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3020000000;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3020000000;
  v12 = v7;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___ZN7SKCNode36resolveWorldPositionRotationAndScaleEPDv4_fS1_S1__block_invoke;
  v8[3] = &unk_27830FE88;
  v8[4] = &v17;
  v8[5] = &v9;
  v8[6] = &v13;
  SKCNode::walkUp(a1, v8, 0);
  if (a2)
  {
    *a2 = *(v18 + 2);
  }

  if (a3)
  {
    *a3 = *(v10 + 2);
  }

  if (a4)
  {
    *a4 = *(v14 + 2);
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_21C42B2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void *SKCNode::pullFromPhysics(SKCNode *this)
{
  result = *(this + 29);
  if (result)
  {
    [result rotation];
    v4 = v3;
    [*(this + 29) position];
    v21 = v5;
    [*(this + 29) position];
    v19 = v6;
    v24 = 0;
    v25 = &v24;
    v26 = 0x4812000000;
    v27 = __Block_byref_object_copy__5;
    v28 = __Block_byref_object_dispose__6;
    v29 = 0;
    v30[0] = v30;
    v30[1] = v30;
    v30[2] = 0;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = ___ZN7SKCNode15pullFromPhysicsEv_block_invoke;
    v23[3] = &unk_27830FDA8;
    v23[4] = &v24;
    SKCNode::walkUp(this, v23, 0);
    v7.f64[0] = v21;
    v7.f64[1] = v19;
    *v8.f32 = vcvt_f32_f64(v7);
    v8.i64[1] = 0x3F80000000000000;
    v9 = v4;
    v10 = v25 + 6;
    v11 = v25[7];
    if (v11 == v25 + 6)
    {
      v17.i64[0] = v8.i64[0];
    }

    else
    {
      do
      {
        v12 = v11[2];
        v20 = v12[33];
        v22 = v8;
        *v13.i64 = (*(*v12 + 112))(v12);
        v9 = v9 - *(&v20 + 2);
        v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v22.f32[0]), v14, *v22.f32, 1), v15, v22, 2), v16, v22, 3);
        v11 = v11[1];
        v8 = v17;
      }

      while (v11 != v10);
    }

    v17.i64[1] = *(this + 65);
    *(this + 32) = v17;
    *(this + 184) = 257;
    v18 = *(this + 68);
    if ((v18 & 2) == 0)
    {
      *(this + 68) = v18 | 2;
      SKCNode::propagateFlags(this);
      v18 = *(this + 68);
    }

    *(this + 134) = v9;
    *(this + 184) = 257;
    if ((v18 & 2) == 0)
    {
      *(this + 68) = v18 | 2;
      SKCNode::propagateFlags(this);
    }

    _Block_object_dispose(&v24, 8);
    return std::__list_imp<SKCRenderSortInfo *>::clear(v30);
  }

  return result;
}

void sub_21C42B520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  std::__list_imp<SKCRenderSortInfo *>::clear(v10);
  _Unwind_Resume(a1);
}

void SKCNode::setFlags(SKCNode *this, int a2, int a3)
{
  v3 = *(this + 68);
  if ((a2 & ~v3) != 0)
  {
    *(this + 68) = v3 | a2;
    if (a3)
    {
      SKCNode::propagateFlags(this);
    }
  }
}

double SKCNode::clearDirty(SKCNode *this)
{
  *&result = *(this + 34) & 0xFFFFFFFDFFFFFFFDLL;
  *(this + 34) = result;
  return result;
}

uint64_t SKCNode::clearFlags(uint64_t this, int a2, int a3)
{
  *(this + 272) &= ~a2;
  *(this + 276) &= ~a3;
  return this;
}

void SKCNode::propagateFlags(SKCNode *this)
{
  v1 = *(this + 10);
  if (v1)
  {
    v2 = *(this + 69) | *(this + 68);
    do
    {
      v3 = v1;
      v4 = *(v1 + 272);
      v5 = *(v1 + 276);
      *(v1 + 276) = v5 | v2;
      v1 = *(v1 + 80);
    }

    while (v1);
    if (!(v5 | v4) && v2 != 0)
    {
      if (v7)
      {

        SKCSceneNode::notifyDirtyState(v7);
      }
    }
  }
}

float32x4_t ___ZN7SKCNode36resolveWorldPositionRotationAndScaleEPDv4_fS1_S1__block_invoke(void *a1, float32x4_t *a2)
{
  *v4.i64 = (*(a2->i64[0] + 104))(a2);
  v5 = *(a1[4] + 8);
  *v5[4].f32 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(*v5[4].f32)), v6, v5[4], 1), v7, *v5[4].f32, 2), v8, *v5[4].f32, 3);
  *(*(a1[5] + 8) + 32) = vaddq_f32(a2[33], *(*(a1[5] + 8) + 32));
  v9 = *(a1[6] + 8);
  result = vmulq_f32(a2[34], v9[2]);
  v9[2] = result;
  return result;
}

double SKCNode::getTransformMatrix(__n128 *this, double a2, double a3, __n128 a4, __n128 a5, double a6, double a7, __n128 a8, __n128 a9)
{
  if ((this[23].n128_u8[0] & 1) == 0)
  {
    a8 = this[24];
    return a8.n128_f64[0];
  }

  v10 = this[32];
  v11 = this[33].n128_f32[2];
  a5.n128_u32[0] = HIDWORD(this[34].n128_u64[0]);
  a4.n128_f32[0] = a5.n128_f32[0] + -1.0;
  if ((COERCE_UNSIGNED_INT(COERCE_FLOAT(*&this[34]) + -1.0) & 0x60000000) == 0 && (COERCE_UNSIGNED_INT(a5.n128_f32[0] + -1.0) & 0x60000000) == 0)
  {
    if ((LODWORD(v11) & 0x60000000) == 0)
    {
      v18 = 0;
      goto LABEL_14;
    }

    v31 = *MEMORY[0x277D860B8];
    v33 = *(MEMORY[0x277D860B8] + 16);
    v35 = *(MEMORY[0x277D860B8] + 32);
    v37 = *(MEMORY[0x277D860B8] + 48);
    v39 = this[32].n128_i64[0];
    v19 = __sincosf_stret(v11);
    a9.n128_u64[1] = *(&v33 + 1);
    a4 = v35;
    a8.n128_u64[1] = *(&v31 + 1);
    a5 = v37;
    v10.i64[0] = v39;
    a8.n128_u64[0] = __PAIR64__(LODWORD(v19.__sinval), LODWORD(v19.__cosval));
    a9.n128_f32[0] = -v19.__sinval;
    a9.n128_u32[1] = LODWORD(v19.__cosval);
  }

  else
  {
    v13 = *(MEMORY[0x277D860B8] + 16);
    a5 = *(MEMORY[0x277D860B8] + 48);
    a8 = *MEMORY[0x277D860B8];
    a8.n128_u32[0] = this[34];
    a9 = v13;
    a9.n128_u32[1] = HIDWORD(this[34].n128_u64[0]);
    a4 = *(MEMORY[0x277D860B8] + 32);
    a4.n128_u32[2] = 1.0;
    if ((LODWORD(v11) & 0x60000000) != 0)
    {
      v36 = *(MEMORY[0x277D860B8] + 48);
      v38 = this[32];
      v30 = a8;
      v32 = a9;
      v34 = a4;
      v28 = v13.n128_i64[1];
      v29 = *(MEMORY[0x277D860B8] + 8);
      v27 = *(MEMORY[0x277D860B8] + 32);
      v14 = __sincosf_stret(v11);
      v17.i64[1] = v28;
      v16.i64[1] = v29;
      v15 = 0;
      v16.i64[0] = __PAIR64__(LODWORD(v14.__sinval), LODWORD(v14.__cosval));
      v17.f32[0] = -v14.__sinval;
      v17.i32[1] = LODWORD(v14.__cosval);
      v40 = v30;
      v41 = v32;
      v42 = v34;
      v43 = v36;
      do
      {
        *(&v44 + v15) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(&v40 + v15))), v17, v40.n128_u64[v15 / 8], 1), v27, *(&v40 + v15), 2), v36, *(&v40 + v15), 3);
        v15 += 16;
      }

      while (v15 != 64);
      a8 = v44;
      a9 = v45;
      v18 = 1;
      a4 = v46;
      a5 = v47;
      v10.i64[0] = v38.n128_u64[0];
      goto LABEL_14;
    }
  }

  v18 = 1;
LABEL_14:
  v20 = vceqz_s32(vand_s8(*v10.f32, 0x6000000060000000));
  if (v20.i32[0] & v20.i32[1])
  {
    if ((v18 & 1) == 0)
    {
      a8 = *MEMORY[0x277D860B8];
      a9 = *(MEMORY[0x277D860B8] + 16);
      a4 = *(MEMORY[0x277D860B8] + 32);
      a5 = *(MEMORY[0x277D860B8] + 48);
    }
  }

  else
  {
    v21 = *MEMORY[0x277D860B8];
    v22 = *(MEMORY[0x277D860B8] + 16);
    v24 = *(MEMORY[0x277D860B8] + 32);
    v23 = *(MEMORY[0x277D860B8] + 48);
    DWORD2(v23) = 0;
    v10.i64[1] = *(&v23 + 1);
    if (v18)
    {
      v25 = 0;
      v40 = a8;
      v41 = a9;
      v42 = a4;
      v43 = a5;
      do
      {
        *(&v44 + v25) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*(&v40 + v25))), v22, v40.n128_u64[v25 / 8], 1), v24, *(&v40 + v25), 2), v10, *(&v40 + v25), 3);
        v25 += 16;
      }

      while (v25 != 64);
      a8 = v44;
      a9 = v45;
      a4 = v46;
      a5 = v47;
    }

    else
    {
      a8 = *MEMORY[0x277D860B8];
      a9 = *(MEMORY[0x277D860B8] + 16);
      a4 = *(MEMORY[0x277D860B8] + 32);
      a5 = v10;
    }
  }

  this[24] = a8;
  this[25] = a9;
  this[26] = a4;
  this[27] = a5;
  this[23].n128_u8[0] = 0;
  return a8.n128_f64[0];
}

__n128 SKCNode::getInverseTransformMatrix(simd_float4x4 *this)
{
  if (this[5].columns[3].i8[1])
  {
    *v3.columns[0].i64 = (*(this->columns[0].i64[0] + 104))(this);
    v4 = __invert_f4(v3);
    this[7] = v4;
    this[5].columns[3].i8[1] = 0;
  }

  else
  {
    v4.columns[0] = this[7].columns[0];
  }

  return v4.columns[0];
}

uint64_t SKCNode::removeAllChildren(SKCNode *this)
{
  result = SKCNode::cleanup(this);
  v3 = *(this + 11);
  v4 = *(this + 12);
  if (v3 != v4)
  {
    v5 = *(this + 11);
    do
    {
      if (*(*v5 + 80) == this)
      {
        *(*v5 + 80) = 0;
      }

      v5 += 8;
    }

    while (v5 != v4);
  }

  *(this + 12) = v3;
  v6 = *(this + 14);
  v7 = *(this + 15);
  if (v6 != v7)
  {
    v8 = *(this + 14);
    do
    {
      if (*(*v8 + 80) == this)
      {
        *(*v8 + 80) = 0;
      }

      v8 += 8;
    }

    while (v8 != v7);
  }

  *(this + 15) = v6;
  return result;
}

void SKCNode::~SKCNode(id *this)
{
  *this = &unk_282E16CE0;
  SKCNode::removeAllChildren(this);
  v2 = this[33];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__list_imp<SKCRenderSortInfo *>::clear(this + 25);
  std::__list_imp<SKCRenderSortInfo *>::clear(this + 22);

  v3 = this[17];
  if (v3)
  {
    this[18] = v3;
    operator delete(v3);
  }

  v4 = this[14];
  if (v4)
  {
    this[15] = v4;
    operator delete(v4);
  }

  v5 = this[11];
  if (v5)
  {
    this[12] = v5;
    operator delete(v5);
  }

  std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::~__hash_table((this + 3));
}

{
  SKCNode::~SKCNode(this);

  JUMPOUT(0x21CF0A160);
}

uint64_t std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,SKAttributeValue * {__strong}>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,SKAttributeValue * {__strong}>,0>(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::__emplace_unique_key_args<std::string,std::pair<std::string,SKAttributeValue * {__strong}>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_21C42BF60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,SKAttributeValue * {__strong}>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

BOOL std::equal_to<std::string>::operator()[abi:ne200100](uint64_t a1, const void **a2, const void **a3)
{
  v3 = *(a2 + 23);
  v4 = v3;
  if ((v3 & 0x80u) != 0)
  {
    v3 = a2[1];
  }

  v5 = *(a3 + 23);
  v6 = v5;
  if (v5 < 0)
  {
    v5 = a3[1];
  }

  if (v3 != v5)
  {
    return 0;
  }

  if (v4 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = a3;
  }

  else
  {
    v8 = *a3;
  }

  return memcmp(v7, v8, v3) == 0;
}

uint64_t std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t a1, const void **a2)
{
  v2 = *std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::__find_equal<std::string>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>>>::__find_equal<std::string>(uint64_t a1, void *a2, const void **a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    v6 = *(a3 + 23);
    if (v6 >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v7 = a3[1];
    }

    if (v6 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    do
    {
      while (1)
      {
        v9 = v4;
        v12 = v4[4];
        v10 = v4 + 4;
        v11 = v12;
        v13 = *(v10 + 23);
        if (v13 >= 0)
        {
          v14 = *(v10 + 23);
        }

        else
        {
          v14 = v10[1];
        }

        if (v13 >= 0)
        {
          v15 = v10;
        }

        else
        {
          v15 = v11;
        }

        if (v14 >= v7)
        {
          v16 = v7;
        }

        else
        {
          v16 = v14;
        }

        v17 = memcmp(v8, v15, v16);
        v18 = v7 < v14;
        if (v17)
        {
          v18 = v17 < 0;
        }

        if (!v18)
        {
          break;
        }

        v4 = *v9;
        v5 = v9;
        if (!*v9)
        {
          goto LABEL_28;
        }
      }

      v19 = memcmp(v15, v8, v16);
      v20 = v14 < v7;
      if (v19)
      {
        v20 = v19 < 0;
      }

      if (!v20)
      {
        break;
      }

      v5 = v9 + 1;
      v4 = v9[1];
    }

    while (v4);
  }

  else
  {
    v9 = (a1 + 8);
  }

LABEL_28:
  *a2 = v9;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<jet_buffer_pool>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<jet_buffer_pool>>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::shared_ptr<jet_buffer_pool>>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

const void **std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, const void **a2)
{
  v4 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    std::__hash_table<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>>>::__construct_node_hash<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_21C42CA34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,SKAttributeValue * {__strong}>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

char *std::vector<SKCNode *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<SKCNode **>,std::__wrap_iter<SKCNode **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKCLineSeg *>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7++;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, *(a1 + 8) - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - v5;
    *(a1 + 8) = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  *(a1 + 8) = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t std::list<SKCNode *>::__insert_with_sentinel[abi:ne200100]<std::__wrap_iter<SKCNode **>,std::__wrap_iter<SKCNode **>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_21C42CE14(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t std::vector<SKCNode *>::__init_with_size[abi:ne200100]<SKCNode **,SKCNode **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<SKCNode *>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_21C42CEA8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<SKCNode *>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PKCLineSeg *>>(a1, a2);
  }

  std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
}

void *std::__split_buffer<SKCNode *>::emplace_back<SKCNode * const&>(void *result, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<PKCLineSeg *>>(result[4], v11);
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

uint64_t std::list<SKCAction *>::splice(uint64_t result, uint64_t *a2, uint64_t a3, void *a4, void *a5)
{
  if (a4 != a5)
  {
    v5 = *a5;
    if (result != a3)
    {
      v6 = 1;
      if (v5 != a4)
      {
        v7 = a4;
        do
        {
          v7 = v7[1];
          ++v6;
        }

        while (v7 != v5);
      }

      *(a3 + 16) -= v6;
      *(result + 16) += v6;
    }

    v8 = v5[1];
    v9 = *a4;
    *(v9 + 8) = v8;
    *v8 = v9;
    v10 = *a2;
    *(v10 + 8) = a4;
    *a4 = v10;
    *a2 = v5;
    v5[1] = a2;
  }

  return result;
}

uint64_t std::list<SKCNode *>::__insert_with_sentinel[abi:ne200100]<std::__list_iterator<SKCNode *,void *>,std::__list_iterator<SKCNode *,void *>>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 != a4)
  {
    operator new();
  }

  return a2;
}

void sub_21C42D174(void *a1)
{
  __cxa_begin_catch(a1);
  do
  {
    v2 = *v1;
    operator delete(v1);
    v1 = v2;
  }

  while (v2);
  __cxa_rethrow();
}

uint64_t _ZNSt3__14listINS_5tupleIJP7SKCNodefjbEEENS_9allocatorIS4_EEE6__sortIZNS2_18sortedNodesAtPointEDv4_fPNS0_IS3_NS5_IS3_EEEEE3__0EENS_15__list_iteratorIS4_PvEESG_SG_mRT_(float *a1, uint64_t *a2, unint64_t a3)
{
  if (a3 < 2)
  {
    return a1;
  }

  if (a3 == 2)
  {
    result = *a2;
    v6 = *(*a2 + 32);
    if (v6 == *(a1 + 32))
    {
      v7 = *(result + 24);
      v8 = a1[6];
      if ((COERCE_UNSIGNED_INT(v7 - v8) & 0x60000000) != 0)
      {
        if (v7 > v8)
        {
          goto LABEL_56;
        }
      }

      else if (*(result + 28) > *(a1 + 7))
      {
LABEL_56:
        v42 = *result;
        v41 = *(result + 8);
        *(v42 + 8) = v41;
        *v41 = v42;
        v43 = *a1;
        *(v43 + 8) = result;
        *result = v43;
        *a1 = result;
        *(result + 8) = a1;
        return result;
      }
    }

    else if (v6)
    {
      goto LABEL_56;
    }

    return a1;
  }

  v10 = a3 >> 1;
  v11 = (a3 >> 1) + 1;
  v12 = a1;
  do
  {
    v12 = *(v12 + 1);
    --v11;
  }

  while (v11 > 1);
  v13 = _ZNSt3__14listINS_5tupleIJP7SKCNodefjbEEENS_9allocatorIS4_EEE6__sortIZNS2_18sortedNodesAtPointEDv4_fPNS0_IS3_NS5_IS3_EEEEE3__0EENS_15__list_iteratorIS4_PvEESG_SG_mRT_(a1, v12, a3 >> 1);
  result = _ZNSt3__14listINS_5tupleIJP7SKCNodefjbEEENS_9allocatorIS4_EEE6__sortIZNS2_18sortedNodesAtPointEDv4_fPNS0_IS3_NS5_IS3_EEEEE3__0EENS_15__list_iteratorIS4_PvEESG_SG_mRT_(v12, a2, a3 - v10);
  v14 = *(result + 32);
  v15 = *(v13 + 24);
  v16 = *(v13 + 28);
  v17 = *(v13 + 32);
  if (v14 == v17)
  {
    v18 = *(result + 24);
    if ((COERCE_UNSIGNED_INT(v18 - v15) & 0x60000000) != 0)
    {
      if (v18 <= v15)
      {
LABEL_14:
        v19 = *(v13 + 8);
        i = result;
        result = v13;
        goto LABEL_29;
      }
    }

    else if (*(result + 28) <= v16)
    {
      goto LABEL_14;
    }
  }

  else if ((v14 & 1) == 0)
  {
    goto LABEL_14;
  }

  for (i = *(result + 8); i != a2; i = *(i + 8))
  {
    v21 = *(i + 32);
    if (v21 == v17)
    {
      v22 = *(i + 24);
      if ((COERCE_UNSIGNED_INT(v22 - v15) & 0x60000000) != 0)
      {
        if (v22 <= v15)
        {
          break;
        }
      }

      else if (*(i + 28) <= v16)
      {
        break;
      }
    }

    else if ((v21 & 1) == 0)
    {
      break;
    }
  }

  v23 = *i;
  v24 = *(*i + 8);
  v25 = *result;
  *(v25 + 8) = v24;
  *v24 = v25;
  v26 = *v13;
  v19 = *(v13 + 8);
  *(v26 + 8) = result;
  *result = v26;
  *v13 = v23;
  *(v23 + 8) = v13;
LABEL_29:
  if (v19 != i && i != a2)
  {
    v27 = i;
    do
    {
      v28 = *(v27 + 32);
      v29 = *(v19 + 6);
      v30 = *(v19 + 7);
      v31 = *(v19 + 32);
      if (v28 == v31)
      {
        v32 = *(v27 + 24);
        if ((COERCE_UNSIGNED_INT(v32 - v29) & 0x60000000) != 0)
        {
          if (v32 > v29)
          {
            goto LABEL_37;
          }
        }

        else if (*(v27 + 28) > v30)
        {
LABEL_37:
          for (j = *(v27 + 8); j != a2; j = *(j + 8))
          {
            v34 = *(j + 32);
            if (v34 == v31)
            {
              v35 = *(j + 24);
              if ((COERCE_UNSIGNED_INT(v35 - v29) & 0x60000000) != 0)
              {
                if (v35 <= v29)
                {
                  break;
                }
              }

              else if (*(j + 28) <= v30)
              {
                break;
              }
            }

            else if ((v34 & 1) == 0)
            {
              break;
            }
          }

          v36 = *j;
          v37 = *(*j + 8);
          v38 = *v27;
          *(v38 + 8) = v37;
          *v37 = v38;
          if (i == v27)
          {
            i = j;
          }

          v40 = *v19;
          v39 = v19[1];
          *(v40 + 8) = v27;
          *v27 = v40;
          *v19 = v36;
          *(v36 + 8) = v19;
          v27 = j;
          v19 = v39;
          continue;
        }
      }

      else if (v28)
      {
        goto LABEL_37;
      }

      v19 = v19[1];
    }

    while (v19 != i && v27 != a2);
  }

  return result;
}

__n128 glsk_matrix_make@<Q0>(const _GLKMatrix4 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *&a1->m[4];
  *a2 = *&a1->m00;
  *(a2 + 16) = v2;
  result = *&a1->m[8];
  v4 = *&a1->m[12];
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

uint64_t sk_matrix_get_GLKMatrix@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  for (i = 0; i != 3; ++i)
  {
    v3 = 0;
    v4 = *(result + 16 * i);
    do
    {
      v5 = v4;
      *(a2 + 4 * v3) = *(&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v3 & 3)));
      ++v3;
    }

    while (v3 != 3);
    a2 += 12;
  }

  return result;
}

{
  for (i = 0; i != 4; ++i)
  {
    v3 = 0;
    v4 = *(result + 16 * i);
    do
    {
      v5 = v4;
      *(a2 + 4 * v3) = *(&v5 & 0xFFFFFFFFFFFFFFF3 | (4 * (v3 & 3)));
      ++v3;
    }

    while (v3 != 4);
    a2 += 16;
  }

  return result;
}

void sub_21C42E400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9)
{
  a9.super_class = SKScene;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

__n128 CGPointConvertFromViewToScene(SKView *a1, SKScene *a2, CGPoint a3)
{
  y = a3.y;
  x = a3.x;
  v6 = a1;
  v7 = a2;
  v8 = [(SKNode *)v7 _backingNode];
  [(SKView *)v6 bounds];
  v10 = v9;
  [(SKView *)v6 bounds];
  v11.n128_f32[0] = v10;
  v13 = v12;
  SKCSceneNode::matrixForDestination(v8, v11, v13);
  v50 = v15;
  v51 = v14;
  v52 = v17;
  v53 = v16;
  [(SKView *)v6 bounds];
  v19 = v18;
  [(SKView *)v6 bounds];
  v21 = v20;
  [(SKView *)v6 bounds];
  v23 = v22;
  [(SKView *)v6 bounds];
  v25 = v24;
  if (SKGetGlobalFlippedFlag())
  {
    v26 = -1;
  }

  else
  {
    v26 = 0;
  }

  if (v6 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SKView *)v6 getViewTransform];
    v31 = 0;
    v55[0] = v51;
    v55[1] = v50;
    v55[2] = v53;
    v55[3] = v52;
    do
    {
      v56[v31] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, COERCE_FLOAT(v55[v31])), v28, *&v55[v31], 1), v29, v55[v31], 2), v30, v55[v31], 3);
      ++v31;
    }

    while (v31 != 4);
    v50 = v56[1];
    v51 = v56[0];
    v52 = v56[3];
    v53 = v56[2];
  }

  v32.f32[0] = x;
  v33 = y;
  v32.f32[1] = v33;
  v32.i32[2] = 0;
  v32.i32[3] = 1.0;
  *&v34 = v19;
  *&v35 = v21;
  v36 = __PAIR64__(v35, v34);
  *&v37 = v23;
  *&v38 = v25;
  __asm { FMOV            V4.4S, #1.0 }

  _Q4.i64[0] = __PAIR64__(v38, v37);
  v44.i64[0] = 0x4000000040000000;
  v44.i64[1] = 0x4000000040000000;
  __asm { FMOV            V2.4S, #-1.0 }

  v46 = vmlaq_f32(_Q2, v44, vdivq_f32(vsubq_f32(v32, v36), _Q4));
  v47 = v46;
  v47.i32[1] = vnegq_f32(v46).i32[1];
  v49 = vbslq_s8(vdupq_n_s32(v26), v46, v47);
  v57.columns[1] = v50;
  v57.columns[0] = v51;
  v57.columns[3] = v52;
  v57.columns[2] = v53;
  v58 = __invert_f4(v57);
  v54 = vcvtq_f64_f32(*&vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58.columns[0], v49.f32[0]), v58.columns[1], *v49.f32, 1), v58.columns[2], v49, 2), v58.columns[3], v49, 3));

  return v54;
}

__n128 CGPointConvertFromSceneToView(SKScene *a1, SKView *a2, CGPoint a3)
{
  y = a3.y;
  x = a3.x;
  v6 = a1;
  v7 = a2;
  v8 = [(SKNode *)v6 _backingNode];
  [(SKView *)v7 bounds];
  v10 = v9;
  [(SKView *)v7 bounds];
  v11.n128_f32[0] = v10;
  v13 = v12;
  SKCSceneNode::matrixForDestination(v8, v11, v13);
  v48 = v14;
  v50 = v15;
  v52 = v17;
  v54 = v16;
  if (v7 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(SKView *)v7 getViewTransform];
    v22 = 0;
    v56[0] = v48;
    v56[1] = v50;
    v56[2] = v54;
    v56[3] = v52;
    do
    {
      v57[v22] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v18, COERCE_FLOAT(v56[v22])), v19, *&v56[v22], 1), v20, v56[v22], 2), v21, v56[v22], 3);
      ++v22;
    }

    while (v22 != 4);
    v48 = v57[0];
    v50 = v57[1];
    v52 = v57[3];
    v54 = v57[2];
  }

  [(SKView *)v7 bounds:v48];
  v24 = v23;
  [(SKView *)v7 bounds];
  v26 = v25;
  [(SKView *)v7 bounds];
  v28 = v27;
  [(SKView *)v7 bounds];
  v30 = v29;
  v31 = SKGetGlobalFlippedFlag();
  v32 = x;
  v33 = y;
  v34 = vaddq_f32(v53, vmlaq_f32(vmlaq_n_f32(vmulq_n_f32(v49, v32), v51, v33), 0, v54));
  __asm { FMOV            V0.4S, #1.0 }

  v40.i64[0] = 0x3F0000003F000000;
  v40.i64[1] = 0x3F0000003F000000;
  v41 = vmulq_f32(vaddq_f32(v34, _Q0), v40);
  if ((v31 & 1) == 0)
  {
    v41.f32[1] = 1.0 - v41.f32[1];
  }

  *&v42 = v30;
  *&v43 = v28;
  _Q0.i64[0] = __PAIR64__(v42, v43);
  v44 = v24;
  *&v45 = v44;
  v46 = v26;
  *(&v45 + 1) = v46;
  v55 = vcvtq_f64_f32(*&vmlaq_f32(v45, _Q0, v41));

  return v55;
}

double CGRectConvertFrameFromNodeToView(SKNode *a1, SKView *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v4;
  [(SKNode *)v5 calculateAccumulatedFrame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(SKNode *)v5 scene];

  if (v15)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30.origin.x = v8;
      v30.origin.y = v10;
      v30.size.width = v12;
      v30.size.height = v14;
      MinX = CGRectGetMinX(v30);
      v31.origin.x = v8;
      v31.origin.y = v10;
      v31.size.width = v12;
      v31.size.height = v14;
      MinY = CGRectGetMinY(v31);
      v18 = [(SKNode *)v5 scene];
      [(SKView *)v6 convertPoint:v18 fromScene:MinX, MinY];
      v20 = v19;

      v32.origin.x = v8;
      v32.origin.y = v10;
      v32.size.width = v12;
      v32.size.height = v14;
      MaxX = CGRectGetMaxX(v32);
      v33.origin.x = v8;
      v33.origin.y = v10;
      v33.size.width = v12;
      v33.size.height = v14;
      MaxY = CGRectGetMaxY(v33);
      v23 = [(SKNode *)v5 scene];
      [(SKView *)v6 convertPoint:v23 fromScene:MaxX, MaxY];
    }

    else
    {
      v24 = [(SKNode *)v5 scene];
      v34.origin.x = v8;
      v34.origin.y = v10;
      v34.size.width = v12;
      v34.size.height = v14;
      v25 = CGRectGetMinX(v34);
      v35.origin.x = v8;
      v35.origin.y = v10;
      v35.size.width = v12;
      v35.size.height = v14;
      v28.y = CGRectGetMinY(v35);
      v28.x = v25;
      v20 = CGPointConvertFromSceneToView(v24, v6, v28).n128_u64[0];

      v23 = [(SKNode *)v5 scene];
      v36.origin.x = v8;
      v36.origin.y = v10;
      v36.size.width = v12;
      v36.size.height = v14;
      v26 = CGRectGetMaxX(v36);
      v37.origin.x = v8;
      v37.origin.y = v10;
      v37.size.width = v12;
      v37.size.height = v14;
      v29.y = CGRectGetMaxY(v37);
      v29.x = v26;
      CGPointConvertFromSceneToView(v23, v6, v29);
    }

    v8 = *&v20;
  }

  return v8;
}

uint64_t std::function<void ()(PKCField *)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82888] + 16;
  __cxa_throw(exception, MEMORY[0x277D82728], MEMORY[0x277D82660]);
}

void PKCAether::Evaluator::~Evaluator(PKCAether::Evaluator *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    *(this + 4) = v2;
    operator delete(v2);
  }

  v3 = this;
  std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](&v3);
}

void std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<PKCField>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<PKCField>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

uint64_t std::__function::__value_func<void ()(PKCField *)>::~__value_func[abi:ne200100](uint64_t a1)
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

void SKCEmitterNode::computeZPostion(SKCEmitterNode *this)
{
  v2 = *(this + 188) + 0.01;
  if ((SKGetLinkedOnOrAfter(589824) & 1) == 0)
  {
    v2 = v2 + SKCNode::getZTranslation(this);
  }

  v3 = *(this + 74);
  if (v3)
  {

    SKCNode::setZTranslation(v3, v2);
  }
}

void SKCEmitterNode::updateParticles(SKCEmitterNode *this, double a2, float a3, int a4)
{
  v215 = *MEMORY[0x277D85DE8];
  if (*(this + 988) == 1)
  {
    SKCEmitterNode::initializeSystem(this);
  }

  WeakRetained = objc_loadWeakRetained(this + 71);
  if (!WeakRetained)
  {
    WeakRetained = *(this + 1);
  }

  v8 = [WeakRetained _backingNode];
  if (*(*(this + 74) + 80) != v8)
  {
    SKCEmitterNode::addParticlesToTargetNode(this);
  }

  v9.n128_f64[0] = a2 - *(this + 88);
  v9.n128_f32[0] = v9.n128_f64[0];
  v173 = v9.n128_u64[0];
  *(this + 91) = *(this + 91) + v9.n128_f32[0];
  if (*(this + 560) == 1)
  {
    (***(this + 75))(*(this + 75), v9);
    v10 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "birthTime");
    v11 = *(SKCParticleSystem::getSlice(v10, __p) + 16);
    if (SHIBYTE(v177) < 0)
    {
      operator delete(__p[0]);
    }

    v12 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "deathTime");
    v13 = *(SKCParticleSystem::getSlice(v12, __p) + 16);
    if (SHIBYTE(v177) < 0)
    {
      operator delete(__p[0]);
    }

    v14 = *(this + 75);
    std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
    v15 = *(SKCParticleSystem::getSlice(v14, __p) + 16);
    if (SHIBYTE(v177) < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *(*(this + 75) + 84);
    if (v16 < 4)
    {
      LODWORD(v17) = 0;
    }

    else
    {
      v17 = 0;
      v18 = (v11 + 8);
      v19 = (v13 + 8);
      v20 = (v15 + 8);
      do
      {
        v21 = *(v18 - 2);
        v22 = *(v18 - 1);
        v23 = *v18;
        v24 = v18[1];
        v18 += 4;
        v25 = (a2 - v21) / (*(v19 - 2) - v21);
        *(v20 - 2) = v25;
        v26 = (a2 - v22) / (*(v19 - 1) - v22);
        *(v20 - 1) = v26;
        v27 = (a2 - v23) / (*v19 - v23);
        *v20 = v27;
        v17 += 4;
        v28 = (a2 - v24) / (v19[1] - v24);
        v20[1] = v28;
        v19 += 4;
        v20 += 4;
      }

      while (v17 < (v16 - 3));
    }

    if (v17 < v16)
    {
      v29 = (v15 + 4 * v17);
      v30 = (v13 + 4 * v17);
      v31 = (v11 + 4 * v17);
      v32 = v16 - v17;
      do
      {
        v33 = *v31++;
        v34 = v33;
        v35 = a2 - v33;
        v36 = *v30++;
        v37 = v35 / (v36 - v34);
        *v29++ = v37;
        --v32;
      }

      while (v32);
    }

    if (*(this + 244))
    {
      v38 = SKCNode::getScene(this);
      v39 = [v38 physicsWorld];

      v40 = [v39 aether];
    }

    else
    {
      v40 = 0;
    }

    MEMORY[0x21CF0A090](v207, v40);
    if (v40)
    {
      v210 = 0;
      v211 = &v210;
      v212 = 0x3020000000;
      v213 = 0;
      v214 = 0;
      v41 = objc_loadWeakRetained(this + 71);
      v42 = v41 == 0;

      if (v42)
      {
        v43 = this;
      }

      else
      {
        v43 = v8;
      }

      *(v211 + 2) = xmmword_21C4B84C0;
      v206[0] = MEMORY[0x277D85DD0];
      v206[1] = 3221225472;
      v206[2] = ___ZN14SKCEmitterNode15updateParticlesEdfb_block_invoke;
      v206[3] = &unk_27830FDA8;
      v206[4] = &v210;
      SKCNode::walkUp(v43, v206, 1);
      v172 = *(v211 + 2);
      v44 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "vel");
      v45 = *(SKCParticleSystem::getSlice(v44, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v46 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "pos");
      v47 = *(SKCParticleSystem::getSlice(v46, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v48 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "accel");
      v49 = *(SKCParticleSystem::getSlice(v48, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v50 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "override");
      Slice = SKCParticleSystem::getSlice(v50, __p);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v52 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "outVel");
      v53 = SKCParticleSystem::getSlice(v52, __p);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      SKCDataSlice::resize(Slice, *(*(this + 75) + 80));
      SKCDataSlice::resize(v53, *(*(this + 75) + 80));
      v191 = -1;
      *&v192[4] = 0;
      *&v192[12] = 0;
      v193 = 1;
      v197 = 0;
      v198 = 1;
      v199 = 0;
      v200 = 0;
      v201 = 8;
      v202 = 0;
      v205 = 1065353216;
      __p[0] = 0;
      __p[1] = v47;
      v177 = 8;
      v178 = 0;
      v179 = 0;
      v180 = v45;
      v181 = 8;
      v182 = 0;
      v183 = 1065353216;
      v184 = *v174;
      v185 = 0;
      v186 = 1;
      *&v174[4] = 0uLL;
      v187 = 1065353216;
      v189 = 0;
      v188 = *v174;
      v190 = 1;
      v194 = v49;
      v195 = 8;
      v196 = 0;
      v203 = *(this + 91);
      v204 = v172;
      PKGet_INV_PTM_RATIO();
      v205 = v54;
      v55 = *(this + 244);
      *&v174[12] = 0;
      *&v174[4] = 0;
      v191 = v55;
      *v192 = *v174;
      *&v192[16] = 0;
      v193 = 1;
      v197 = *(Slice + 16);
      v198 = 1;
      v199 = 0;
      v200 = *(v53 + 16);
      v201 = 8;
      v202 = 0;
      PKCAether::Evaluator::evalFieldsVec2();
      v56 = *(this + 75);
      if (*(this + 83))
      {
        std::string::basic_string[abi:ne200100]<0>(v174, "lifeRatio");
        v57 = *(SKCParticleSystem::getSlice(v56, v174) + 16);
        if (v175 < 0)
        {
          operator delete(*v174);
        }

        if (*(*(this + 75) + 84))
        {
          v58 = 0;
          v59 = vdup_lane_s32(v173, 0);
          do
          {
            v60 = *(v49 + 8 * v58);
            v61 = *(v45 + 8 * v58);
            v62 = v47[v58];
            v63 = *(v57 + 4 * v58);
            *v174 = 0;
            SKCKeyframeSequence::sample(*(this + 83), v63, v174);
            v64 = vmla_n_f32(v61, vmul_n_f32(v60, *v173.i32), *v174);
            *(v49 + 8 * v58) = 0;
            *(v45 + 8 * v58) = v64;
            v47[v58++] = vadd_f32(vmla_f32(v62, v61, v59), vmul_n_f32(vmul_f32(vsub_f32(v64, v61), 0x3F0000003F000000), *v173.i32));
          }

          while (v58 < *(*(this + 75) + 84));
        }
      }

      else if (*(v56 + 84))
      {
        v74 = 0;
        v75 = vdup_lane_s32(v173, 0);
        do
        {
          v76 = (v49 + 8 * v74);
          v77 = *(v45 + 8 * v74);
          v78 = v47[v74];
          v79 = vmla_f32(v77, v75, *v76);
          *v76 = 0;
          *(v45 + 8 * v74) = v79;
          v47[v74++] = vadd_f32(vmla_f32(v78, v77, v75), vmul_n_f32(vmul_f32(vsub_f32(v79, v77), 0x3F0000003F000000), *v173.i32));
        }

        while (v74 < *(*(this + 75) + 84));
      }

      _Block_object_dispose(&v210, 8);
    }

    else
    {
      v65 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "vel");
      v66 = *(SKCParticleSystem::getSlice(v65, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v67 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "pos");
      v68 = *(SKCParticleSystem::getSlice(v67, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v69 = *(*(this + 75) + 84);
      if (v69 >= 1)
      {
        v70 = vmul_n_f32(*(this + 904), *v173.i32);
        v71 = vmul_n_f32(vmul_f32(v70, 0x3F0000003F000000), *v173.i32);
        v72 = vdup_lane_s32(v173, 0);
        do
        {
          v73 = *v66;
          *v68 = vadd_f32(v71, vmla_f32(*v68, *v66, v72));
          ++v68;
          *v66++ = vadd_f32(v70, v73);
          --v69;
        }

        while (v69);
      }
    }

    v80 = *(this + 75);
    if (*(this + 84))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "vel");
      v81 = *(SKCParticleSystem::getSlice(v80, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v82 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
      v83 = *(SKCParticleSystem::getSlice(v82, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v80 = *(this + 75);
      if (*(v80 + 84))
      {
        v84 = 0;
        do
        {
          v85 = *(v83 + 4 * v84);
          LODWORD(__p[0]) = 0;
          SKCKeyframeSequence::sample(*(this + 84), v85, __p);
          *(v81 + 8 * v84) = vmul_n_f32(*(v81 + 8 * v84), *__p);
          v80 = *(this + 75);
          ++v84;
        }

        while (v84 < *(v80 + 84));
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "rot");
    v86 = *(SKCParticleSystem::getSlice(v80, __p) + 16);
    if (SHIBYTE(v177) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 81))
    {
      v87 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
      v88 = *(SKCParticleSystem::getSlice(v87, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v89 = *(this + 75);
      if (*(v89 + 84))
      {
        v90 = 0;
        do
        {
          SKCKeyframeSequence::sample(*(this + 81), *(v88 + 4 * v90), v86++);
          v89 = *(this + 75);
          ++v90;
        }

        while (v90 < *(v89 + 84));
      }
    }

    else
    {
      v91 = *(this + 233);
      v89 = *(this + 75);
      if ((LODWORD(v91) & 0x60000000) != 0)
      {
        v92 = *(v89 + 84);
        if (v92)
        {
          v93 = v91 * *v173.i32;
          do
          {
            *v86 = v93 + *v86;
            ++v86;
            --v92;
          }

          while (v92);
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "scale");
    v94 = *(SKCParticleSystem::getSlice(v89, __p) + 16);
    if (SHIBYTE(v177) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 82))
    {
      v95 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
      v96 = *(SKCParticleSystem::getSlice(v95, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v97 = *(this + 75);
      if (*(v97 + 84))
      {
        v98 = 0;
        do
        {
          SKCKeyframeSequence::sample(*(this + 82), *(v96 + 4 * v98), v94++);
          v97 = *(this + 75);
          ++v98;
        }

        while (v98 < *(v97 + 84));
      }
    }

    else
    {
      v99 = *(this + 236);
      v97 = *(this + 75);
      if ((LODWORD(v99) & 0x60000000) != 0)
      {
        v100 = *(v97 + 84);
        if (v100)
        {
          v101 = v99 * *v173.i32;
          do
          {
            *v94 = fmaxf(v101 + *v94, 0.0);
            ++v94;
            --v100;
          }

          while (v100);
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
    v102 = *(SKCParticleSystem::getSlice(v97, __p) + 16);
    if (SHIBYTE(v177) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 80))
    {
      v103 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
      v104 = *(SKCParticleSystem::getSlice(v103, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v105 = *(this + 75);
      v106 = *(v105 + 84);
      if (v106 >= 1)
      {
        do
        {
          SKCKeyframeSequence::sample(*(this + 80), *v104++, v102++);
          --v106;
        }

        while (v106);
        v105 = *(this + 75);
      }
    }

    else
    {
      v107 = *(this + 239);
      v105 = *(this + 75);
      if ((LODWORD(v107) & 0x60000000) != 0)
      {
        v108 = *(v105 + 84);
        if (v108 >= 1)
        {
          v109 = v107 * *v173.i32;
          do
          {
            *v102 = v109 + *v102;
            ++v102;
            --v108;
          }

          while (v108);
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "colorBlend");
    v110 = *(SKCParticleSystem::getSlice(v105, __p) + 16);
    if (SHIBYTE(v177) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 79))
    {
      v111 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
      v112 = *(SKCParticleSystem::getSlice(v111, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      v113 = *(this + 75);
      if (*(v113 + 84))
      {
        v114 = 0;
        do
        {
          SKCKeyframeSequence::sample(*(this + 79), *(v112 + 4 * v114), v110++);
          v113 = *(this + 75);
          ++v114;
        }

        while (v114 < *(v113 + 84));
      }
    }

    else
    {
      v115 = *(this + 210);
      v113 = *(this + 75);
      if ((LODWORD(v115) & 0x60000000) != 0)
      {
        v116 = *(v113 + 84);
        if (v116)
        {
          v117 = v115 * *v173.i32;
          do
          {
            *v110 = v117 + *v110;
            ++v110;
            --v116;
          }

          while (v116);
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "color");
    v118 = *(SKCParticleSystem::getSlice(v113, __p) + 16);
    if (SHIBYTE(v177) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 78))
    {
      v119 = *(this + 75);
      std::string::basic_string[abi:ne200100]<0>(__p, "lifeRatio");
      v120 = *(SKCParticleSystem::getSlice(v119, __p) + 16);
      if (SHIBYTE(v177) < 0)
      {
        operator delete(__p[0]);
      }

      if (*(*(this + 75) + 84))
      {
        v121 = 0;
        do
        {
          SKCKeyframeSequence::sample(*(this + 78), *(v120 + 4 * v121), v118);
          v118 += 4;
          ++v121;
        }

        while (v121 < *(*(this + 75) + 84));
      }

      goto LABEL_133;
    }

    v122.i32[0] = *(this + 204);
    if ((v122.i32[0] & 0x60000000) != 0)
    {
      v123 = *(this + 205);
    }

    else
    {
      v123 = *(this + 205);
      if ((v123 & 0x60000000) == 0 && (*(this + 827) & 0x60) == 0 && (*(this + 831) & 0x60) == 0)
      {
LABEL_133:
        if (v208)
        {
          v209 = v208;
          operator delete(v208);
        }

        __p[0] = v207;
        std::vector<std::shared_ptr<PKCField>>::__destroy_vector::operator()[abi:ne200100](__p);
        if (!*(this + 127))
        {
          SKCEmitterNode::runBirthSimulation(this, *v173.i32, a2, a4);
        }

        v126 = *(this + 126);
        if (v126 != (this + 1000))
        {
          SKCEmitterNode::runBirthSimulation(v126[2], *v173.i32, a2, a4);
        }

        v127 = *(this + 236);
        v129 = (v127 & 0x60000000) == 0 || v127 < 0;
        if (*(this + 80))
        {
          v130 = 0;
        }

        else
        {
          v131 = *(this + 239);
          v133 = (v131 & 0x60000000) == 0 || v131 < 0;
          v130 = *(this + 72) == 0 && v133;
        }

        if (*(this + 82))
        {
          v134 = 0;
        }

        else
        {
          v134 = *(this + 72) == 0 && v129;
        }

        v135 = *(this + 75);
        std::string::basic_string[abi:ne200100]<0>(__p, "deathTime");
        v136 = *(SKCParticleSystem::getSlice(v135, __p) + 16);
        if (SHIBYTE(v177) < 0)
        {
          operator delete(__p[0]);
        }

        v137 = *(this + 75);
        std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
        v138 = *(SKCParticleSystem::getSlice(v137, __p) + 16);
        if (SHIBYTE(v177) < 0)
        {
          operator delete(__p[0]);
        }

        v139 = *(this + 75);
        std::string::basic_string[abi:ne200100]<0>(__p, "scale");
        v140 = *(SKCParticleSystem::getSlice(v139, __p) + 16);
        if (SHIBYTE(v177) < 0)
        {
          operator delete(__p[0]);
        }

        v141 = *(this + 75);
        if (*(v141 + 21))
        {
          v142 = 0;
          do
          {
            v143 = a2;
            if ((COERCE_UNSIGNED_INT(*(v136 + 4 * v142) - v143) & 0x80000000) != 0 || (v144 = *(v140 + 4 * v142), v130) && ((v145 = *(v138 + 4 * v142), v145 < 0) || (v145 & 0x60000000) == 0) || v134 && (v144 < 0 || (v144 & 0x60000000) == 0))
            {
              SKCParticleSystem::removePatricle(v141, v142);
              v141 = *(this + 75);
            }

            ++v142;
          }

          while (v142 < *(v141 + 21));
        }

        SKCParticleSystem::compact(v141);
        v146 = *(this + 75);
        std::string::basic_string[abi:ne200100]<0>(__p, "outColor");
        v147 = *(SKCParticleSystem::getSlice(v146, __p) + 16);
        if (SHIBYTE(v177) < 0)
        {
          operator delete(__p[0]);
        }

        v148 = *(this + 75);
        std::string::basic_string[abi:ne200100]<0>(__p, "color");
        v149 = *(SKCParticleSystem::getSlice(v148, __p) + 16);
        if (SHIBYTE(v177) < 0)
        {
          operator delete(__p[0]);
        }

        v150 = *(this + 75);
        std::string::basic_string[abi:ne200100]<0>(__p, "alpha");
        v151 = *(SKCParticleSystem::getSlice(v150, __p) + 16);
        if (SHIBYTE(v177) < 0)
        {
          operator delete(__p[0]);
        }

        v152 = *(this + 75);
        v153 = *(v152 + 84);
        if (*(this + 120))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "colorBlend");
          v154 = *(SKCParticleSystem::getSlice(v152, __p) + 16);
          if (SHIBYTE(v177) < 0)
          {
            operator delete(__p[0]);
          }

          if (v153 >= 1)
          {
            do
            {
              v156 = *v151++;
              v157 = v156;
              v158 = *v154++;
              _S4 = fminf(fmaxf(v158, 0.0), 1.0);
              v160 = *v149++;
              _Q5 = v160;
              *v155.i32 = 1.0 - _S4;
              v162 = vdupq_lane_s32(v155, 0);
              __asm { FMLA            S6, S4, V5.S[3] }

              _Q5.i32[3] = 1.0;
              *v147++ = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(vmlaq_n_f32(v162, _Q5, _S4), fminf(fmaxf(fminf(fmaxf(v157, 0.0), 1.0) * _S6, 0.0), 1.0) * 255.0))), 0).u32[0];
              --v153;
            }

            while (v153);
          }
        }

        else if (v153 >= 1)
        {
          do
          {
            v168 = *v151++;
            v169 = fminf(fmaxf(v168, 0.0), 1.0);
            v170 = *v149++;
            v171 = v170;
            v171.i32[3] = 1.0;
            *v147++ = vuzp1_s8(vmovn_s32(vcvtq_s32_f32(vmulq_n_f32(v171, fminf(fmaxf(vmuls_lane_f32(v169, v170, 3), 0.0), 1.0) * 255.0))), 0).u32[0];
            --v153;
          }

          while (v153);
        }

        SKCNode::setDirty(*(this + 74));
        goto LABEL_189;
      }
    }

    if (*(*(this + 75) + 84))
    {
      v124 = 0;
      v122.i32[1] = v123;
      v122.i64[1] = *(this + 103);
      v125 = vmulq_n_f32(v122, *v173.i32);
      do
      {
        *&v118[4 * v124] = vaddq_f32(v125, *&v118[4 * v124]);
        ++v124;
      }

      while (v124 < *(*(this + 75) + 84));
    }

    goto LABEL_133;
  }

LABEL_189:
  *(this + 88) = a2;
  SKCNode::recomputeFlags(this, 1);
}

void sub_21C4348DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  PKCAether::Evaluator::~Evaluator((v26 - 256));

  _Unwind_Resume(a1);
}

uint64_t SKCEmitterNode::getNeedsUpdate(SKCEmitterNode *this)
{
  if (SKCNode::getNeedsUpdate(this) || (*(this + 172) & 1) == 0 && *(this + 42) > 0.0 && (*(this + 228) > 0.0 || (v3 = *(this + 75)) != 0 && *(v3 + 84)))
  {
    v2 = 1;
  }

  else
  {
    v2 = *(this + 616);
  }

  return v2 & 1;
}

double SKCEmitterNode::getBoundingBox(SKCEmitterNode *this)
{
  v2 = *(this + 74);
  if (!v2)
  {
    return *&SKCBoundingBoxEmpty;
  }

  *&v3 = (*(*v2 + 120))(v2);
  v13 = v4;
  v14 = v3;
  v15 = v6;
  v16 = v5;
  (*(*this + 104))(this);
  v11 = 0;
  v17[0] = v14;
  v17[1] = v13;
  v17[2] = v16;
  v17[3] = v15;
  do
  {
    *(&v18 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v7, COERCE_FLOAT(v17[v11])), v8, *&v17[v11], 1), v9, v17[v11], 2), v10, v17[v11], 3);
    ++v11;
  }

  while (v11 != 4);
  return *&v18;
}

void sub_21C4350B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_21C43510C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C435120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C435134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C435148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C43515C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C435170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C435184()
{
  if (*(v0 - 177) < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C435198()
{
  if (*(v0 - 153) < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C4351AC()
{
  if (*(v0 - 129) < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C4351C0()
{
  if (*(v0 - 105) < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C4351D4()
{
  if (*(v0 - 81) < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C4351E8()
{
  if (*(v0 - 57) < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void sub_21C4351FC()
{
  if (*(v0 - 33) < 0)
  {
    JUMPOUT(0x21C435100);
  }

  JUMPOUT(0x21C435104);
}

void *SKCEmitterNode::addParticlesToTargetNode(id *this)
{
  SKCEmitterNode::computeZPostion(this);
  WeakRetained = objc_loadWeakRetained(this + 71);
  v3 = [WeakRetained _backingNode];

  v4 = this[74];
  v6 = v3[15];
  v5 = v3[16];
  if (v6 >= v5)
  {
    v8 = v3[14];
    v9 = (v6 - v8) >> 3;
    if ((v9 + 1) >> 61)
    {
      std::vector<jet_render_op>::__throw_length_error[abi:ne200100]();
    }

    v10 = v5 - v8;
    v11 = v10 >> 2;
    if (v10 >> 2 <= (v9 + 1))
    {
      v11 = v9 + 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v11;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<PKCLineSeg *>>((v3 + 14), v12);
    }

    v13 = (8 * v9);
    *v13 = v4;
    v7 = 8 * v9 + 8;
    v14 = v3[14];
    v15 = v3[15] - v14;
    v16 = v13 - v15;
    memcpy(v13 - v15, v14, v15);
    v17 = v3[14];
    v3[14] = v16;
    v3[15] = v7;
    v3[16] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v6 = v4;
    v7 = (v6 + 1);
  }

  v3[15] = v7;
  *(this[74] + 10) = v3;

  return std::__list_imp<SKCRenderSortInfo *>::clear(this + 106);
}

float32x4_t ___ZN14SKCEmitterNode15updateParticlesEdfb_block_invoke(uint64_t a1, uint64_t *lpsrc, _BYTE *a3)
{
  v6 = *lpsrc;
  {
    *a3 = 1;
  }

  else
  {
    *v8.i64 = (*(v6 + 104))(lpsrc);
    v9 = *(*(a1 + 32) + 8);
    result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, COERCE_FLOAT(*v9[4].f32)), v10, v9[4], 1), v11, *v9[4].f32, 2), v12, *v9[4].f32, 3);
    *v9[4].f32 = result;
  }

  return result;
}

void SKCEmitterNode::runBirthSimulation(SKCEmitterNode *this, float a2, double a3, int a4)
{
  v237 = *MEMORY[0x277D85DE8];
  v6 = *(this + 228);
  *v230 = 0;
  v7 = *(this + 124);
  if (!v7)
  {
    v7 = this;
  }

  v8 = *(v7 + 75);
  WeakRetained = objc_loadWeakRetained(this + 71);
  v10 = [WeakRetained _backingNode];

  v11.i32[0] = *(this + 218);
  v11.i32[2] = 0;
  v11.i32[3] = 1.0;
  v12 = v11;
  v12.i32[1] = *(this + 219);
  if (v10 == this)
  {
    v214 = 1065353216;
    v17 = 0x3F80000000000000;
  }

  else
  {
    v211 = *v12.f32;
    v223 = *(this + 218);
    ConversionMatrixFromNode = SKCNode::getConversionMatrixFromNode(v10, this);
    v12 = vaddq_f32(v16, vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(ConversionMatrixFromNode, v223), v14, v211, 1), 0, v15));
    v214 = vmlaq_f32(vmlaq_f32(vmlaq_f32(ConversionMatrixFromNode, 0, v14), 0, v15), 0, v16).u64[0];
    v17 = vmlaq_f32(vmlaq_f32(vaddq_f32(v14, vmulq_f32(ConversionMatrixFromNode, 0)), 0, v15), 0, v16).u64[0];
  }

  v212 = v12;
  v213 = v17;
  if (*(this + 108))
  {
    v18 = vsub_f32(*v12.f32, *(*(this + 106) + 16));
    v19 = sqrtf(vaddv_f32(vmul_f32(v18, v18)));
  }

  else
  {
    v19 = 0.0;
  }

  if (*(this + 616) == 1)
  {
    v20 = v19;
    if ((LODWORD(v20) & 0x60000000) != 0)
    {
      v21 = *(this + 76) * v19 + 2.0;
      v22 = vcvtps_u32_f32(v21);
LABEL_14:
      v230[1] = v22;
LABEL_16:
      v24 = *(this + 85);
      if (v24)
      {
        v25 = *(this + 86);
        if (v25 + v22 > v24)
        {
          v22 = (v24 - v25) & ~((v24 - v25) >> 31);
          v230[1] = v22;
        }
      }

      SKCParticleSystem::addPatricles(v8, v22, v230, &v230[1]);
      if (v230[1])
      {
        *(this + 86) += v230[1];
        std::string::basic_string[abi:ne200100]<0>(&v232, "birthTime");
        v26 = *(SKCParticleSystem::getSlice(v8, &v232) + 16);
        v27 = v230[0];
        if (v233.i8[7] < 0)
        {
          operator delete(v232.i64[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(&v232, "deathTime");
        v28 = *(SKCParticleSystem::getSlice(v8, &v232) + 16);
        v29 = v230[0];
        if (v233.i8[7] < 0)
        {
          operator delete(v232.i64[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(&v232, "vel");
        v30 = *(SKCParticleSystem::getSlice(v8, &v232) + 16);
        v224 = v230[0];
        if (v233.i8[7] < 0)
        {
          operator delete(v232.i64[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(&v232, "pos");
        v218 = *(SKCParticleSystem::getSlice(v8, &v232) + 16);
        v31 = v230[0];
        if (v233.i8[7] < 0)
        {
          operator delete(v232.i64[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(&v232, "color");
        Slice = SKCParticleSystem::getSlice(v8, &v232);
        v201 = v230[0];
        v202 = *(Slice + 16);
        if (v233.i8[7] < 0)
        {
          operator delete(v232.i64[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(&v232, "rot");
        v33 = SKCParticleSystem::getSlice(v8, &v232);
        v197 = v230[0];
        v198 = *(v33 + 16);
        if (v233.i8[7] < 0)
        {
          operator delete(v232.i64[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(&v232, "scale");
        v34 = SKCParticleSystem::getSlice(v8, &v232);
        v199 = v230[0];
        v200 = *(v34 + 16);
        if (v233.i8[7] < 0)
        {
          operator delete(v232.i64[0]);
        }

        std::string::basic_string[abi:ne200100]<0>(&v232, "size");
        v35 = SKCParticleSystem::getSlice(v8, &v232);
        v195 = v230[0];
        v196 = *(v35 + 16);
        if (v233.i8[7] < 0)
        {
          operator delete(v232.i64[0]);
        }

        v208 = 0x3F80000000000000;
        v207 = xmmword_21C4B94F0;
        v210 = xmmword_21C4B9500;
        *(&v36 + 1) = 0x3F000000BFC00000;
        v209 = xmmword_21C4B9510;
        if ((LODWORD(a2) & 0x60000000) != 0 && *(this + 108) >= 2uLL && (v37 = v19, (LODWORD(v37) & 0x60000000) != 0))
        {
          v38 = (this + 856);
          v39 = &v229;
          v40 = 1;
          do
          {
            v41 = v40;
            v42 = *v38;
            v43.i64[0] = *(v42 + 16);
            v43.i64[1] = 0x3F80000000000000;
            *v39 = v43;
            v38 = (v42 + 8);
            v39 = &v228;
            v40 = 0;
          }

          while ((v41 & 1) != 0);
          v44 = vsubq_f32(v212, v228);
          v206 = v228;
          v45 = v30;
          if (*(this + 616))
          {
            v205 = v44;
            v46 = 0;
            v47 = 1;
          }

          else
          {
            v186 = 0;
            v187.i64[0] = 0x4000000040000000;
            v187.i64[1] = 0x4000000040000000;
            v188 = vmlaq_f32(v212, v187, v44);
            v190.i64[0] = v229.i64[0];
            v189 = vsubq_f32(v188, vsubq_f32(v228, v229));
            v190.i64[1] = 0x3F80000000000000;
            v191.i64[0] = v228.i64[0];
            v191.i64[1] = 0x3F80000000000000;
            v192.i64[0] = v212.i64[0];
            v192.i64[1] = 0x3F80000000000000;
            v205 = v189;
            v193.i64[0] = v189.i64[0];
            v193.i64[1] = 0x3F80000000000000;
            v231[0] = xmmword_21C4B9510;
            v231[1] = xmmword_21C4B9500;
            v231[2] = xmmword_21C4B94F0;
            v231[3] = xmmword_21C4B9100;
            do
            {
              *(&v232 + v186 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v190, COERCE_FLOAT(v231[v186])), v191, *&v231[v186], 1), v192, v231[v186], 2), v193, v231[v186], 3);
              ++v186;
            }

            while (v186 != 4);
            v209 = v232;
            v210 = v233;
            v46 = 1;
            v47 = 1;
            *(&v36 + 1) = v236;
            v207 = v234;
            v208 = v235;
          }
        }

        else
        {
          v45 = v30;
          v46 = 0;
          v47 = 0;
        }

        v48 = v230[1];
        v49 = 1.0 / v230[1];
        if (*(this + 616))
        {
          *&v36 = v49 * a2;
        }

        else
        {
          *&v36 = 1.0 / v6;
        }

        if (*(this + 616) == 1)
        {
          *(this + 89) = *(this + 88) + (v49 * a2);
        }

        if (v48)
        {
          v50 = v28;
          v51 = 0;
          v52 = v29;
          v53 = v26 + 4 * v27;
          v54 = v50 + 4 * v52;
          v55 = *&v36;
          v56 = v45 + 8 * v224;
          *&v36 = 0;
          v215 = v36;
          v57 = v218 + 8 * v31;
          while (1)
          {
            v58 = *(this + 89);
            v59 = v58;
            *(v53 + 4 * v51) = v59;
            v60 = *(this + 229);
            v61 = *(this + 230);
            if ((LODWORD(v61) & 0x60000000) != 0)
            {
              v60 = (v60 - (v61 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * ((v60 + (v61 * 0.5)) - (v60 - (v61 * 0.5))));
              v62 = *(this + 89);
            }

            else
            {
              v62 = v58;
            }

            v63 = v58 + v60;
            *(v54 + 4 * v51) = v63;
            *(this + 89) = v62 + v55;
            if (!v47)
            {
              break;
            }

            v64 = v215;
            *&v64 = v49 + *&v215;
            v215 = v64;
            if (v46)
            {
              v65 = vadd_f32(v208, *&vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v209, *&v64 * (*&v64 * *&v64)), v210, *&v64 * *&v64), v207, *&v64));
LABEL_58:
              v225 = v65;
              goto LABEL_60;
            }

            v65.i32[0] = v205.i32[0];
            v225 = vmlaq_n_f32(v206, v205, *&v64).u64[0];
LABEL_60:
            v66 = *(this + 224);
            v67 = *(this + 225);
            if ((LODWORD(v67) & 0x60000000) != 0)
            {
              v66 = (v66 - (v67 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * ((v66 + (v67 * 0.5)) - (v66 - (v67 * 0.5))));
            }

            v219 = *(this + 222);
            v68 = *(this + 223);
            if ((LODWORD(v68) & 0x60000000) != 0)
            {
              v219 = (*(this + 222) - (v68 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * ((v65.f32[0] + (v68 * 0.5)) - (v65.f32[0] - (v68 * 0.5))));
            }

            v69 = __sincosf_stret(v66);
            *(v56 + 8 * v51) = vmul_n_f32(__PAIR64__(LODWORD(v69.__sinval), LODWORD(v69.__cosval)), v219);
            if (v10 == this)
            {
              v221 = v225.f32[0];
              v73 = *(this + 220);
              if ((LODWORD(v73) & 0x60000000) != 0)
              {
                v221 = (v225.f32[0] - (v73 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * ((v225.f32[0] + (v73 * 0.5)) - (v225.f32[0] - (v73 * 0.5))));
              }

              v74 = v225.f32[1];
              v75 = *(this + 221);
              if ((LODWORD(v75) & 0x60000000) != 0)
              {
                v76 = (v225.f32[1] - (v75 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * ((v74 + (v75 * 0.5)) - (v74 - (v75 * 0.5))));
              }

              else
              {
                v76 = v225.f32[1];
              }

              v226 = __PAIR64__(LODWORD(v76), LODWORD(v221));
            }

            else
            {
              v70 = *(this + 220);
              v220 = 0.0;
              v71 = 0.0;
              if ((LODWORD(v70) & 0x60000000) != 0)
              {
                v71 = (0.0 - (v70 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * (((v70 * 0.5) + 0.0) - (0.0 - (v70 * 0.5))));
              }

              v216 = v71;
              v72 = *(this + 221);
              if ((LODWORD(v72) & 0x60000000) != 0)
              {
                v220 = (0.0 - (v72 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * (((v72 * 0.5) + 0.0) - (0.0 - (v72 * 0.5))));
              }

              v226 = vmla_n_f32(vmla_n_f32(v225, v214, v216), v213, v220);
            }

            v77 = *(this + 191);
            if ((LODWORD(v77) & 0x60000000) != 0)
            {
              v78 = *(this + 192);
            }

            else
            {
              if ((*(this + 192) & 0x60000000) == 0)
              {
                v82 = v226;
                goto LABEL_81;
              }

              v78 = *(this + 192);
            }

            v79 = rand();
            v80 = v78 * 0.5 + v77;
            v81 = (v77 + v78 * -0.5) / (v77 + v78 * 0.5);
            v82 = vmla_n_f32(v226, vmul_n_f32(__PAIR64__(LODWORD(v69.__sinval), LODWORD(v69.__cosval)), sqrtf((v81 * v81) + (vcvts_n_f32_s32(v79, 0x1FuLL) * (1.0 - (v81 * v81))))), v80);
LABEL_81:
            *(v57 + 8 * v51) = v82;
            v48 = v230[1];
            if (++v51 >= v230[1])
            {
              goto LABEL_84;
            }
          }

          v65 = *v212.f32;
          goto LABEL_58;
        }

LABEL_84:
        v83 = *(this + 46);
        v84 = *(this + 120);
        if (v84)
        {
          if (v83.f64[0] == *MEMORY[0x277CBF3A8] && v83.f64[1] == *(MEMORY[0x277CBF3A8] + 8))
          {
            [v84 size];
            v83.f64[1] = v86;
            v48 = v230[1];
          }
        }

        v87 = (v202 + 16 * v201);
        if (v48)
        {
          v88 = (v196 + 8 * v195);
          *&v83.f64[0] = vcvt_f32_f64(v83);
          v89 = v48;
          do
          {
            *v88++ = *&v83.f64[0];
            --v89;
          }

          while (v89);
        }

        v90 = *(this + 78);
        if (v90)
        {
          SKCKeyframeSequence::sample(v90, 0.0, v232.f32);
          v48 = v230[1];
          if (v230[1])
          {
            v83 = v232;
            v91 = v230[1];
            do
            {
              *v87++ = v83;
              --v91;
            }

            while (v91);
          }
        }

        else if ((*(this + 803) & 0x60) != 0 || (*(this + 807) & 0x60) != 0 || (*(this + 811) & 0x60) != 0 || (*(this + 815) & 0x60) != 0)
        {
          if (v48)
          {
            v92 = 0;
            do
            {
              v93 = *(this + 196);
              v227 = v93;
              v94 = *(this + 200);
              if ((LODWORD(v94) & 0x60000000) != 0)
              {
                v227 = (v93 - (v94 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * ((v93 + (v94 * 0.5)) - (v93 - (v94 * 0.5))));
              }

              v222 = *(this + 197);
              v95 = *(this + 201);
              if ((LODWORD(v95) & 0x60000000) != 0)
              {
                v222 = (*(this + 197) - (v95 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * ((v93 + (v95 * 0.5)) - (v93 - (v95 * 0.5))));
              }

              v96 = *(this + 198);
              v217 = v96;
              v97 = *(this + 202);
              if ((LODWORD(v97) & 0x60000000) != 0)
              {
                v217 = (v96 - (v97 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * ((v96 + (v97 * 0.5)) - (v96 - (v97 * 0.5))));
              }

              v98 = *(this + 203);
              if ((LODWORD(v98) & 0x60000000) != 0)
              {
                v99 = (*(this + 199) - (v98 * 0.5)) + (vcvts_n_f32_s32(rand(), 0x1FuLL) * ((v96 + (v98 * 0.5)) - (v96 - (v98 * 0.5))));
              }

              else
              {
                v99 = *(this + 199);
              }

              *&v83.f64[0] = __PAIR64__(LODWORD(v222), LODWORD(v227));
              *&v83.f64[1] = __PAIR64__(LODWORD(v99), LODWORD(v217));
              v87[v92] = v83;
              v48 = v230[1];
              ++v92;
            }

            while (v92 < v230[1]);
          }
        }

        else if (v48)
        {
          v194 = 0;
          v83 = *(this + 49);
          do
          {
            v87[v194++] = v83;
          }

          while (v48 != v194);
        }

        v100 = v200 + 4 * v199;
        v101 = *(this + 82);
        if (v101)
        {
          v232.i32[0] = 0;
          SKCKeyframeSequence::sample(v101, 0.0, v232.f32);
          v48 = v230[1];
          if (v230[1])
          {
            v102 = 0;
            LODWORD(v83.f64[0]) = v232.i32[0];
            v103 = vdupq_n_s64(v230[1] - 1);
            v104 = (v230[1] + 3) & 0x1FFFFFFFCLL;
            v105 = (v100 + 8);
            do
            {
              v106 = vdupq_n_s64(v102);
              v107 = vmovn_s64(vcgeq_u64(v103, vorrq_s8(v106, xmmword_21C4B9530)));
              if (vuzp1_s16(v107, *&v83.f64[0]).u8[0])
              {
                *(v105 - 2) = LODWORD(v83.f64[0]);
              }

              if (vuzp1_s16(v107, *&v83).i8[2])
              {
                *(v105 - 1) = LODWORD(v83.f64[0]);
              }

              if (vuzp1_s16(*&v83, vmovn_s64(vcgeq_u64(v103, vorrq_s8(v106, xmmword_21C4B9520)))).i32[1])
              {
                *v105 = LODWORD(v83.f64[0]);
                v105[1] = LODWORD(v83.f64[0]);
              }

              v102 += 4;
              v105 += 4;
            }

            while (v104 != v102);
          }
        }

        else
        {
          LODWORD(v83.f64[0]) = *(this + 234);
          v108 = *(this + 235);
          if ((LODWORD(v108) & 0x60000000) != 0)
          {
            if (v48)
            {
              v109 = 0;
              v110 = v108 * 0.5;
              v111 = *v83.f64 - v110;
              v112 = (*v83.f64 + v110) - (*v83.f64 - v110);
              do
              {
                *(v100 + 4 * v109) = v111 + (vcvts_n_f32_s32(rand(), 0x1FuLL) * v112);
                v48 = v230[1];
                ++v109;
              }

              while (v109 < v230[1]);
            }
          }

          else if (v48)
          {
            v113 = 0;
            v114 = vdupq_n_s64(v48 - 1);
            v115 = (v100 + 8);
            do
            {
              v116 = vdupq_n_s64(v113);
              v117 = vmovn_s64(vcgeq_u64(v114, vorrq_s8(v116, xmmword_21C4B9530)));
              if (vuzp1_s16(v117, *&v83.f64[0]).u8[0])
              {
                *(v115 - 2) = LODWORD(v83.f64[0]);
              }

              if (vuzp1_s16(v117, *&v83).i8[2])
              {
                *(v115 - 1) = LODWORD(v83.f64[0]);
              }

              if (vuzp1_s16(*&v83, vmovn_s64(vcgeq_u64(v114, vorrq_s8(v116, xmmword_21C4B9520)))).i32[1])
              {
                *v115 = LODWORD(v83.f64[0]);
                v115[1] = LODWORD(v83.f64[0]);
              }

              v113 += 4;
              v115 += 4;
            }

            while (((v48 + 3) & 0x1FFFFFFFCLL) != v113);
          }
        }

        v118 = v198 + 4 * v197;
        v119 = *(this + 81);
        if (v119)
        {
          v232.i32[0] = 0;
          SKCKeyframeSequence::sample(v119, 0.0, v232.f32);
          if (v230[1])
          {
            v121 = 0;
            v120.i32[0] = v232.i32[0];
            v122 = vdupq_n_s64(v230[1] - 1);
            v123 = (v230[1] + 3) & 0x1FFFFFFFCLL;
            v124 = (v118 + 8);
            do
            {
              v125 = vdupq_n_s64(v121);
              v126 = vmovn_s64(vcgeq_u64(v122, vorrq_s8(v125, xmmword_21C4B9530)));
              if (vuzp1_s16(v126, v120).u8[0])
              {
                *(v124 - 2) = v120.i32[0];
              }

              if (vuzp1_s16(v126, v120).i8[2])
              {
                *(v124 - 1) = v120.i32[0];
              }

              if (vuzp1_s16(v120, vmovn_s64(vcgeq_u64(v122, vorrq_s8(v125, xmmword_21C4B9520)))).i32[1])
              {
                *v124 = v120.i32[0];
                v124[1] = v120.i32[0];
              }

              v121 += 4;
              v124 += 4;
            }

            while (v123 != v121);
          }
        }

        else
        {
          LODWORD(v83.f64[0]) = *(this + 231);
          v127 = *(this + 232);
          if ((LODWORD(v127) & 0x60000000) != 0)
          {
            if (v48)
            {
              v128 = 0;
              v129 = v127 * 0.5;
              v130 = *v83.f64 - v129;
              v131 = (*v83.f64 + v129) - (*v83.f64 - v129);
              do
              {
                *(v118 + 4 * v128++) = v130 + (vcvts_n_f32_s32(rand(), 0x1FuLL) * v131);
              }

              while (v128 < v230[1]);
            }
          }

          else if (v48)
          {
            v132 = 0;
            v133 = vdupq_n_s64(v48 - 1);
            v134 = (v48 + 3) & 0x1FFFFFFFCLL;
            v135 = (v118 + 8);
            do
            {
              v136 = vdupq_n_s64(v132);
              v137 = vmovn_s64(vcgeq_u64(v133, vorrq_s8(v136, xmmword_21C4B9530)));
              if (vuzp1_s16(v137, *&v83.f64[0]).u8[0])
              {
                *(v135 - 2) = LODWORD(v83.f64[0]);
              }

              if (vuzp1_s16(v137, *&v83).i8[2])
              {
                *(v135 - 1) = LODWORD(v83.f64[0]);
              }

              if (vuzp1_s16(*&v83, vmovn_s64(vcgeq_u64(v133, vorrq_s8(v136, xmmword_21C4B9520)))).i32[1])
              {
                *v135 = LODWORD(v83.f64[0]);
                v135[1] = LODWORD(v83.f64[0]);
              }

              v132 += 4;
              v135 += 4;
            }

            while (v134 != v132);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v232, "alpha");
        v138 = *(SKCParticleSystem::getSlice(v8, &v232) + 16);
        v140 = v230[0];
        if (v233.i8[7] < 0)
        {
          operator delete(v232.i64[0]);
        }

        v141 = v138 + 4 * v140;
        v142 = *(this + 80);
        if (v142)
        {
          v232.i32[0] = 0;
          SKCKeyframeSequence::sample(v142, 0.0, v232.f32);
          if (v230[1])
          {
            v144 = 0;
            v143.i32[0] = v232.i32[0];
            v145 = vdupq_n_s64(v230[1] - 1);
            v146 = (v230[1] + 3) & 0x1FFFFFFFCLL;
            v147 = (v141 + 8);
            do
            {
              v148 = vdupq_n_s64(v144);
              v149 = vmovn_s64(vcgeq_u64(v145, vorrq_s8(v148, xmmword_21C4B9530)));
              if (vuzp1_s16(v149, v143).u8[0])
              {
                *(v147 - 2) = v143.i32[0];
              }

              if (vuzp1_s16(v149, v143).i8[2])
              {
                *(v147 - 1) = v143.i32[0];
              }

              if (vuzp1_s16(v143, vmovn_s64(vcgeq_u64(v145, vorrq_s8(v148, xmmword_21C4B9520)))).i32[1])
              {
                *v147 = v143.i32[0];
                v147[1] = v143.i32[0];
              }

              v144 += 4;
              v147 += 4;
            }

            while (v146 != v144);
          }
        }

        else
        {
          v139.i32[0] = *(this + 237);
          v150 = *(this + 238);
          if ((LODWORD(v150) & 0x60000000) != 0)
          {
            if (v230[1])
            {
              v151 = 0;
              v152 = v150 * 0.5;
              v153 = *v139.i32 - v152;
              v154 = (*v139.i32 + v152) - (*v139.i32 - v152);
              do
              {
                *(v141 + 4 * v151++) = v153 + (vcvts_n_f32_s32(rand(), 0x1FuLL) * v154);
              }

              while (v151 < v230[1]);
            }
          }

          else if (v230[1])
          {
            v155 = 0;
            v156 = vdupq_n_s64(v230[1] - 1);
            v157 = (v230[1] + 3) & 0x1FFFFFFFCLL;
            v158 = (v141 + 8);
            do
            {
              v159 = vdupq_n_s64(v155);
              v160 = vmovn_s64(vcgeq_u64(v156, vorrq_s8(v159, xmmword_21C4B9530)));
              if (vuzp1_s16(v160, v139).u8[0])
              {
                *(v158 - 2) = v139.i32[0];
              }

              if (vuzp1_s16(v160, v139).i8[2])
              {
                *(v158 - 1) = v139.i32[0];
              }

              if (vuzp1_s16(v139, vmovn_s64(vcgeq_u64(v156, vorrq_s8(v159, xmmword_21C4B9520)))).i32[1])
              {
                *v158 = v139.i32[0];
                v158[1] = v139.i32[0];
              }

              v155 += 4;
              v158 += 4;
            }

            while (v157 != v155);
          }
        }

        std::string::basic_string[abi:ne200100]<0>(&v232, "colorBlend");
        v161 = *(SKCParticleSystem::getSlice(v8, &v232) + 16);
        v163 = v230[0];
        if (v233.i8[7] < 0)
        {
          operator delete(v232.i64[0]);
        }

        v164 = v161 + 4 * v163;
        v165 = *(this + 79);
        if (v165)
        {
          v232.i32[0] = 0;
          SKCKeyframeSequence::sample(v165, 0.0, v232.f32);
          v167 = v230[1];
          if (v230[1])
          {
            v168 = 0;
            v166.i32[0] = v232.i32[0];
            v169 = vdupq_n_s64(v230[1] - 1);
            v170 = (v230[1] + 3) & 0x1FFFFFFFCLL;
            v171 = (v164 + 8);
            do
            {
              v172 = vdupq_n_s64(v168);
              v173 = vmovn_s64(vcgeq_u64(v169, vorrq_s8(v172, xmmword_21C4B9530)));
              if (vuzp1_s16(v173, v166).u8[0])
              {
                *(v171 - 2) = v166.i32[0];
              }

              if (vuzp1_s16(v173, v166).i8[2])
              {
                *(v171 - 1) = v166.i32[0];
              }

              if (vuzp1_s16(v166, vmovn_s64(vcgeq_u64(v169, vorrq_s8(v172, xmmword_21C4B9520)))).i32[1])
              {
                *v171 = v166.i32[0];
                v171[1] = v166.i32[0];
              }

              v168 += 4;
              v171 += 4;
            }

            while (v170 != v168);
          }
        }

        else
        {
          if (*(this + 120))
          {
            v162.i32[0] = *(this + 208);
            v175 = *(this + 209);
          }

          else
          {
            v175 = 0.0;
            v162.i32[0] = 1.0;
          }

          v167 = v230[1];
          if ((LODWORD(v175) & 0x60000000) != 0)
          {
            if (v230[1])
            {
              v176 = 0;
              v177 = v175 * 0.5;
              v178 = *v162.i32 - v177;
              v179 = (*v162.i32 + v177) - (*v162.i32 - v177);
              do
              {
                *(v164 + 4 * v176) = v178 + (vcvts_n_f32_s32(rand(), 0x1FuLL) * v179);
                v167 = v230[1];
                ++v176;
              }

              while (v176 < v230[1]);
            }
          }

          else if (v230[1])
          {
            v180 = 0;
            v181 = vdupq_n_s64(v230[1] - 1);
            v182 = (v230[1] + 3) & 0x1FFFFFFFCLL;
            v183 = (v164 + 8);
            do
            {
              v184 = vdupq_n_s64(v180);
              v185 = vmovn_s64(vcgeq_u64(v181, vorrq_s8(v184, xmmword_21C4B9530)));
              if (vuzp1_s16(v185, v162).u8[0])
              {
                *(v183 - 2) = v162.i32[0];
              }

              if (vuzp1_s16(v185, v162).i8[2])
              {
                *(v183 - 1) = v162.i32[0];
              }

              if (vuzp1_s16(v162, vmovn_s64(vcgeq_u64(v181, vorrq_s8(v184, xmmword_21C4B9520)))).i32[1])
              {
                *v183 = v162.i32[0];
                v183[1] = v162.i32[0];
              }

              v180 += 4;
              v183 += 4;
            }

            while (v182 != v180);
          }
        }

        if (a4)
        {
          v174 = a3;
          SKCEmitterNode::preSimulate(this, v230[0], v167, v174);
        }
      }

      SKCEmitterNode::recordPrevStartPosition(this);
    }
  }

  else
  {
    v23 = *(this + 89);
    if (v23 < a3)
    {
      v22 = (floor((a3 - v23) / (1.0 / v6)) + 1.0);
      goto LABEL_14;
    }
  }

  v22 = 0;
  goto LABEL_16;
}