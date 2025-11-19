id C3D::RenderGraph::graphDescription(C3D::RenderGraph *this)
{
  v2 = 0x277CBE000uLL;
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v48 = this;
  v4 = *(this + 12);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = v3;
  [v3 setValue:v5 forKey:@"stages"];
  v46 = v5;

  if (v4)
  {
    alloc = *MEMORY[0x277CBECE8];
    do
    {
      v6 = *(v4 + 8);
      v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v6];
      [v46 addObject:v7];
      v50 = v7;

      v51 = v6;
      if (v6)
      {
        v8 = 0;
        v49 = v4;
        do
        {
          v52 = v8;
          v9 = *C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v4, v8);
          v10 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(v48 + 3), v9);
          v11 = *v10;
          v12 = objc_alloc_init(*(v2 + 2872));
          v13 = (**v11)(v11);
          v14 = CFStringCreateWithCString(alloc, v13, 0x8000100u);
          [v12 setValue:v14 forKey:@"name"];
          CFRelease(v14);
          [v12 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", v9), @"id"}];
          [v12 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInteger:", 0), @"type"}];
          [v12 setValue:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithBool:", 1), @"enabled"}];
          v15 = C3D::Pass::descriptor(v11);
          LODWORD(v9) = C3D::PassDescriptor::inputCount(v15);
          v16 = v9;
          v17 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v9];
          v53 = v12;
          [v12 setValue:v17 forKey:@"inputs"];

          if (v9)
          {
            v18 = 0;
            do
            {
              v19 = objc_alloc_init(*(v2 + 2872));
              [v19 setValue:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%d-i-%d", C3DMeshElementGetPrimitiveCount(v11), v18), @"id"}];
              v20 = C3D::Pass::descriptor(v11);
              v21 = *(C3D::PassDescriptor::inputAtIndex(v20, v18) + 8);
              if (v21)
              {
                [v19 setValue:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%s", v21), @"name"}];
              }

              v22 = MEMORY[0x277CCABB0];
              v23 = C3D::Pass::descriptor(v11);
              [v19 setValue:objc_msgSend(v22 forKey:{"numberWithInteger:", *C3D::PassDescriptor::inputAtIndex(v23, v18)), @"type"}];
              [v17 addObject:v19];
              ++v18;
            }

            while (v16 != v18);
          }

          v24 = C3D::Pass::descriptor(v11);
          v25 = C3D::PassDescriptor::outputCount(v24);
          v26 = v25;
          v27 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v25];
          [v53 setValue:v27 forKey:@"outputs"];

          if (v25)
          {
            v28 = 0;
            do
            {
              v29 = objc_alloc_init(*(v2 + 2872));
              [v29 setValue:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%d-o-%d", C3DMeshElementGetPrimitiveCount(v11), v28), @"id"}];
              v30 = C3D::Pass::descriptor(v11);
              v31 = *(C3D::PassDescriptor::outputAtIndex(v30, v28) + 8);
              if (v31)
              {
                [v29 setValue:objc_msgSend(MEMORY[0x277CCACA8] forKey:{"stringWithFormat:", @"%s", v31), @"name"}];
              }

              v32 = MEMORY[0x277CCABB0];
              v33 = C3D::Pass::descriptor(v11);
              [v29 setValue:objc_msgSend(v32 forKey:{"numberWithInteger:", *C3D::PassDescriptor::outputAtIndex(v33, v28)), @"type"}];
              [v27 addObject:v29];
              ++v28;
            }

            while (v26 != v28);
          }

          v34 = *(v10 + 40);
          v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:v34];
          [v53 setValue:v35 forKey:@"links"];

          v36 = 0x277CBE000uLL;
          if (v34)
          {
            for (i = 0; i != v34; ++i)
            {
              v38 = *(v36 + 2656);
              v39 = [MEMORY[0x277CCABB0] numberWithInt:{*(C3D::Array<C3D::RenderGraph::Link, 0u, C3D::ScratchAllocator>::operator[](v10 + 32, i) + 2)}];
              v40 = [MEMORY[0x277CCABB0] numberWithInt:{*C3D::Array<C3D::RenderGraph::Link, 0u, C3D::ScratchAllocator>::operator[](v10 + 32, i) & 0x7FFF}];
              v41 = MEMORY[0x277CCABB0];
              v42 = *(C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v10 + 32, i) + 3);
              v43 = v41;
              v36 = 0x277CBE000;
              [v35 addObject:{objc_msgSend(v38, "arrayWithObjects:", v39, v40, objc_msgSend(v43, "numberWithInt:", v42), 0)}];
            }
          }

          [v50 addObject:v53];
          v8 = v52 + 1;
          v2 = 0x277CBE000;
          v4 = v49;
        }

        while (v52 + 1 != v51);
      }

      v4 = *(v4 + 24);
    }

    while (v4);
  }

  return v45;
}

void C3D::RenderGraph::logFrame(C3D::RenderGraph *this)
{
  v91 = *MEMORY[0x277D85DE8];
  v2 = scn_default_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    LOWORD(v86[0]) = 0;
    _os_log_impl(&dword_21BEF7000, v2, OS_LOG_TYPE_INFO, "Info: ###########################################################################################################", v86, 2u);
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    LOWORD(v86[0]) = 0;
    _os_log_impl(&dword_21BEF7000, v3, OS_LOG_TYPE_INFO, "Info: ################################################ NEW FRAME ################################################", v86, 2u);
  }

  v4 = scn_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v86[0]) = 0;
    _os_log_impl(&dword_21BEF7000, v4, OS_LOG_TYPE_INFO, "Info: ###########################################################################################################\n", v86, 2u);
  }

  v6 = *(this + 12);
  if (v6)
  {
    v7 = 0;
    *&v5 = 67109120;
    v78 = v5;
    *&v5 = 136315138;
    v79 = v5;
    *&v5 = 136315394;
    v83 = v5;
    do
    {
      v81 = *(v6 + 8);
      v8 = scn_default_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v86[0] = v78;
        v86[1] = v7;
        _os_log_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_INFO, "Info: ######################################## STAGE %d ########################################", v86, 8u);
      }

      v77 = v7;
      if (v81)
      {
        v9 = 0;
        v80 = v6;
        do
        {
          v82 = v9;
          v10 = C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::operator[](v6, v9);
          v11 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(this + 3), *v10);
          v12 = *v11;
          v13 = scn_default_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            LOWORD(v86[0]) = 0;
            _os_log_impl(&dword_21BEF7000, v13, OS_LOG_TYPE_INFO, "Info: ", v86, 2u);
          }

          v14 = scn_default_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = (**v12)(v12);
            v86[0] = v79;
            *&v86[1] = v15;
            _os_log_impl(&dword_21BEF7000, v14, OS_LOG_TYPE_INFO, "Info: |---------------------------  %s ---------------------------", v86, 0xCu);
          }

          v16 = C3D::Pass::descriptor(v12);
          v17 = C3D::PassDescriptor::inputCount(v16);
          v85 = v12;
          if (v17)
          {
            v18 = v17;
            v19 = scn_default_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              v86[0] = v78;
              v86[1] = v18;
              _os_log_impl(&dword_21BEF7000, v19, OS_LOG_TYPE_INFO, "Info: |---- %d INPUTS ---- \n", v86, 8u);
            }

            for (i = 0; i != v18; ++i)
            {
              if (*(v11 + 16))
              {
                v21 = 0;
                v22 = 0;
                while (*(C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 8, v21) + 2) != i)
                {
                  v21 = ++v22;
                  if (*(v11 + 16) <= v22)
                  {
                    goto LABEL_27;
                  }
                }

                v23 = *(this + 3);
                v24 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 8, v21);
                v25 = **C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v23, *v24 & 0x7FFF);
                v26 = (*v25)();
                v27 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 8, v21);
                v28 = *(this + 3);
                v29 = *(v27 + 3);
                v30 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 8, v21);
                v31 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v28, *v30 & 0x7FFF);
                v32 = C3D::Pass::descriptor(*v31);
                v33 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 8, v21);
                v34 = C3D::PassDescriptor::outputAtIndex(v32, *(v33 + 3));
                snprintf(v86, 0x200uLL, "linked to : %s slot %d (%s)", v26, v29, *(v34 + 8));
              }

LABEL_27:
              v35 = scn_default_log();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
              {
                v12 = v85;
                v36 = C3D::Pass::descriptor(v85);
                v37 = *(C3D::PassDescriptor::inputAtIndex(v36, i) + 8);
                *buf = v83;
                v88 = v37;
                v89 = 2080;
                v90 = v86;
                _os_log_impl(&dword_21BEF7000, v35, OS_LOG_TYPE_INFO, "Info: |-> %s(%s)", buf, 0x16u);
              }

              else
              {
                v12 = v85;
              }

              v38 = C3D::Pass::descriptor(v12);
              v39 = C3D::PassDescriptor::inputAtIndex(v38, i);
              C3D::RenderGraph::logPassIODescriptor(v39, v39, "  ");
            }

            v40 = scn_default_log();
            if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
            {
              LOWORD(v86[0]) = 0;
              _os_log_impl(&dword_21BEF7000, v40, OS_LOG_TYPE_INFO, "Info: |", v86, 2u);
            }
          }

          v41 = C3D::Pass::descriptor(v12);
          v84 = C3D::PassDescriptor::outputCount(v41);
          if (v84)
          {
            v42 = scn_default_log();
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              v86[0] = v78;
              v86[1] = v84;
              _os_log_impl(&dword_21BEF7000, v42, OS_LOG_TYPE_INFO, "Info: |---- %d OUTPUTS ---- \n", v86, 8u);
            }

            v43 = 0;
            do
            {
              strcpy(v86, "linked to : ");
              if (*(v11 + 40))
              {
                v44 = 0;
                v45 = 0;
                do
                {
                  if (*(C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v44) + 2) == v43)
                  {
                    v46 = *(this + 3);
                    v47 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v44);
                    v48 = **C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v46, *v47 & 0x7FFF);
                    v49 = (*v48)();
                    v50 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v44);
                    v51 = *(this + 3);
                    v52 = *(v50 + 3);
                    v53 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v44);
                    v54 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v51, *v53 & 0x7FFF);
                    v55 = C3D::Pass::descriptor(*v54);
                    v56 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v11 + 32, v44);
                    v57 = C3D::PassDescriptor::inputAtIndex(v55, *(v56 + 3));
                    snprintf(v86, 0x800uLL, "%s %s slot %d (%s)", v86, v49, v52, *(v57 + 8));
                  }

                  v44 = ++v45;
                }

                while (*(v11 + 40) > v45);
              }

              v58 = scn_default_log();
              if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
              {
                v12 = v85;
                v59 = C3D::Pass::descriptor(v85);
                v60 = *(C3D::PassDescriptor::outputAtIndex(v59, v43) + 8);
                *buf = v83;
                v88 = v60;
                v89 = 2080;
                v90 = v86;
                _os_log_impl(&dword_21BEF7000, v58, OS_LOG_TYPE_INFO, "Info: |-> %s(%s)", buf, 0x16u);
              }

              else
              {
                v12 = v85;
              }

              v61 = C3D::Pass::descriptor(v12);
              v62 = C3D::PassDescriptor::outputAtIndex(v61, v43);
              C3D::RenderGraph::logPassIODescriptor(v62, v62, "  ");
              ++v43;
            }

            while (v43 != v84);
          }

          v63 = (**v12)(v12);
          v64 = strlen(v63);
          v65 = v64;
          MEMORY[0x28223BE20](v64);
          v67 = &v76[-v66];
          if (v68)
          {
            memset(&v76[-v66], 45, v65);
          }

          v67[v65] = 0;
          v69 = scn_default_log();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v86[0] = v79;
            *&v86[1] = v67;
            _os_log_impl(&dword_21BEF7000, v69, OS_LOG_TYPE_INFO, "Info: |----------------------------%s----------------------------", v86, 0xCu);
          }

          v70 = scn_default_log();
          if (os_log_type_enabled(v70, OS_LOG_TYPE_INFO))
          {
            LOWORD(v86[0]) = 0;
            _os_log_impl(&dword_21BEF7000, v70, OS_LOG_TYPE_INFO, "Info: ", v86, 2u);
          }

          v9 = v82 + 1;
          v6 = v80;
        }

        while (v82 + 1 != v81);
      }

      v6 = *(v6 + 24);
      v71 = scn_default_log();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
      {
        LOWORD(v86[0]) = 0;
        _os_log_impl(&dword_21BEF7000, v71, OS_LOG_TYPE_INFO, "Info: ", v86, 2u);
      }

      v72 = scn_default_log();
      v73 = os_log_type_enabled(v72, OS_LOG_TYPE_INFO);
      v74 = v77;
      if (v73)
      {
        LOWORD(v86[0]) = 0;
        _os_log_impl(&dword_21BEF7000, v72, OS_LOG_TYPE_INFO, "Info: ", v86, 2u);
      }

      v7 = v74 + 1;
    }

    while (v6);
  }

  v75 = scn_default_log();
  if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
  {
    LOWORD(v86[0]) = 0;
    _os_log_impl(&dword_21BEF7000, v75, OS_LOG_TYPE_INFO, "Info: \n\n\n", v86, 2u);
  }
}

uint64_t ___ZN3C3D11RenderGraph7executeEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2 != (v1 + 16))
    {
      free(v2);
    }

    JUMPOUT(0x21CF07610);
  }

  return result;
}

uint64_t C3D::RenderGraph::getPredecessors@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(a4, a3);
  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a2);
  result = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), PrimitiveCount);
  v9 = *(result + 16);
  if (v9)
  {
    v10 = *(result + 24);
    v11 = &v10[v9];
    do
    {
      result = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), *v10 & 0x7FFF);
      v12 = *(a4 + 8);
      if (v12)
      {
        v13 = 8 * v12;
        v14 = *(a4 + 16);
        while (*v14 != *result)
        {
          ++v14;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        v14 = *(a4 + 16);
      }

      if (v14 == (*(a4 + 16) + 8 * v12))
      {
LABEL_10:
        result = C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(a4, result);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t C3D::RenderGraph::getSuccessors@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(a4, a3);
  PrimitiveCount = C3DMeshElementGetPrimitiveCount(a2);
  result = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), PrimitiveCount);
  v9 = *(result + 40);
  if (v9)
  {
    v10 = *(result + 48);
    v11 = &v10[v9];
    do
    {
      result = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), *v10 & 0x7FFF);
      v12 = *(a4 + 8);
      if (v12)
      {
        v13 = 8 * v12;
        v14 = *(a4 + 16);
        while (*v14 != *result)
        {
          ++v14;
          v13 -= 8;
          if (!v13)
          {
            goto LABEL_10;
          }
        }
      }

      else
      {
        v14 = *(a4 + 16);
      }

      if (v14 == (*(a4 + 16) + 8 * v12))
      {
LABEL_10:
        result = C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(a4, result);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  return result;
}

uint64_t C3D::RenderGraph::getTextureNamed(C3D::RenderGraph *this, const char *__s)
{
  if (!__s)
  {
    return 0;
  }

  v2 = __s;
  v3 = *(this + 17);
  v4 = strlen(__s);
  v5 = 0xC6A4A7935BD1E995 * v4;
  if (v4 >= 8)
  {
    v6 = v4 >> 3;
    v7 = &v2[8 * v6];
    v8 = 8 * v6;
    do
    {
      v9 = *v2;
      v2 += 8;
      v5 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v9) ^ ((0xC6A4A7935BD1E995 * v9) >> 47))) ^ v5);
      v8 -= 8;
    }

    while (v8);
    v2 = v7;
  }

  v10 = v4 & 7;
  if (v10 > 3)
  {
    if ((v4 & 7) > 5)
    {
      if (v10 != 6)
      {
        v5 ^= *(v2 + 6) << 48;
      }

      v5 ^= *(v2 + 5) << 40;
    }

    else if (v10 == 4)
    {
      goto LABEL_20;
    }

    v5 ^= *(v2 + 4) << 32;
LABEL_20:
    v5 ^= *(v2 + 3) << 24;
LABEL_21:
    v5 ^= *(v2 + 2) << 16;
    goto LABEL_22;
  }

  if ((v4 & 7) <= 1)
  {
    if ((v4 & 7) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  if (v10 != 2)
  {
    goto LABEL_21;
  }

LABEL_22:
  v5 ^= *(v2 + 1) << 8;
LABEL_23:
  v5 = 0xC6A4A7935BD1E995 * (v5 ^ *v2);
LABEL_24:
  v12 = (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47);
  v13 = (*(v3 + 36) - 1) & v12;
  v14 = *(*(v3 + 24) + 2 * v13);
  if (v14 < 2)
  {
    return 0;
  }

  while ((v14 & 2) == 0 || v12 != *(*(v3 + 8) + 8 * v13))
  {
    ++v13;
    v15 = v14 >= 4;
    v14 >>= 1;
    if (!v15)
    {
      return 0;
    }
  }

  v16 = *(v3 + 16);
  if (v16)
  {
    return *(v16 + 8 * v13);
  }

  else
  {
    return 0;
  }
}

void *C3D::RenderGraph::requestFrameRecording(void *result, void *a2, void *a3)
{
  if (!result[21])
  {
    v4 = result;
    result[21] = [a3 copy];
    result = v4[22];
    if (result != a2)
    {
      if (result)
      {
        CFRelease(result);
        v4[22] = 0;
      }

      if (a2)
      {
        result = CFRetain(a2);
      }

      else
      {
        result = 0;
      }

      v4[22] = result;
    }
  }

  return result;
}

uint64_t C3D::RenderGraph::addPass(C3D::RenderGraph *this, C3D::Pass *a2)
{
  if (!a2)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3D::RenderGraph::addPass(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v13 = *(this + 2);
  v12 = *(this + 3);
  v14 = *(v12 + 8);
  *(a2 + 26) = v14;
  *(a2 + 3) = this;
  v16 = a2;
  C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(&v17, v13);
  C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::Array(&v18, v13);
  C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::GraphNode>(v12, &v16);
  if (v14 >= 0x7FFF)
  {
    C3D::RenderGraph::addPass();
  }

  return v14;
}

void *C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::GraphNode>(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  if (v4 + 1 > *(a1 + 12))
  {
    C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::GrowCapacityBy(a1, 1, 0);
    v4 = *(a1 + 8);
  }

  result = C3D::RenderGraph::GraphNode::GraphNode((*(a1 + 16) + 56 * v4), a2);
  ++*(a1 + 8);
  return result;
}

uint64_t C3D::RenderGraph::outputTextureUsageForPass(C3D::RenderGraph *this, const C3D::Pass *a2, const C3D::PassIODescriptor *a3)
{
  if (*(this + 21))
  {
    return 7;
  }

  v4 = *(a3 + 26);
  v5 = *C3D::Pass::descriptor(a2);
  v6 = v4 | 4;
  if (v5 != 2)
  {
    v6 = v4;
  }

  if (v5 == 3)
  {
    return v4 | 2;
  }

  else
  {
    return v6;
  }
}

uint64_t C3D::RenderGraph::computeResourceUsageForOutputDescriptor(uint64_t this, const C3D::Pass **a2, C3D::PassIODescriptor *a3, uint64_t a4, int a5)
{
  if (a5)
  {
    LOBYTE(v7) = 0;
    *(a3 + 26) = 0;
    goto LABEL_10;
  }

  v8 = a2;
  v9 = this;
  v10 = *a2;
  if ((*(a3 + 33) & 8) != 0)
  {
    this = C3D::RenderGraph::outputTextureUsageForPass(this, v10, a3);
    *(a3 + 26) = this;
    LOBYTE(v7) = this;
    if (!a4)
    {
      return this;
    }

    goto LABEL_10;
  }

  v11 = C3D::Pass::descriptor(v10);
  if (C3D::PassDescriptor::outputCount(v11))
  {
    v12 = 0;
    LOBYTE(v13) = 0;
    do
    {
      v14 = C3D::Pass::descriptor(*v8);
      if (C3D::PassDescriptor::outputAtIndex(v14, v12) == a3)
      {
        break;
      }

      LOBYTE(v13) = v13 + 1;
      v15 = C3D::Pass::descriptor(*v8);
      v12 = v13;
    }

    while (C3D::PassDescriptor::outputCount(v15) > v13);
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  StackAllocator = C3DEngineContextGetStackAllocator(v9[1]);
  v7 = 0;
LABEL_14:
  v17 = C3D::Pass::descriptor(*v8);
  v18 = C3D::PassDescriptor::outputAtIndex(v17, v13);
  v19 = C3D::RenderGraph::outputTextureUsageForPass(v9, *v8, v18);
  this = C3D::RenderGraph::GraphNode::successorsAtIndex(v8, v13, StackAllocator, &v26);
  v7 |= v19;
  if (v27)
  {
    v20 = v28;
    v21 = &v28[v27];
    do
    {
      while (1)
      {
        v13 = HIBYTE(*v20);
        v8 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](v9[3], *v20 & 0x7FFF);
        v22 = C3D::Pass::descriptor(*v8);
        this = C3D::PassDescriptor::inputAtIndex(v22, v13);
        if ((*(this + 66) & 0x80) == 0)
        {
          break;
        }

        if (++v20 == v21)
        {
          goto LABEL_14;
        }
      }

      if (v9[21])
      {
        v23 = 7;
      }

      else
      {
        v24 = *v8;
        v25 = *(this + 26);
        this = C3D::Pass::descriptor(v24);
        v23 = v25 | ((*this - 1) < 4);
      }

      v7 |= v23;
      ++v20;
    }

    while (v20 != v21);
  }

  *(a3 + 26) = v7;
  if (a4)
  {
LABEL_10:
    *(a4 + 26) = v7;
  }

  return this;
}

uint64_t C3D::RenderGraph::createResource(C3D::RenderGraph *this, C3D::PassIODescriptor *a2, C3D::PassIODescriptor *a3, char a4, int a5, int a6)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 1));
  v13 = [(SCNMTLRenderContext *)RenderContext frameConstantBufferPool];
  v14 = [(SCNMTLRenderContext *)RenderContext frameTexturePool];
  C3D::Array<C3D::RefCountedResource,0u,C3D::ScratchAllocator>::emplace_back(*(this + 18));
  v15 = C3D::Array<C3D::RefCountedResource,0u,C3D::ScratchAllocator>::back(*(this + 18));
  v16 = *a2;
  *(v15 + 32) = v16;
  if (a6)
  {
    v17 = [(SCNMTLRenderContext *)RenderContext device];
    if (SCNMTLDeviceSupportsMemorylessStorage(v17))
    {
      *(a2 + 25) = 3;
    }

    v16 = *a2;
  }

  if (v16 == 2)
  {
    SCNMTLBufferPool::allocate(v13, *(a2 + 2), &v109);
    *v15 = v109;
    *(v15 + 16) = v110;
    if (!*(v15 + 8))
    {
      v18 = scn_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
      {
        C3D::RenderGraph::createResource(v18, v19, v20, v21, v22, v23, v24, v25);
      }
    }

    goto LABEL_28;
  }

  if ((a4 & 1) == 0 && (a5 & 1) == 0)
  {
    *(a2 + 8) = 0;
    v109 = *(a2 + 1);
    LODWORD(v110) = 0;
    v26 = SCNMTLTexturePool::allocate(v14, &v109, 0, 0);
    *v15 = v26;
    if (!v26)
    {
      v27 = scn_default_log();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        C3D::RenderGraph::createResource(v27, v28, v29, v30, v31, v32, v33, v34);
      }
    }

    goto LABEL_28;
  }

  if ((a4 & 1) == 0)
  {
    if (*(a2 + 64) != 1)
    {
      v45 = scn_default_log();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_FAULT))
      {
        C3D::RenderGraph::createResource(v45, v46, v47, v48, v49, v50, v51, v52);
      }
    }

    *v15 = 0;
    v44 = *(v15 + 34) | 2;
    goto LABEL_27;
  }

  if (a5)
  {
    if (!*(this + 21))
    {
      *(a2 + 26) = 4;
    }

    *(a2 + 8) = 0;
    v109 = *(a2 + 1);
    LODWORD(v110) = 0;
    v35 = SCNMTLTexturePool::allocate(v14, &v109, 0, 0);
    *v15 = v35;
    if (!v35)
    {
      v36 = scn_default_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_FAULT))
      {
        C3D::RenderGraph::createResource(v36, v37, v38, v39, v40, v41, v42, v43);
      }
    }

    if (*(a2 + 64) == 1)
    {
      *(v15 + 24) = 0;
      v44 = *(v15 + 34) | 4;
LABEL_27:
      *(v15 + 34) = v44;
      goto LABEL_28;
    }

    if (*(a3 + 31) >= 2u)
    {
      v93 = scn_default_log();
      if (os_log_type_enabled(v93, OS_LOG_TYPE_FAULT))
      {
        C3D::RenderGraph::createResource(v93, v94, v95, v96, v97, v98, v99, v100);
      }
    }

    if (SCNMTLTextureTypeIsMultisampled(*(a3 + 24)))
    {
      v101 = scn_default_log();
      if (os_log_type_enabled(v101, OS_LOG_TYPE_FAULT))
      {
        C3D::RenderGraph::createResource(v101, v102, v103, v104, v105, v106, v107, v108);
      }
    }

    *(a3 + 8) = 1;
    v109 = *(a3 + 1);
    LODWORD(v110) = *(a3 + 8);
    *(v15 + 24) = SCNMTLTexturePool::allocate(v14, &v109, 0, 0);
  }

  else
  {
    *(a2 + 8) = 0;
    v109 = *(a2 + 1);
    LODWORD(v110) = 0;
    v75 = SCNMTLTexturePool::allocate(v14, &v109, 0, 0);
    *v15 = v75;
    if (!v75)
    {
      v76 = scn_default_log();
      if (os_log_type_enabled(v76, OS_LOG_TYPE_FAULT))
      {
        C3D::RenderGraph::createResource(v76, v77, v78, v79, v80, v81, v82, v83);
      }
    }

    *(a3 + 8) = 1;
    v109 = *(a3 + 1);
    LODWORD(v110) = 1;
    v84 = SCNMTLTexturePool::allocate(v14, &v109, 0, 0);
    *(v15 + 24) = v84;
    if (!v84)
    {
      v85 = scn_default_log();
      if (os_log_type_enabled(v85, OS_LOG_TYPE_FAULT))
      {
        C3D::RenderGraph::createResource(v85, v86, v87, v88, v89, v90, v91, v92);
      }
    }
  }

LABEL_28:
  v53 = *(a2 + 33);
  if ((v53 & 0x10) == 0)
  {
    goto LABEL_51;
  }

  v54 = *(this + 17);
  v55 = *(a2 + 1);
  v56 = strlen(v55);
  v57 = 0xC6A4A7935BD1E995 * v56;
  if (v56 >= 8)
  {
    v58 = v56 >> 3;
    v59 = &v55[8 * v58];
    v60 = 8 * v58;
    do
    {
      v61 = *v55;
      v55 += 8;
      v57 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v61) ^ ((0xC6A4A7935BD1E995 * v61) >> 47))) ^ v57);
      v60 -= 8;
    }

    while (v60);
    v55 = v59;
  }

  v62 = v56 & 7;
  if (v62 > 3)
  {
    if ((v56 & 7) > 5)
    {
      if (v62 != 6)
      {
        v57 ^= *(v55 + 6) << 48;
      }

      v57 ^= *(v55 + 5) << 40;
    }

    else if (v62 == 4)
    {
      goto LABEL_46;
    }

    v57 ^= *(v55 + 4) << 32;
LABEL_46:
    v57 ^= *(v55 + 3) << 24;
LABEL_47:
    v57 ^= *(v55 + 2) << 16;
    goto LABEL_48;
  }

  if ((v56 & 7) <= 1)
  {
    if ((v56 & 7) == 0)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v62 != 2)
  {
    goto LABEL_47;
  }

LABEL_48:
  v57 ^= *(v55 + 1) << 8;
LABEL_49:
  v57 = 0xC6A4A7935BD1E995 * (v57 ^ *v55);
LABEL_50:
  v63 = (0xC6A4A7935BD1E995 * (v57 ^ (v57 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v57 ^ (v57 >> 47))) >> 47);
  *&v109 = C3D::RefCountedResource::textureOrFinal(v15, RenderContext);
  C3D::Hash<objc_object  {objcproto10MTLTexture}*,C3D::ScratchAllocator>::insert(v54, v63, &v109);
  v53 = *(a2 + 33);
LABEL_51:
  if ((v53 & 0x20) != 0)
  {
    v64 = *(this + 17);
    v65 = *(a2 + 1);
    v66 = strlen(v65);
    v67 = 0xC6A4A7935BD1E995 * v66;
    if (v66 >= 8)
    {
      v68 = v66 >> 3;
      v69 = &v65[8 * v68];
      v70 = 8 * v68;
      do
      {
        v71 = *v65;
        v65 += 8;
        v67 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v71) ^ ((0xC6A4A7935BD1E995 * v71) >> 47))) ^ v67);
        v70 -= 8;
      }

      while (v70);
      v65 = v69;
    }

    v72 = v66 & 7;
    if (v72 <= 3)
    {
      if ((v66 & 7) <= 1)
      {
        if ((v66 & 7) == 0)
        {
          goto LABEL_73;
        }

        goto LABEL_72;
      }

      if (v72 == 2)
      {
LABEL_71:
        v67 ^= *(v65 + 1) << 8;
LABEL_72:
        v67 = 0xC6A4A7935BD1E995 * (v67 ^ *v65);
LABEL_73:
        v73 = (0xC6A4A7935BD1E995 * (v67 ^ (v67 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v67 ^ (v67 >> 47))) >> 47);
        *&v109 = C3D::RefCountedResource::resolveTextureOrFinal(v15, RenderContext);
        C3D::Hash<objc_object  {objcproto10MTLTexture}*,C3D::ScratchAllocator>::insert(v64, v73, &v109);
        return v15;
      }

LABEL_70:
      v67 ^= *(v65 + 2) << 16;
      goto LABEL_71;
    }

    if ((v66 & 7) > 5)
    {
      if (v72 != 6)
      {
        v67 ^= *(v65 + 6) << 48;
      }

      v67 ^= *(v65 + 5) << 40;
    }

    else if (v72 == 4)
    {
      goto LABEL_69;
    }

    v67 ^= *(v65 + 4) << 32;
LABEL_69:
    v67 ^= *(v65 + 3) << 24;
    goto LABEL_70;
  }

  return v15;
}

uint64_t C3D::Array<C3D::RefCountedResource,0u,C3D::ScratchAllocator>::emplace_back(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = *(a1 + 16);
  if (v2 + 1 > v3)
  {
    v5 = ((v3 + 1) * 1.5);
    Aligned = C3DScratchAllocatorAllocateAligned(*a1, 40 * v5, 8, 0);
    memcpy(Aligned, v4, 40 * *(a1 + 8));
    *(a1 + 16) = Aligned;
    *(a1 + 12) = v5;
    v4 = Aligned;
    v2 = *(a1 + 8);
  }

  result = C3D::RefCountedResource::RefCountedResource(v4 + 40 * v2);
  ++*(a1 + 8);
  return result;
}

uint64_t C3D::Array<C3D::RefCountedResource,0u,C3D::ScratchAllocator>::back(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::RefCountedResource,0u,C3D::ScratchAllocator>::back(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16) + 40 * *(a1 + 8) - 40;
}

uint64_t C3D::Hash<objc_object  {objcproto10MTLTexture}*,C3D::ScratchAllocator>::insert(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 16) + 8 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    C3D::Hash<objc_object  {objcproto10MTLTexture}*,C3D::ScratchAllocator>::_grow(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + 8 * v10) = *a3;
  return result;
}

uint64_t C3D::RenderGraph::clearAllDirtyBits(uint64_t result, int a2)
{
  v2 = *(result + 24);
  v3 = *(v2 + 8);
  if (v3)
  {
    v4 = *(v2 + 16);
    v5 = v4 + 56 * v3;
    do
    {
      v6 = 1;
      do
      {
        if ((v6 & a2) != 0)
        {
          if (v6 == 1)
          {
            v7 = 8;
          }

          else
          {
            v7 = 32;
          }

          v8 = v4 + v7;
          v9 = *(v8 + 8);
          if (v9)
          {
            v10 = *(v8 + 16);
            v11 = 4 * v9;
            do
            {
              *v10++ &= ~0x8000u;
              v11 -= 4;
            }

            while (v11);
          }
        }
      }

      while (v6++ < 2);
      v4 += 56;
    }

    while (v4 != v5);
  }

  return result;
}

_DWORD *C3D::Array<unsigned short,0u,C3D::ScratchAllocator>::push_back<unsigned short &>(_DWORD *result, _WORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = v4 + 1;
  v7 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v8 = ((v5 + 1) * 1.5);
    Aligned = C3DScratchAllocatorAllocateAligned(*result, 2 * v8, 2, 0);
    result = memcpy(Aligned, v7, 2 * v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v8;
    v4 = v3[2];
    v6 = v4 + 1;
    v7 = Aligned;
  }

  *(v7 + v4) = *a2;
  v3[2] = v6;
  return result;
}

_DWORD *C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::push_back<C3D::RenderGraph::Link const&>(_DWORD *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = C3DScratchAllocatorAllocateAligned(*result, 4 * v7, 4, 0);
    result = memcpy(Aligned, v6, 4 * v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v7;
    v6 = Aligned;
    v4 = v3[2];
  }

  *(v6 + v4) = *a2;
  ++v3[2];
  return result;
}

uint64_t C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    if (!*a1)
    {
      v4 = scn_default_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=(v4, v5, v6, v7, v8, v9, v10, v11);
      }
    }

    v12 = *(a2 + 12);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 12) = v12;
    if (*(a1 + 16) != a1 + 24)
    {
      *(a1 + 16) = a1 + 24;
    }

    v13 = *(a2 + 16);
    if (v13 == a2 + 24)
    {
      if (v12)
      {
        v14 = scn_default_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
        {
          C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=(v14, v15, v16, v17, v18, v19, v20, v21);
        }
      }

      if (*(a2 + 12))
      {
        v22 = scn_default_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=(v22, v23, v24, v25, v26, v27, v28, v29);
        }
      }

      memcpy((a1 + 24), (a2 + 24), 4 * *(a2 + 8));
    }

    else
    {
      *(a1 + 16) = v13;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = a2 + 24;
  }

  return a1;
}

uint64_t C3D::Array<C3D::RenderGraph::GraphNode *,0u,C3D::StackAllocator>::back(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::RefCountedResource,0u,C3D::ScratchAllocator>::back(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 16) + 8 * *(a1 + 8) - 8;
}

void C3D::Array<C3D::RenderGraph::GraphNode *,0u,C3D::StackAllocator>::pop_back(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::RenderGraph::GraphNode *,0u,C3D::StackAllocator>::pop_back(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  --*(a1 + 8);
}

_DWORD *C3D::Array<C3D::Pass *,0u,C3D::ScratchAllocator>::push_back<C3D::Pass *&>(_DWORD *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = v4 + 1;
  v7 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v8 = ((v5 + 1) * 1.5);
    Aligned = C3DScratchAllocatorAllocateAligned(*result, 8 * v8, 8, 0);
    result = memcpy(Aligned, v7, 8 * v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v8;
    v4 = v3[2];
    v6 = v4 + 1;
    v7 = Aligned;
  }

  *(v7 + v4) = *a2;
  v3[2] = v6;
  return result;
}

_DWORD *C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::push_back<C3D::RenderGraph::PortsPair&>(_DWORD *result, _WORD *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = C3DStackAllocatorAllocateAligned(*result, 2 * v7, 1, 0);
    result = memcpy(Aligned, v6, 2 * v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v7;
    v6 = Aligned;
    v4 = v3[2];
  }

  *(v6 + v4) = *a2;
  ++v3[2];
  return result;
}

_DWORD *C3D::Array<unsigned char,16u,C3D::StackAllocator>::push_back<unsigned char>(_DWORD *result, _BYTE *a2)
{
  v3 = result;
  v4 = result[2];
  v5 = result[3];
  v6 = *(result + 2);
  if (v4 + 1 > v5)
  {
    v7 = ((v5 + 1) * 1.5);
    Aligned = C3DStackAllocatorAllocateAligned(*result, v7, 1, 0);
    result = memcpy(Aligned, v6, v3[2]);
    *(v3 + 2) = Aligned;
    v3[3] = v7;
    v6 = Aligned;
    v4 = v3[2];
  }

  *(v6 + v4) = *a2;
  ++v3[2];
  return result;
}

void C3D::RenderGraph::freeConsumedResources(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v28[5] = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = *(a2 + 24);
    v7 = 4 * v3;
    do
    {
      v8 = *v6;
      v9 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), *v6 & 0x7FFF);
      v10 = HIBYTE(v8);
      v11 = C3D::PassDescriptor::outputAtIndex((*v9 + 32), v10);
      if ((*(v11 + 66) & 0x100) == 0)
      {
        v12 = v11;
        v13 = C3D::Pass::resource(*v9);
        v14 = C3D::PassResource::outputAtIndex(v13, v10);
        if (v14)
        {
          v15 = v14;
          if ((*(v14 + 34) & 1) == 0)
          {
            v16 = *(v14 + 33) - 1;
            *(v14 + 33) = v16;
            if (v16 < 0)
            {
              v17 = scn_default_log();
              if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
              {
                C3D::RenderGraph::allocateResources(v27, v28, v17);
              }

              v16 = *(v15 + 33);
            }

            if (!v16)
            {
              v18 = *v12;
              if (v18 == 2)
              {
                if (!*(v15 + 8))
                {
                  v22 = scn_default_log();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
                  {
                    C3D::RenderGraph::allocateResources(v23, &v24, v22);
                  }
                }

                *v15 = 0;
                *(v15 + 8) = 0;
                *(v15 + 16) = 0;
              }

              else if (v18 == 1)
              {
                v19 = *(v15 + 34);
                if ((v19 & 1) == 0)
                {
                  if ((*(v15 + 34) & 2) == 0)
                  {
                    if (!*v15)
                    {
                      v20 = scn_default_log();
                      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
                      {
                        C3D::RenderGraph::allocateResources(v25, &v26, v20);
                      }
                    }

                    SCNMTLTexturePool::free(a3, *v15);
                    v19 = *(v15 + 34);
                  }

                  if ((v19 & 4) == 0)
                  {
                    v21 = *(v15 + 24);
                    if (v21)
                    {
                      SCNMTLTexturePool::free(a3, v21);
                    }
                  }
                }
              }
            }
          }
        }
      }

      ++v6;
      v7 -= 4;
    }

    while (v7);
  }
}

uint64_t C3D::RenderGraph::lastNodeUsingResourceAtIndex(uint64_t result, _BYTE *a2, unsigned int a3, unsigned int a4, C3D::Pass ***a5, uint64_t *a6, BOOL *a7, BOOL *a8)
{
  if (*a2 == 1)
  {
    v29 = v8;
    v30 = v9;
    v14 = result;
    StackAllocator = C3DEngineContextGetStackAllocator(*(result + 8));
    v16 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(v14 + 24), a3);
    if (C3D::PassDescriptor::outputCount((*v16 + 32)) <= a4)
    {
      v17 = 0;
      LOBYTE(v18) = a4;
    }

    else
    {
      v17 = 0;
      LOBYTE(v18) = a4;
      do
      {
        if ((*(C3D::Pass::outputBufferParameterAtIndex(*v16, v18) + 66) & 0x80) == 0)
        {
          break;
        }

        C3D::RenderGraph::GraphNode::successorsAtIndex(v16, v18, StackAllocator, &v27);
        if (!v28)
        {
          break;
        }

        v18 = HIBYTE(*C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v27, 0));
        v19 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](&v27, 0);
        v16 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(v14 + 24), *v19 & 0x7FFF);
        v17 = C3D::PassDescriptor::inputAtIndex((*v16 + 32), v18);
      }

      while (C3D::PassDescriptor::outputCount((*v16 + 32)) > v18);
    }

    result = C3D::PassDescriptor::inputCount((*v16 + 32));
    if (result > v18)
    {
      v20 = a2[31];
      result = C3D::PassDescriptor::inputAtIndex((*v16 + 32), v18);
      *a7 = v20 != *(result + 31);
    }

    v22 = *(*v16 + 8) == 5 && a2[64] == 1;
    *a8 = v22;
    *a5 = v16;
    if (!v17)
    {
      v23 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(v14 + 24), a3);
      result = C3D::PassDescriptor::inputAtIndex((*v23 + 32), a4);
      v17 = result;
    }

    *a6 = v17;
  }

  return result;
}

uint64_t C3D::RenderGraph::propagateReadWriteResources(uint64_t a1, C3D::Pass **a2, unsigned int a3, unsigned __int8 a4, C3D::RefCountedResource *a5)
{
  v9 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), a3);
  result = C3DEngineContextGetStackAllocator(*(a1 + 8));
  if (v9 != a2)
  {
    v11 = result;
    do
    {
      result = C3D::PassDescriptor::inputAtIndex((*v9 + 32), a4);
      if ((*(result + 66) & 0x80) == 0)
      {
        break;
      }

      v12 = C3D::Pass::resource(*v9);
      C3D::PassResource::setInputAtIndex(v12, a5, a4);
      ++*(a5 + 33);
      C3D::RenderGraph::GraphNode::successorsAtIndex(v9, a4, v11, v14);
      a4 = *(C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v14, 0) + 3);
      v13 = C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator[](v14, 0);
      result = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), *v13 & 0x7FFF);
      v9 = result;
    }

    while (result != a2);
  }

  return result;
}

double C3D::RenderGraph::clearDrawable(C3D::RenderGraph *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 1));
  if ([(SCNMTLRenderContext *)RenderContext layerTarget])
  {
    C3D::SetupDefaultRenderPassDescriptor(*(this + 1), *(this + 19), 1);
    v4 = [(SCNMTLRenderContext *)RenderContext currentCommandBuffer];
    v5 = [(SCNMTLRenderContext *)RenderContext frameConstantBufferPool];
    v6 = *(this + 19);
    bzero(&v7, 0xD70uLL);
    LODWORD(v7.var14[0].var1) = 1;
    LOBYTE(v7.var14[1].var0) = 1;
    v7.var24[0] = v4;
    v7.var24[1] = [v4 renderCommandEncoderWithDescriptor:v6];
    v7.var25[0] = v5;
    [v7.var24[1] setLabel:@"Clear drawable"];
    memset(&v7.var1, 0, 32);
    return SCNMTLRenderCommandEncoder::endEncoding(&v7);
  }

  return result;
}

void C3D::RenderGraph::spriteKitTransitionBegin(C3D::RenderGraph *this, MTLRenderPassDescriptor *a2)
{
  C3D::SetupDefaultRenderPassDescriptor(*(this + 1), *(this + 19), a2);
  RenderContext = C3DEngineContextGetRenderContext(*(this + 1));
  [(SCNMTLRenderContext *)RenderContext currentCommandBuffer];
  [(SCNMTLRenderContext *)RenderContext frameConstantBufferPool];
  operator new();
}

void C3D::RenderGraph::spriteKitTransitionEnd(C3D::RenderGraph *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 1));
  v2 = [(SCNMTLRenderContext *)RenderContext renderEncoder];
  if (v2)
  {
    SCNMTLRenderCommandEncoder::endEncoding(v2);
    [(SCNMTLRenderContext *)RenderContext endRenderPass];

    JUMPOUT(0x21CF07610);
  }

  v3 = scn_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    C3D::RenderGraph::spriteKitTransitionEnd(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  SCNMTLRenderCommandEncoder::endEncoding(0);
  [(SCNMTLRenderContext *)RenderContext endRenderPass];
}

void C3D::RenderGraph::logDependencyInputMismatch(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5)
{
  v75 = *MEMORY[0x277D85DE8];
  StackAllocator = C3DEngineContextGetStackAllocator(*(a1 + 8));
  if (a4 == 255 && a5 != 255)
  {
    v10 = C3D::PassDescriptor::outputAtIndex((*a3 + 32), a5);
    C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(buf, StackAllocator);
    v11 = *(a2 + 16);
    if (v11)
    {
      v12 = *(a2 + 24);
      v13 = 4 * v11;
      do
      {
        if ((~*v12 & 0xFF0000) != 0)
        {
          v64 = BYTE2(*v12);
          C3D::Array<unsigned char,16u,C3D::StackAllocator>::push_back<unsigned char>(buf, &v64);
        }

        ++v12;
        v13 -= 4;
      }

      while (v13);
    }

    LOBYTE(a4) = 0;
    while (C3D::PassDescriptor::inputCount((*a2 + 32)) > a4)
    {
      v14 = *(C3D::PassDescriptor::inputAtIndex((*a2 + 32), a4) + 64);
      v15 = *(v10 + 64);
      v16 = (*&__n_6[2] + HIDWORD(v66));
      v17 = memchr(*&__n_6[2], a4, HIDWORD(v66));
      if (v17)
      {
        v18 = v17 == v16;
      }

      else
      {
        v18 = 1;
      }

      v19 = !v18;
      if (v14 == v15 && v19 == 0)
      {
        goto LABEL_22;
      }

      LOBYTE(a4) = a4 + 1;
    }

    LOBYTE(a4) = -1;
  }

LABEL_22:
  v21 = a4;
  if (a5 == 255 && a4 != 0xFF)
  {
    v22 = C3D::PassDescriptor::inputAtIndex((*a2 + 32), a4);
    C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(buf, StackAllocator);
    v23 = *(a3 + 40);
    if (v23)
    {
      v24 = *(a3 + 48);
      v25 = 4 * v23;
      do
      {
        if ((~*v24 & 0xFF0000) != 0)
        {
          v64 = BYTE2(*v24);
          C3D::Array<unsigned char,16u,C3D::StackAllocator>::push_back<unsigned char>(buf, &v64);
        }

        ++v24;
        v25 -= 4;
      }

      while (v25);
    }

    LOBYTE(a5) = 0;
    while (C3D::PassDescriptor::outputCount((*a3 + 32)) > a5)
    {
      v26 = *(C3D::PassDescriptor::outputAtIndex((*a3 + 32), a5) + 64);
      v27 = *(v22 + 64);
      v28 = (*&__n_6[2] + HIDWORD(v66));
      v29 = memchr(*&__n_6[2], a5, HIDWORD(v66));
      if (v29)
      {
        v30 = v29 == v28;
      }

      else
      {
        v30 = 1;
      }

      v31 = !v30;
      if (v26 == v27 && v31 == 0)
      {
        goto LABEL_43;
      }

      LOBYTE(a5) = a5 + 1;
    }

    LOBYTE(a5) = -1;
  }

LABEL_43:
  if (v21 != 255 && a5 != 0xFF)
  {
    v33 = C3D::PassDescriptor::inputAtIndex((*a2 + 32), v21);
    v34 = a5;
    v35 = C3D::PassDescriptor::outputAtIndex((*a3 + 32), a5);
    if (!C3D::PassIODescriptor::isCompatible(v35, v33))
    {
      if ((C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
      {
        C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
        v36 = scn_default_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v60 = (***a3)();
          if (*(v35 + 1))
          {
            v61 = *(v35 + 1);
          }

          else
          {
            v61 = "";
          }

          v62 = (***a2)();
          v63 = *(v33 + 1);
          if (!v63)
          {
            v63 = "";
          }

          *buf = 136316418;
          v66 = v60;
          __n_4 = 1024;
          *__n_6 = v34;
          *&__n_6[4] = 2080;
          *&__n_6[6] = v61;
          v69 = 2080;
          v70 = v62;
          v71 = 1024;
          v72 = v21;
          v73 = 2080;
          v74 = v63;
          _os_log_error_impl(&dword_21BEF7000, v36, OS_LOG_TYPE_ERROR, "Error: Dependency issue between source %s[%d]:%s and destination %s[%d]:%s", buf, 0x36u);
        }
      }

      v37 = *v33;
      if (v37 != *v35 && (C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
      {
        C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
        v38 = scn_default_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          C3D::RenderGraph::logDependencyInputMismatch();
        }

        v37 = *v33;
      }

      if (v37 == 1)
      {
        v39 = *(v35 + 8);
        v40 = *(v33 + 8);
        if (v39 != v40 && (v40 + v39) >= 2 && (C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
        {
          C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
          v41 = scn_default_log();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            C3D::RenderGraph::logDependencyInputMismatch();
          }
        }

        v42 = *(v35 + 9);
        v43 = *(v33 + 9);
        if (v42 != v43 && (v43 + v42) >= 2 && (C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
        {
          C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
          v44 = scn_default_log();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            C3D::RenderGraph::logDependencyInputMismatch();
          }
        }

        v45 = *(v35 + 10);
        v46 = *(v33 + 10);
        if (v45 != v46 && (v46 + v45) >= 2 && (C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
        {
          C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
          v47 = scn_default_log();
          if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
          {
            C3D::RenderGraph::logDependencyInputMismatch();
          }
        }

        v48 = v35[24];
        v49 = v33[24];
        if (SCNMTLTextureTypeIsMultisampled(v48))
        {
          v50 = SCNMTLTextureTypeNonMultisampledEquivalent(v48);
          if (v50 != SCNMTLTextureTypeNonMultisampledEquivalent(v49) && (C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
          {
            C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
            v51 = scn_default_log();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              C3D::RenderGraph::logDependencyInputMismatch();
            }
          }
        }

        else if (v48 != v49 && (C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
        {
          C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
          v52 = scn_default_log();
          if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
          {
            C3D::RenderGraph::logDependencyInputMismatch();
          }
        }

        if (v35[25] != v33[25] && (C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
        {
          C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
          v53 = scn_default_log();
          if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
          {
            C3D::RenderGraph::logDependencyInputMismatch();
          }
        }

        if (v35[27] != v33[27] && (C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
        {
          C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
          v54 = scn_default_log();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            C3D::RenderGraph::logDependencyInputMismatch();
          }
        }

        if (*(v35 + 14) != *(v33 + 14) && (C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
        {
          C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
          v55 = scn_default_log();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            C3D::RenderGraph::logDependencyInputMismatch();
          }
        }

        v56 = v35[30];
        v57 = v33[30];
        if (v56 != v57 && (v57 + v56) >= 2 && (C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done & 1) == 0)
        {
          C3D::RenderGraph::logDependencyInputMismatch(C3D::RenderGraph::GraphNode const&,C3D::RenderGraph::GraphNode const&,unsigned char,unsigned char)::done = 1;
          v58 = scn_default_log();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
          {
            C3D::RenderGraph::logDependencyInputMismatch();
          }
        }
      }

      if (*v33 == 2 && *(v35 + 2) != *(v33 + 2) && (_ZZN3C3D11RenderGraph26logDependencyInputMismatchERKNS0_9GraphNodeES3_hhE4done__10_ & 1) == 0)
      {
        _ZZN3C3D11RenderGraph26logDependencyInputMismatchERKNS0_9GraphNodeES3_hhE4done__10_ = 1;
        v59 = scn_default_log();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
        {
          C3D::RenderGraph::logDependencyInputMismatch();
        }
      }
    }
  }
}

uint64_t C3D::RenderGraph::getCurrentFrameCachedPass(C3D::RenderGraph *this, uint64_t a2)
{
  v2 = (*(this + 23) - 1) & a2;
  v3 = *(*(this + 10) + 2 * v2);
  if (v3 < 2)
  {
    return 0;
  }

  while ((v3 & 2) == 0 || *(*(this + 8) + 8 * v2) != a2)
  {
    ++v2;
    v4 = v3 >= 4;
    v3 >>= 1;
    if (!v4)
    {
      return 0;
    }
  }

  v6 = *(this + 9);
  if (v6)
  {
    return *(v6 + 8 * v2);
  }

  else
  {
    return 0;
  }
}

C3D::Pass *C3D::RenderGraph::search(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2 || !*(v2 + 8))
  {
    return 0;
  }

  StackAllocator = C3DEngineContextGetStackAllocator(*(a1 + 8));
  C3DStackAllocatorPushFrame(StackAllocator);
  if (*(a2 + 40))
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  C3D::RenderGraph::clearAllDirtyBits(a1, v6);
  C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(&v39, StackAllocator);
  v7 = *(a2 + 32);
  if (v7)
  {
    PrimitiveCount = C3DMeshElementGetPrimitiveCount(v7);
  }

  else
  {
    PrimitiveCount = 0;
  }

  v38 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), PrimitiveCount);
  C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v39, &v38);
  if (!v40)
  {
    v9 = 0;
    goto LABEL_61;
  }

  v37 = StackAllocator;
  while (1)
  {
    v10 = *C3D::Array<C3D::RenderGraph::GraphNode *,0u,C3D::StackAllocator>::back(&v39);
    C3D::Array<C3D::RenderGraph::GraphNode *,0u,C3D::StackAllocator>::pop_back(&v39);
    if (*(a2 + 44) == 1 && *v10 == *(a2 + 32))
    {
      goto LABEL_49;
    }

    if (*a2)
    {
      if ((***v10)())
      {
        v11 = (***v10)();
        v12 = strcmp(v11, *a2) != 0;
      }

      else
      {
        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
    }

    v13 = *(a2 + 24) == 0;
    v14 = *(a2 + 8);
    v15 = v14 == 0;
    if (*(a2 + 24) || v14)
    {
      v16 = C3D::Pass::descriptor(*v10);
      if (!C3D::PassDescriptor::inputCount(v16))
      {
        goto LABEL_32;
      }

      v17 = 0;
      while (1)
      {
        v18 = C3D::Pass::descriptor(*v10);
        v19 = C3D::PassDescriptor::inputAtIndex(v18, v17);
        v13 |= *(v19 + 64) == *(a2 + 24);
        if (v15)
        {
          break;
        }

        v20 = *(v19 + 8);
        if (v20)
        {
          v15 = strcmp(v20, *(a2 + 8)) == 0;
LABEL_28:
          if (v15 & v13)
          {
            goto LABEL_21;
          }

          goto LABEL_29;
        }

        v15 = 0;
LABEL_29:
        ++v17;
        v21 = C3D::Pass::descriptor(*v10);
        if (v17 >= C3D::PassDescriptor::inputCount(v21))
        {
          goto LABEL_32;
        }
      }

      v15 = 1;
      goto LABEL_28;
    }

LABEL_21:
    v15 = 1;
    LOBYTE(v13) = 1;
LABEL_32:
    v22 = *(a2 + 25) == 0;
    v23 = *(a2 + 16);
    v24 = v23 == 0;
    if (*(a2 + 25) || v23)
    {
      v25 = C3D::Pass::descriptor(*v10);
      if (!C3D::PassDescriptor::outputCount(v25))
      {
        goto LABEL_45;
      }

      v26 = 0;
      while (1)
      {
        v27 = C3D::Pass::descriptor(*v10);
        v28 = C3D::PassDescriptor::outputAtIndex(v27, v26);
        v22 |= *(v28 + 64) == *(a2 + 25);
        if (v24)
        {
          break;
        }

        v29 = *(v28 + 8);
        if (v29)
        {
          v24 = strcmp(v29, *(a2 + 16)) == 0;
LABEL_41:
          if (v24 & v22)
          {
            goto LABEL_34;
          }

          goto LABEL_42;
        }

        v24 = 0;
LABEL_42:
        ++v26;
        v30 = C3D::Pass::descriptor(*v10);
        if (v26 >= C3D::PassDescriptor::outputCount(v30))
        {
          goto LABEL_45;
        }
      }

      v24 = 1;
      goto LABEL_41;
    }

LABEL_34:
    LOBYTE(v22) = 1;
    v24 = 1;
LABEL_45:
    if (!v12 && (v13 & 1) != 0 && (v22 & 1) != 0 && v15 && v24)
    {
      break;
    }

LABEL_49:
    v31 = 1;
    if (!*(a2 + 40))
    {
      v31 = 4;
    }

    v32 = &v10[v31];
    v33 = LODWORD(v10[v31 + 1]);
    if (v33)
    {
      v34 = v32[2];
      v35 = 4 * v33;
      do
      {
        if ((*v34 & 0x8000) == 0)
        {
          v38 = C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::operator[](*(a1 + 24), *v34 & 0x7FFF);
          C3D::Array<char const*,0u,C3D::StackAllocator>::push_back<char const*&>(&v39, &v38);
          *v34 |= 0x8000u;
        }

        v34 = (v34 + 4);
        v35 -= 4;
      }

      while (v35);
    }

    if (!v40)
    {
      v9 = 0;
      goto LABEL_60;
    }
  }

  v9 = *v10;
LABEL_60:
  StackAllocator = v37;
LABEL_61:
  C3DStackAllocatorPopFrame(StackAllocator);
  return v9;
}

void C3D::RenderGraph::logPassIODescriptor(C3D::RenderGraph *this, C3D::PassIODescriptor *a2, const char *a3)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (v5 == 2)
  {
    v24 = scn_default_log();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v25 = *(a2 + 2);
    v37 = 136315650;
    v38 = a3;
    v39 = 2080;
    v40 = a3;
    v41 = 2048;
    *&v42 = v25;
    v21 = "Info: |%s%slength : %lu";
    v22 = v24;
    v23 = 32;
    goto LABEL_13;
  }

  if (v5 != 1)
  {
    v26 = scn_default_log();
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    v37 = 136315138;
    v38 = a3;
    v21 = "Info: |%stype : INVALID";
    v22 = v26;
    v23 = 12;
    goto LABEL_13;
  }

  v6 = -[__CFString cStringUsingEncoding:](SCNMTLTextureTypeToString(*(a2 + 24)), "cStringUsingEncoding:", [MEMORY[0x277CCACA8] defaultCStringEncoding]);
  v7 = -[__CFString cStringUsingEncoding:](SCNMTLPixelFormatToString(*(a2 + 14)), "cStringUsingEncoding:", [MEMORY[0x277CCACA8] defaultCStringEncoding]);
  v8 = scn_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v37 = 136315394;
    v38 = a3;
    v39 = 2080;
    v40 = a3;
    _os_log_impl(&dword_21BEF7000, v8, OS_LOG_TYPE_INFO, "Info: |%s%s|width|height|depth|        pixelFormat      |arrayLength|storageMode|usage|cpuCacheMo|mipmapCount|sampleCount|usedForRes|         textureType      |", &v37, 0x16u);
  }

  v9 = scn_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = *(a2 + 8);
    v11 = *(a2 + 9);
    v12 = *(a2 + 10);
    v13 = *(a2 + 11);
    v14 = *(a2 + 25);
    v15 = *(a2 + 26);
    v16 = *(a2 + 27);
    v17 = *(a2 + 30);
    v18 = *(a2 + 31);
    v19 = *(a2 + 8);
    v37 = 136318466;
    v38 = a3;
    v39 = 2080;
    v40 = a3;
    v41 = 1024;
    LODWORD(v42) = v10;
    WORD2(v42) = 1024;
    *(&v42 + 6) = v11;
    WORD5(v42) = 1024;
    HIDWORD(v42) = v12;
    *v43 = 2080;
    *&v43[2] = v7;
    LOWORD(v44) = 1024;
    *(&v44 + 2) = v13;
    HIWORD(v44) = 1024;
    *v45 = v14;
    *&v45[4] = 1024;
    *&v45[6] = v15;
    v46 = 1024;
    v47 = v16;
    v48 = 1024;
    v49 = v17;
    v50 = 1024;
    v51 = v18;
    v52 = 1024;
    v53 = v19;
    v54 = 2080;
    *v55 = v6;
    _os_log_impl(&dword_21BEF7000, v9, OS_LOG_TYPE_INFO, "Info: |%s%s|%5d|%6d|%5d|%25s|%11d|%11d|%5d|%10d|%11d|%11d|%10d|%26s|", &v37, 0x66u);
  }

  v20 = scn_default_log();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    LOWORD(v37) = 0;
    v21 = "Info: |";
    v22 = v20;
    v23 = 2;
LABEL_13:
    _os_log_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_INFO, v21, &v37, v23);
  }

LABEL_14:
  v27 = scn_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v37 = 136315394;
    v38 = a3;
    v39 = 2080;
    v40 = a3;
    _os_log_impl(&dword_21BEF7000, v27, OS_LOG_TYPE_INFO, "Info: |%s%s|type|clearColor R|   G|   B|   A|attachmentType|loadMode|dispatchToOutput|usedInternally|registerTexture|registerResolveT|specificClearCol|readWrite|persistent|", &v37, 0x16u);
  }

  v28 = scn_default_log();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = *a2;
    v30 = *(a2 + 12);
    v31 = *(a2 + 13);
    v32 = *(a2 + 14);
    v33 = *(a2 + 15);
    v34 = *(a2 + 64);
    v35 = *(a2 + 33);
    v37 = 136318978;
    v38 = a3;
    v39 = 2080;
    v40 = a3;
    v41 = 1024;
    LODWORD(v42) = v29;
    WORD2(v42) = 2048;
    *(&v42 + 6) = v30;
    HIWORD(v42) = 2048;
    *v43 = v31;
    *&v43[8] = 2048;
    v44 = v32;
    *v45 = 2048;
    *&v45[2] = v33;
    v46 = 1024;
    v47 = v34;
    v48 = 1024;
    v49 = v35 & 3;
    v50 = 1024;
    v51 = (v35 >> 2) & 1;
    v52 = 1024;
    v53 = (v35 >> 3) & 1;
    v54 = 1024;
    *v55 = (v35 >> 4) & 1;
    *&v55[4] = 1024;
    *&v55[6] = (v35 >> 5) & 1;
    v56 = 1024;
    v57 = (v35 >> 6) & 1;
    v58 = 1024;
    v59 = (v35 >> 7) & 1;
    v60 = 1024;
    v61 = (v35 >> 8) & 1;
    _os_log_impl(&dword_21BEF7000, v28, OS_LOG_TYPE_INFO, "Info: |%s%s|%4hhu|%12.1f|%4.1f|%4.1f|%4.1f|%14hhu|%8hhu|%16d|%14d|%15d|%16d|%16d|%9d|%10d|", &v37, 0x7Au);
  }

  v36 = scn_default_log();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    LOWORD(v37) = 0;
    _os_log_impl(&dword_21BEF7000, v36, OS_LOG_TYPE_INFO, "Info: |", &v37, 2u);
  }
}

C3D::RenderGraph *C3DRenderGraphDelete(C3D::RenderGraph *result)
{
  if (result)
  {
    C3D::RenderGraph::~RenderGraph(result);

    JUMPOUT(0x21CF07610);
  }

  return result;
}

void C3DRenderGraphCompile(C3D::RenderGraph *this)
{
  if (*(this + 211) == 1)
  {
    C3D::RenderGraph::allocateResources(this);
  }
}

void C3DRenderGraphInvalidateTechniques(uint64_t a1)
{
  *(a1 + 208) = 0;
  v2 = *(a1 + 200);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 200) = 0;
  }
}

void C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::clear(uint64_t a1)
{
  C3D::Hash<std::unique_ptr<C3D::RenderGraphResource>,C3D::MallocAllocator>::_destroy_values(*(a1 + 8), *(a1 + 16), *(a1 + 28) + 15);
  memset(*a1, 255, 8 * (*(a1 + 28) + 15));
  bzero(*(a1 + 16), 2 * (*(a1 + 28) + 15));
  *(a1 + 24) = 0;
}

void *C3D::Array<C3D::RenderGraph::PortsPair,16u,C3D::StackAllocator>::Array(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0x1000000000;
  a1[2] = a1 + 3;
  if (!a2)
  {
    v3 = scn_default_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1;
}

void *C3D::Array<C3D::RenderGraph::GraphNode,0u,C3D::ScratchAllocator>::GrowCapacityBy(uint64_t a1, int a2, int a3)
{
  v4 = 1.5;
  if (a3)
  {
    v4 = 1.0;
  }

  v5 = (v4 * (*(a1 + 12) + a2));
  result = C3DScratchAllocatorAllocateAligned(*a1, 56 * v5, 8, 0);
  v7 = result;
  if (*(a1 + 8))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ++v9;
      result = C3D::RenderGraph::GraphNode::GraphNode(result, (*(a1 + 16) + v8)) + 7;
      v8 += 56;
    }

    while (v9 < *(a1 + 8));
  }

  *(a1 + 16) = v7;
  *(a1 + 12) = v5;
  return result;
}

void *C3D::RenderGraph::GraphNode::GraphNode(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[3] = a1 + 4;
  C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=((a1 + 1), (a2 + 1));
  a1[4] = a2[4];
  a1[6] = a1 + 7;
  C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::operator=((a1 + 4), (a2 + 4));
  return a1;
}

void C3D::Hash<objc_object  {objcproto10MTLTexture}*,C3D::ScratchAllocator>::_grow(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::_allocate(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        C3D::Hash<objc_object  {objcproto10MTLTexture}*,C3D::ScratchAllocator>::insert(a1, *v3, v2);
      }

      ++v3;
      v2 += 8;
      --v6;
    }

    while (v6);
  }
}

C3D::ScratchAllocator *C3D::Array<C3D::RenderGraph::Link,0u,C3D::ScratchAllocator>::Array(C3D::ScratchAllocator *a1, void *a2, int a3)
{
  v6 = C3D::ScratchAllocator::ScratchAllocator(a1, a2);
  *(v6 + 1) = 0;
  *(v6 + 2) = v6 + 24;
  if (!a2)
  {
    v7 = scn_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3D::Array<C3D::Pass *,0u,C3D::StackAllocator>::Array(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a1 + 2);
  v16 = *(a1 + 3) + a3;
  Aligned = C3DScratchAllocatorAllocateAligned(*a1, (4 * v16), 4, 0);
  memcpy(Aligned, v15, 4 * *(a1 + 2));
  *(a1 + 2) = Aligned;
  *(a1 + 3) = v16;
  return a1;
}

void C3D::Array<C3D::Pass *,0u,C3D::ScratchAllocator>::resize(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      v5 = *(a1 + 16);
      if (*(a1 + 12) < a2)
      {
        v6 = (a2 * 1.5);
        Aligned = C3DScratchAllocatorAllocateAligned(*a1, 8 * v6, 8, 0);
        memcpy(Aligned, v5, 8 * *(a1 + 8));
        *(a1 + 16) = Aligned;
        *(a1 + 12) = v6;
        v5 = Aligned;
        v2 = *(a1 + 8);
      }

      bzero(&v5[8 * v2], 8 * (a2 - v2));
    }

    *(a1 + 8) = a2;
  }
}

void C3D::Hash<C3D::Pass *,C3D::StackAllocator>::_allocate(uint64_t a1, int a2)
{
  if ((a2 & (a2 - 1)) != 0)
  {
    C3D::Hash<C3D::FinalPass::RenderTarget,C3D::StackAllocator>::_allocate();
  }

  *(a1 + 32) = 0;
  *(a1 + 36) = a2;
  v3 = a2 + 15;
  v4 = 2 * (a2 + 15);
  *(a1 + 24) = C3DStackAllocatorAllocateAligned(*a1, v4, 4, 0);
  v5 = 8 * v3;
  *(a1 + 8) = C3DStackAllocatorAllocateAligned(*a1, v5, 8, 0);
  *(a1 + 16) = C3DStackAllocatorAllocateAligned(*a1, v5, 8, 0);
  memset(*(a1 + 8), 255, v5);
  v6 = *(a1 + 24);

  bzero(v6, v4);
}

uint64_t C3D::Hash<C3D::Pass *,C3D::StackAllocator>::insert(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 16) + 8 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    C3D::Hash<C3D::Pass *,C3D::StackAllocator>::_grow(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + 8 * v10) = *a3;
  return result;
}

void C3D::Hash<C3D::Pass *,C3D::StackAllocator>::_grow(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  C3D::Hash<C3D::Pass *,C3D::StackAllocator>::_allocate(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        C3D::Hash<C3D::Pass *,C3D::StackAllocator>::insert(a1, *v3, v2);
      }

      ++v3;
      v2 += 8;
      --v6;
    }

    while (v6);
  }
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,C3D::RenderGraph::validate(void)::$_0 &,C3D::RenderGraph::PortsPair *,false>(unint64_t result, unsigned __int8 *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 1;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*(a2 - 2) >= *v8)
        {
          return result;
        }

        v64 = *v8;
LABEL_110:
        *v8 = *(a2 - 1);
LABEL_111:
        *(a2 - 1) = v64;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v67 = v8[2];
      v68 = *v8;
      v69 = v8[4];
      if (v67 >= v68)
      {
        if (v69 < v67)
        {
          v114 = *(v8 + 2);
          LOWORD(v69) = *(v8 + 1);
          *(v8 + 1) = v114;
          *(v8 + 2) = v69;
          v69 = v69;
          if (v68 > v114)
          {
            v115 = *v8;
            *v8 = v114;
            *(v8 + 1) = v115;
          }
        }
      }

      else
      {
        v70 = *v8;
        v71 = *v8;
        if (v69 < v67)
        {
          *v8 = *(v8 + 2);
          goto LABEL_191;
        }

        *v8 = *(v8 + 1);
        *(v8 + 1) = v70;
        if (v69 < v71)
        {
          *(v8 + 1) = *(v8 + 2);
LABEL_191:
          *(v8 + 2) = v70;
          v69 = v71;
        }
      }

      if (*(a2 - 2) < v69)
      {
        v121 = *(v8 + 2);
        *(v8 + 2) = *(a2 - 1);
        *(a2 - 1) = v121;
        if (v8[4] < v8[2])
        {
          v122 = *(v8 + 1);
          v123 = *(v8 + 2);
          *(v8 + 1) = v123;
          *(v8 + 2) = v122;
          if (*v8 > v123)
          {
            v124 = *v8;
            *v8 = v123;
            *(v8 + 1) = v124;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::validate(void)::$_0 &,C3D::RenderGraph::PortsPair *,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v72 = v8 + 2;
      v74 = v8 == a2 || v72 == a2;
      if (a4)
      {
        if (!v74)
        {
          v75 = 0;
          v76 = v8;
          do
          {
            v77 = v76[2];
            v78 = *v76;
            v76 = v72;
            if (v77 < v78)
            {
              v79 = *v72;
              v80 = v75;
              while (1)
              {
                *&v8[v80 + 2] = *&v8[v80];
                if (!v80)
                {
                  break;
                }

                v81 = v8[v80 - 2];
                v80 -= 2;
                if (v81 <= v79)
                {
                  v82 = &v8[v80 + 2];
                  goto LABEL_130;
                }
              }

              v82 = v8;
LABEL_130:
              *v82 = v79;
            }

            v72 = v76 + 2;
            v75 += 2;
          }

          while (v76 + 2 != a2);
        }
      }

      else if (!v74)
      {
        do
        {
          v116 = v7[2];
          v117 = *v7;
          v7 = v72;
          if (v116 < v117)
          {
            v118 = *v72;
            do
            {
              v119 = v72;
              v120 = *(v72 - 1);
              v72 -= 2;
              *v119 = v120;
            }

            while (*(v119 - 4) > v118);
            *v72 = v118;
          }

          v72 = v7 + 2;
        }

        while (v7 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v83 = (v9 - 2) >> 1;
        v84 = v83;
        do
        {
          v85 = v84;
          if (v83 >= v84)
          {
            v86 = (2 * v84) | 1;
            v87 = &v8[2 * v86];
            if (2 * v85 + 2 >= v9)
            {
              v88 = *v87;
            }

            else
            {
              v88 = *v87;
              v89 = v87[2];
              v90 = v88 >= v89;
              if (v88 <= v89)
              {
                v88 = v87[2];
              }

              if (!v90)
              {
                v87 += 2;
                v86 = 2 * v85 + 2;
              }
            }

            v91 = &v8[2 * v85];
            if (v88 >= *v91)
            {
              v92 = *v91;
              do
              {
                v93 = v91;
                v91 = v87;
                *v93 = *v87;
                if (v83 < v86)
                {
                  break;
                }

                v94 = (2 * v86) | 1;
                v87 = &v8[2 * v94];
                v86 = 2 * v86 + 2;
                if (v86 >= v9)
                {
                  v95 = *v87;
                  v86 = v94;
                }

                else
                {
                  v95 = *v87;
                  result = v87[2];
                  v96 = v95 >= result;
                  if (v95 <= result)
                  {
                    v95 = v87[2];
                  }

                  if (v96)
                  {
                    v86 = v94;
                  }

                  else
                  {
                    v87 += 2;
                  }
                }
              }

              while (v95 >= v92);
              *v91 = v92;
            }
          }

          v84 = v85 - 1;
        }

        while (v85);
        do
        {
          v97 = 0;
          v98 = *v8;
          v99 = v8;
          do
          {
            v100 = &v99[2 * v97];
            v101 = v100 + 2;
            v102 = (2 * v97) | 1;
            v97 = 2 * v97 + 2;
            if (v97 >= v9)
            {
              v97 = v102;
            }

            else
            {
              v104 = v100[4];
              v103 = v100 + 4;
              if (*(v103 - 2) >= v104)
              {
                v97 = v102;
              }

              else
              {
                v101 = v103;
              }
            }

            *v99 = *v101;
            v99 = v101;
          }

          while (v97 <= ((v9 - 2) >> 1));
          a2 -= 2;
          if (v101 == a2)
          {
            *v101 = v98;
          }

          else
          {
            *v101 = *a2;
            *a2 = v98;
            v105 = (v101 - v8 + 2) >> 1;
            v106 = v105 < 2;
            v107 = v105 - 2;
            if (!v106)
            {
              v108 = v107 >> 1;
              v109 = &v8[2 * v108];
              if (*v109 < *v101)
              {
                v110 = *v101;
                do
                {
                  v111 = v101;
                  v101 = v109;
                  *v111 = *v109;
                  if (!v108)
                  {
                    break;
                  }

                  v108 = (v108 - 1) >> 1;
                  v109 = &v8[2 * v108];
                }

                while (*v109 < v110);
                *v101 = v110;
              }
            }
          }

          v106 = v9-- <= 2;
        }

        while (!v106);
      }

      return result;
    }

    v10 = &v8[2 * (v9 >> 1)];
    v11 = v10;
    v12 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      if (v13 >= *v8)
      {
        if (v12 < v13)
        {
          v17 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v17;
          if (*v10 < *v8)
          {
            v18 = *v8;
            *v8 = *v10;
            *v10 = v18;
          }
        }
      }

      else
      {
        v14 = *v8;
        if (v12 < v13)
        {
          *v8 = *(a2 - 1);
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v14;
        if (*(a2 - 2) < v14)
        {
          *v10 = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v14;
        }
      }

      v21 = v10 - 2;
      v22 = *(v10 - 2);
      v23 = *(a2 - 4);
      if (v22 >= v8[2])
      {
        if (v23 < v22)
        {
          v25 = *v21;
          *v21 = *(a2 - 2);
          *(a2 - 2) = v25;
          if (*v21 < v8[2])
          {
            v26 = *(v8 + 1);
            *(v8 + 1) = *v21;
            *v21 = v26;
          }
        }
      }

      else
      {
        v24 = *(v8 + 1);
        if (v23 < v22)
        {
          *(v8 + 1) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v8 + 1) = *v21;
        *v21 = v24;
        if (*(a2 - 4) < v24)
        {
          *v21 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v24;
        }
      }

      v29 = v10[2];
      v27 = v10 + 2;
      v28 = v29;
      v30 = *(a2 - 6);
      if (v29 >= v8[4])
      {
        if (v30 < v28)
        {
          v32 = *v27;
          *v27 = *(a2 - 3);
          *(a2 - 3) = v32;
          if (*v27 < v8[4])
          {
            v33 = *(v8 + 2);
            *(v8 + 2) = *v27;
            *v27 = v33;
          }
        }
      }

      else
      {
        v31 = *(v8 + 2);
        if (v30 < v28)
        {
          *(v8 + 2) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v8 + 2) = *v27;
        *v27 = v31;
        if (*(a2 - 6) < v31)
        {
          *v27 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v31;
        }
      }

      v34 = *v11;
      v35 = *v21;
      v36 = *v27;
      if (v34 >= v35)
      {
        v37 = *v11;
        if (v36 < v34)
        {
          v38 = *v27;
          *v11 = *v27;
          *v27 = v37;
          if (v35 <= v38)
          {
            v37 = v38;
          }

          else
          {
            v37 = *v21;
            *v21 = v38;
            *v11 = v37;
          }
        }
      }

      else
      {
        v37 = *v21;
        if (v36 >= v34)
        {
          *v21 = *v11;
          *v11 = v37;
          if (v36 < v37)
          {
            v39 = *v27;
            *v11 = *v27;
            *v27 = v37;
            v37 = v39;
          }
        }

        else
        {
          *v21 = *v27;
          *v27 = v37;
          v37 = *v11;
        }
      }

      v40 = *v8;
      *v8 = v37;
      *v11 = v40;
      goto LABEL_59;
    }

    v15 = *v8;
    if (v15 >= *v11)
    {
      if (v12 < v15)
      {
        v19 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v19;
        if (*v8 < *v11)
        {
          v20 = *v11;
          *v11 = *v8;
          *v8 = v20;
        }
      }

      goto LABEL_59;
    }

    v16 = *v11;
    if (v12 < v15)
    {
      *v11 = *(a2 - 1);
LABEL_36:
      *(a2 - 1) = v16;
      goto LABEL_59;
    }

    *v11 = *v8;
    *v8 = v16;
    if (*(a2 - 2) < v16)
    {
      *v8 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v41 = *v8;
LABEL_62:
      v42 = 0;
      do
      {
        v43 = v8[v42 + 2];
        v42 += 2;
      }

      while (v43 < v41);
      v44 = &v8[v42];
      v45 = a2;
      if (v42 == 2)
      {
        v45 = a2;
        do
        {
          if (v44 >= v45)
          {
            break;
          }

          v47 = *(v45 - 2);
          v45 -= 2;
        }

        while (v47 >= v41);
      }

      else
      {
        do
        {
          v46 = *(v45 - 2);
          v45 -= 2;
        }

        while (v46 >= v41);
      }

      if (v44 >= v45)
      {
        v53 = v44 - 2;
      }

      else
      {
        v48 = &v8[v42];
        v49 = v45;
        do
        {
          v50 = *v48;
          *v48 = *v49;
          *v49 = v50;
          do
          {
            v51 = v48[2];
            v48 += 2;
          }

          while (v51 < v41);
          do
          {
            v52 = *(v49 - 2);
            v49 -= 2;
          }

          while (v52 >= v41);
        }

        while (v48 < v49);
        v53 = v48 - 2;
      }

      if (v53 != v8)
      {
        *v8 = *v53;
      }

      *v53 = v41;
      if (v44 < v45)
      {
        goto LABEL_83;
      }

      v54 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::validate(void)::$_0 &,C3D::RenderGraph::PortsPair *>(v8, v53);
      v8 = v53 + 2;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::validate(void)::$_0 &,C3D::RenderGraph::PortsPair *>(v53 + 2, a2);
      if (result)
      {
        a2 = v53;
        if (!v54)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v54)
      {
LABEL_83:
        result = std::__introsort<std::_ClassicAlgPolicy,C3D::RenderGraph::validate(void)::$_0 &,C3D::RenderGraph::PortsPair *,false>(v7, v53, a3, a4 & 1);
        a4 = 0;
        v8 = v53 + 2;
      }
    }

    else
    {
      v41 = *v8;
      if (*(v8 - 2) < *v8)
      {
        goto LABEL_62;
      }

      v55 = *v8;
      if (*(a2 - 2) <= v41)
      {
        v57 = v8 + 2;
        do
        {
          v8 = v57;
          if (v57 >= a2)
          {
            break;
          }

          v57 += 2;
        }

        while (*v8 <= v55);
      }

      else
      {
        do
        {
          v56 = v8[2];
          v8 += 2;
        }

        while (v56 <= v55);
      }

      v58 = a2;
      if (v8 < a2)
      {
        v58 = a2;
        do
        {
          v59 = *(v58 - 2);
          v58 -= 2;
        }

        while (v59 > v55);
      }

      while (v8 < v58)
      {
        v60 = *v8;
        *v8 = *v58;
        *v58 = v60;
        do
        {
          v61 = v8[2];
          v8 += 2;
        }

        while (v61 <= v55);
        do
        {
          v62 = *(v58 - 2);
          v58 -= 2;
        }

        while (v62 > v55);
      }

      v63 = v8 - 2;
      if (v8 - 2 != v7)
      {
        *v7 = *v63;
      }

      a4 = 0;
      *v63 = v41;
    }
  }

  v65 = v8[2];
  v66 = *(a2 - 2);
  if (v65 >= *v8)
  {
    if (v66 < v65)
    {
      v112 = *(v8 + 1);
      *(v8 + 1) = *(a2 - 1);
      *(a2 - 1) = v112;
      if (v8[2] < *v8)
      {
        HIDWORD(v113) = *v8;
        LODWORD(v113) = *v8;
        *v8 = v113 >> 16;
      }
    }
  }

  else
  {
    v64 = *v8;
    if (v66 < v65)
    {
      goto LABEL_110;
    }

    *v8 = *(v8 + 1);
    *(v8 + 1) = v64;
    if (*(a2 - 2) < v64)
    {
      *(v8 + 1) = *(a2 - 1);
      goto LABEL_111;
    }
  }

  return result;
}

unsigned __int8 *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::validate(void)::$_0 &,C3D::RenderGraph::PortsPair *,0>(unsigned __int8 *result, _WORD *a2, _WORD *a3, _WORD *a4, _WORD *a5)
{
  v5 = *a2;
  v6 = *a3;
  if (v5 >= *result)
  {
    if (v6 < v5)
    {
      LOWORD(v6) = *a2;
      *a2 = *a3;
      *a3 = v6;
      if (*a2 >= *result)
      {
        v6 = v6;
      }

      else
      {
        v8 = *result;
        *result = *a2;
        *a2 = v8;
        v6 = *a3;
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 >= v5)
    {
      *result = *a2;
      *a2 = v7;
      v6 = *a3;
      if (v6 < v7)
      {
        v6 = v7;
        *a2 = *a3;
        *a3 = v7;
      }
    }

    else
    {
      *result = *a3;
      *a3 = v7;
      v6 = v7;
    }
  }

  if (*a4 < v6)
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if (*a3 < *a2)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if (*a2 < *result)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  if (*a5 < *a4)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    if (*a4 < *a3)
    {
      v13 = *a3;
      *a3 = *a4;
      *a4 = v13;
      if (*a3 < *a2)
      {
        v14 = *a2;
        *a2 = *a3;
        *a3 = v14;
        if (*a2 < *result)
        {
          v15 = *result;
          *result = *a2;
          *a2 = v15;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::validate(void)::$_0 &,C3D::RenderGraph::PortsPair *>(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = (a2 - a1) >> 1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = a1[2];
      v5 = *(a2 - 2);
      if (v4 >= *a1)
      {
        if (v5 < v4)
        {
          v16 = *(a1 + 1);
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 1) = v16;
          if (a1[2] < *a1)
          {
            HIDWORD(v17) = *a1;
            LODWORD(v17) = *a1;
            *a1 = v17 >> 16;
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v5 >= v4)
      {
        *a1 = *(a1 + 1);
        *(a1 + 1) = v3;
        if (*(a2 - 2) >= v3)
        {
          return 1;
        }

        *(a1 + 1) = *(a2 - 1);
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *(a2 - 1);
LABEL_13:
      *(a2 - 1) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 == 5)
      {
        std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::validate(void)::$_0 &,C3D::RenderGraph::PortsPair *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
        return 1;
      }

      goto LABEL_14;
    }

    v11 = a1[2];
    v12 = *a1;
    v13 = a1[4];
    if (v11 >= v12)
    {
      if (v13 < v11)
      {
        v21 = *(a1 + 2);
        LOWORD(v13) = *(a1 + 1);
        *(a1 + 1) = v21;
        *(a1 + 2) = v13;
        v13 = v13;
        if (v12 > v21)
        {
          v22 = *a1;
          *a1 = v21;
          *(a1 + 1) = v22;
        }
      }

      goto LABEL_48;
    }

    v14 = *a1;
    v15 = *a1;
    if (v13 >= v11)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v14;
      if (v13 >= v15)
      {
LABEL_48:
        if (*(a2 - 2) < v13)
        {
          v30 = *(a1 + 2);
          *(a1 + 2) = *(a2 - 1);
          *(a2 - 1) = v30;
          if (a1[4] < a1[2])
          {
            v31 = *(a1 + 1);
            v32 = *(a1 + 2);
            *(a1 + 1) = v32;
            *(a1 + 2) = v31;
            if (*a1 > v32)
            {
              v33 = *a1;
              *a1 = v32;
              *(a1 + 1) = v33;
            }
          }
        }

        return 1;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v14;
    v13 = v15;
    goto LABEL_48;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 2) < *a1)
    {
      v3 = *a1;
      goto LABEL_12;
    }

    return 1;
  }

LABEL_14:
  v6 = a1 + 4;
  v7 = a1[4];
  v8 = a1[2];
  v9 = *a1;
  if (v8 >= v9)
  {
    if (v7 < v8)
    {
      v18 = *(a1 + 1);
      v19 = *(a1 + 2);
      *(a1 + 1) = v19;
      *(a1 + 2) = v18;
      if (v9 > v19)
      {
        v20 = *a1;
        *a1 = v19;
        *(a1 + 1) = v20;
      }
    }
  }

  else
  {
    v10 = *a1;
    if (v7 >= v8)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v10;
      if (v7 >= v10)
      {
        goto LABEL_34;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v10;
  }

LABEL_34:
  v23 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v24 = 0;
  v25 = 0;
  while (1)
  {
    if (*v23 < *v6)
    {
      v26 = *v23;
      v27 = v24;
      while (1)
      {
        *&a1[v27 + 6] = *&a1[v27 + 4];
        if (v27 == -4)
        {
          break;
        }

        v28 = a1[v27 + 2];
        v27 -= 2;
        if (v28 <= v26)
        {
          v29 = &a1[v27 + 6];
          goto LABEL_42;
        }
      }

      v29 = a1;
LABEL_42:
      *v29 = v26;
      if (++v25 == 8)
      {
        return v23 + 2 == a2;
      }
    }

    v6 = v23;
    v24 += 2;
    v23 += 2;
    if (v23 == a2)
    {
      return 1;
    }
  }
}

void C3D::Array<C3D::RenderGraph::Link,16u,C3D::StackAllocator>::resize(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (v2 != a2)
  {
    if (v2 <= a2)
    {
      v5 = *(a1 + 16);
      if (*(a1 + 12) < a2)
      {
        v6 = (a2 * 1.5);
        Aligned = C3DStackAllocatorAllocateAligned(*a1, 4 * v6, 4, 0);
        memcpy(Aligned, v5, 4 * *(a1 + 8));
        *(a1 + 16) = Aligned;
        *(a1 + 12) = v6;
        v5 = Aligned;
        v2 = *(a1 + 8);
      }

      bzero(&v5[4 * v2], 4 * (a2 - v2));
    }

    *(a1 + 8) = a2;
  }
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,C3D::RenderGraph::resolvePartialDependencies(void)::$_0 &,C3D::RenderGraph::Link *,false>(unint64_t result, int *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v70 = *v8;
        if ((*(a2 - 1) & 0x7FFFu) < (*v8 & 0x7FFFu))
        {
          *v8 = *(a2 - 1);
          *(a2 - 1) = v70;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v77 = v8 + 1;
      v78 = v8[1];
      v79 = v8 + 2;
      v80 = v8[2];
      v81 = v78 & 0x7FFF;
      v82 = *v8;
      v83 = *v8 & 0x7FFF;
      v84 = v80 & 0x7FFF;
      if (v81 >= v83)
      {
        if (v84 < v81)
        {
          v85 = v8;
          *v77 = v80;
          *v79 = v78;
          v86 = v8 + 1;
          v125 = v84 >= v83;
          v83 = v78 & 0x7FFF;
          v84 = v83;
          if (!v125)
          {
            goto LABEL_185;
          }

LABEL_187:
          if ((*(a2 - 1) & 0x7FFFu) < v84)
          {
            *v79 = *(a2 - 1);
            *(a2 - 1) = v78;
            v129 = *v79;
            v130 = *v77;
            if ((v129 & 0x7FFFu) < (v130 & 0x7FFFu))
            {
              v8[1] = v129;
              v8[2] = v130;
              v131 = *v8;
              if ((v129 & 0x7FFFu) < (*v8 & 0x7FFFu))
              {
                *v8 = v129;
                v8[1] = v131;
              }
            }
          }

          return result;
        }
      }

      else
      {
        if (v84 < v81)
        {
          v85 = v8;
          v86 = v8 + 2;
          v78 = *v8;
          goto LABEL_185;
        }

        *v8 = v78;
        v8[1] = v82;
        v85 = v8 + 1;
        v86 = v8 + 2;
        v78 = v82;
        if (v84 < v83)
        {
LABEL_185:
          *v85 = v80;
          *v86 = v82;
          v84 = v83;
          goto LABEL_187;
        }
      }

      v78 = v80;
      goto LABEL_187;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::resolvePartialDependencies(void)::$_0 &,C3D::RenderGraph::Link *,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v87 = v8 + 1;
      v89 = v8 == a2 || v87 == a2;
      if (a4)
      {
        if (!v89)
        {
          v90 = 0;
          v91 = v8;
          do
          {
            v93 = *v91;
            v92 = v91[1];
            v91 = v87;
            if ((v92 & 0x7FFFu) < (v93 & 0x7FFFu))
            {
              v94 = v90;
              while (1)
              {
                *(v8 + v94 + 4) = v93;
                if (!v94)
                {
                  break;
                }

                v93 = *(v8 + v94 - 4);
                v94 -= 4;
                if ((v92 & 0x7FFFu) >= (v93 & 0x7FFFu))
                {
                  v95 = (v8 + v94 + 4);
                  goto LABEL_129;
                }
              }

              v95 = v8;
LABEL_129:
              *v95 = v92;
            }

            v87 = v91 + 1;
            v90 += 4;
          }

          while (v91 + 1 != a2);
        }
      }

      else if (!v89)
      {
        do
        {
          v127 = *v7;
          v126 = v7[1];
          v7 = v87;
          if ((v126 & 0x7FFFu) < (v127 & 0x7FFFu))
          {
            v128 = v87;
            do
            {
              *v128 = v127;
              v127 = *(v128 - 2);
              --v128;
            }

            while ((v126 & 0x7FFFu) < (v127 & 0x7FFFu));
            *v128 = v126;
          }

          ++v87;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v96 = (v9 - 2) >> 1;
        v97 = v96;
        do
        {
          v98 = v97;
          if (v96 >= v97)
          {
            v99 = (2 * v97) | 1;
            v100 = &v8[v99];
            if (2 * v98 + 2 >= v9)
            {
              v101 = *v100;
            }

            else
            {
              v101 = v100[1];
              result = v101 & 0x7FFF;
              if ((*v100 & 0x7FFFu) < result)
              {
                ++v100;
                v99 = 2 * v98 + 2;
              }

              else
              {
                v101 = *v100;
              }
            }

            v102 = &v8[v98];
            v103 = *v102;
            v104 = *v102 & 0x7FFF;
            if ((v101 & 0x7FFFu) >= v104)
            {
              do
              {
                *v102 = v101;
                v102 = v100;
                if (v96 < v99)
                {
                  break;
                }

                v105 = (2 * v99) | 1;
                v100 = &v8[v105];
                v99 = 2 * v99 + 2;
                if (v99 >= v9)
                {
                  v101 = *v100;
                  v99 = v105;
                }

                else
                {
                  v101 = *v100;
                  result = (v100 + 1);
                  if ((*v100 & 0x7FFFu) >= (v100[1] & 0x7FFFu))
                  {
                    v99 = v105;
                  }

                  else
                  {
                    v101 = v100[1];
                    ++v100;
                  }
                }
              }

              while ((v101 & 0x7FFFu) >= v104);
              *v102 = v103;
            }
          }

          v97 = v98 - 1;
        }

        while (v98);
        do
        {
          v106 = 0;
          v107 = *v8;
          v108 = v8;
          do
          {
            v109 = &v108[v106];
            v110 = v109 + 1;
            v111 = (2 * v106) | 1;
            v106 = 2 * v106 + 2;
            if (v106 >= v9)
            {
              v113 = *v110;
              v106 = v111;
            }

            else
            {
              v114 = v109[2];
              v112 = v109 + 2;
              v113 = v114;
              result = *(v112 - 1) & 0x7FFF;
              v115 = v114 & 0x7FFF;
              if (result < v115)
              {
                v110 = v112;
              }

              else
              {
                v113 = *(v112 - 1);
                v106 = v111;
              }
            }

            *v108 = v113;
            v108 = v110;
          }

          while (v106 <= ((v9 - 2) >> 1));
          if (v110 == --a2)
          {
            *v110 = v107;
          }

          else
          {
            *v110 = *a2;
            *a2 = v107;
            v116 = (v110 - v8 + 4) >> 2;
            v117 = v116 < 2;
            v118 = v116 - 2;
            if (!v117)
            {
              v119 = v118 >> 1;
              v120 = &v8[v119];
              v121 = *v120;
              v122 = *v110;
              v123 = *v110 & 0x7FFF;
              if ((*v120 & 0x7FFFu) < v123)
              {
                do
                {
                  *v110 = v121;
                  v110 = v120;
                  if (!v119)
                  {
                    break;
                  }

                  v119 = (v119 - 1) >> 1;
                  v120 = &v8[v119];
                  v121 = *v120;
                }

                while ((*v120 & 0x7FFFu) < v123);
                *v110 = v122;
              }
            }
          }

          v117 = v9-- <= 2;
        }

        while (!v117);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = v12 & 0x7FFF;
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v10 & 0x7FFF;
      v16 = *v8;
      v17 = *v8 & 0x7FFF;
      if (v15 >= v17)
      {
        if (v13 < v15)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if ((*v10 & 0x7FFFu) < (*v8 & 0x7FFFu))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v15)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v16;
        if ((*(a2 - 1) & 0x7FFFu) < v17)
        {
          *v10 = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v16;
        }
      }

      v24 = v10 - 1;
      v25 = *(v10 - 1);
      v26 = v25 & 0x7FFF;
      v27 = v8[1];
      v28 = *(a2 - 2);
      v29 = v28 & 0x7FFF;
      if (v26 >= (v27 & 0x7FFFu))
      {
        if (v29 < v26)
        {
          *v24 = v28;
          *(a2 - 2) = v25;
          v30 = v8[1];
          if ((*v24 & 0x7FFFu) < (v30 & 0x7FFFu))
          {
            v8[1] = *v24;
            *v24 = v30;
          }
        }
      }

      else
      {
        if (v29 < v26)
        {
          v8[1] = v28;
          goto LABEL_39;
        }

        v8[1] = v25;
        *v24 = v27;
        if ((*(a2 - 2) & 0x7FFFu) < (v27 & 0x7FFFu))
        {
          *v24 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v33 = v10[1];
      v31 = v10 + 1;
      v32 = v33;
      v34 = v33 & 0x7FFF;
      v35 = v8[2];
      v36 = *(a2 - 3);
      v37 = v36 & 0x7FFF;
      if (v34 >= (v35 & 0x7FFFu))
      {
        if (v37 < v34)
        {
          *v31 = v36;
          *(a2 - 3) = v32;
          v38 = v8[2];
          if ((*v31 & 0x7FFFu) < (v38 & 0x7FFFu))
          {
            v8[2] = *v31;
            *v31 = v38;
          }
        }
      }

      else
      {
        if (v37 < v34)
        {
          v8[2] = v36;
          goto LABEL_48;
        }

        v8[2] = v32;
        *v31 = v35;
        if ((*(a2 - 3) & 0x7FFFu) < (v35 & 0x7FFFu))
        {
          *v31 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v35;
        }
      }

      v39 = *v11;
      v40 = *v11 & 0x7FFF;
      v41 = *v24;
      v42 = *v24 & 0x7FFF;
      v43 = *v31;
      v44 = *v31 & 0x7FFF;
      if (v40 >= v42)
      {
        if (v44 >= v40)
        {
          goto LABEL_56;
        }

        *v11 = v43;
        *v31 = v39;
        v31 = v11;
        v39 = v41;
        if (v44 >= v42)
        {
          v39 = v43;
          goto LABEL_56;
        }
      }

      else if (v44 >= v40)
      {
        *v24 = v39;
        *v11 = v41;
        v24 = v11;
        v39 = v43;
        if (v44 >= v42)
        {
          v39 = v41;
LABEL_56:
          v45 = *v8;
          *v8 = v39;
          *v11 = v45;
          goto LABEL_57;
        }
      }

      *v24 = v43;
      *v31 = v41;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v8 & 0x7FFF;
    v20 = *v11;
    v21 = *v11 & 0x7FFF;
    if (v19 >= v21)
    {
      if (v13 < v19)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if ((*v8 & 0x7FFFu) < (*v11 & 0x7FFFu))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v19)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v20;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v20;
    if ((*(a2 - 1) & 0x7FFFu) < v21)
    {
      *v8 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v46 = *v8;
    if (a4)
    {
      v47 = *v8 & 0x7FFF;
LABEL_60:
      v48 = 0;
      do
      {
        v49 = v8[++v48];
      }

      while ((v49 & 0x7FFFu) < v47);
      v50 = &v8[v48];
      v51 = a2;
      if (v48 == 1)
      {
        v51 = a2;
        do
        {
          if (v50 >= v51)
          {
            break;
          }

          v53 = *--v51;
        }

        while ((v53 & 0x7FFFu) >= v47);
      }

      else
      {
        do
        {
          v52 = *--v51;
        }

        while ((v52 & 0x7FFFu) >= v47);
      }

      if (v50 >= v51)
      {
        v59 = v50 - 1;
      }

      else
      {
        v54 = *v51;
        v55 = &v8[v48];
        v56 = v51;
        do
        {
          *v55 = v54;
          *v56 = v49;
          do
          {
            v57 = v55[1];
            ++v55;
            v49 = v57;
          }

          while ((v57 & 0x7FFFu) < v47);
          do
          {
            v58 = *--v56;
            v54 = v58;
          }

          while ((v58 & 0x7FFFu) >= v47);
        }

        while (v55 < v56);
        v59 = v55 - 1;
      }

      if (v59 != v8)
      {
        *v8 = *v59;
      }

      *v59 = v46;
      if (v50 < v51)
      {
        goto LABEL_81;
      }

      v60 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::resolvePartialDependencies(void)::$_0 &,C3D::RenderGraph::Link *>(v8, v59);
      v8 = v59 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::resolvePartialDependencies(void)::$_0 &,C3D::RenderGraph::Link *>(v59 + 1, a2);
      if (result)
      {
        a2 = v59;
        if (!v60)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v60)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,C3D::RenderGraph::resolvePartialDependencies(void)::$_0 &,C3D::RenderGraph::Link *,false>(v7, v59, a3, a4 & 1);
        a4 = 0;
        v8 = v59 + 1;
      }
    }

    else
    {
      v47 = *v8 & 0x7FFF;
      if ((*(v8 - 1) & 0x7FFFu) < v47)
      {
        goto LABEL_60;
      }

      if (v47 >= (*(a2 - 1) & 0x7FFFu))
      {
        v62 = v8 + 1;
        do
        {
          v8 = v62;
          if (v62 >= a2)
          {
            break;
          }

          ++v62;
        }

        while (v47 >= (*v8 & 0x7FFFu));
      }

      else
      {
        do
        {
          v61 = v8[1];
          ++v8;
        }

        while (v47 >= (v61 & 0x7FFFu));
      }

      v63 = a2;
      if (v8 < a2)
      {
        v63 = a2;
        do
        {
          v64 = *--v63;
        }

        while (v47 < (v64 & 0x7FFFu));
      }

      if (v8 < v63)
      {
        v65 = *v8;
        v66 = *v63;
        do
        {
          *v8 = v66;
          *v63 = v65;
          do
          {
            v67 = v8[1];
            ++v8;
            v65 = v67;
          }

          while (v47 >= (v67 & 0x7FFFu));
          do
          {
            v68 = *--v63;
            v66 = v68;
          }

          while (v47 < (v68 & 0x7FFFu));
        }

        while (v8 < v63);
      }

      v69 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v69;
      }

      a4 = 0;
      *v69 = v46;
    }
  }

  v71 = *v8;
  v72 = v8[1];
  v73 = v72 & 0x7FFF;
  v74 = *v8 & 0x7FFF;
  v75 = *(a2 - 1);
  v76 = v75 & 0x7FFF;
  if (v73 >= v74)
  {
    if (v76 < v73)
    {
      v8[1] = v75;
      *(a2 - 1) = v72;
      v124 = *v8;
      if ((v8[1] & 0x7FFFu) < (*v8 & 0x7FFFu))
      {
        *v8 = v8[1];
        v8[1] = v124;
      }
    }
  }

  else
  {
    if (v76 >= v73)
    {
      *v8 = v72;
      v8[1] = v71;
      if ((*(a2 - 1) & 0x7FFFu) >= v74)
      {
        return result;
      }

      v8[1] = *(a2 - 1);
    }

    else
    {
      *v8 = v75;
    }

    *(a2 - 1) = v71;
  }

  return result;
}

int *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::resolvePartialDependencies(void)::$_0 &,C3D::RenderGraph::Link *,0>(int *result, int *a2, int *a3, int *a4, int *a5)
{
  v5 = *a2;
  v6 = *a2 & 0x7FFF;
  v7 = *result;
  v8 = *result & 0x7FFF;
  v9 = *a3;
  v10 = *a3 & 0x7FFF;
  if (v6 >= v8)
  {
    if (v10 >= v6)
    {
      v8 = *a3 & 0x7FFF;
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      v8 = v5 & 0x7FFF;
      if ((*a2 & 0x7FFFu) < (*result & 0x7FFFu))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
        v8 = *a3 & 0x7FFF;
      }
    }
  }

  else
  {
    if (v10 >= v6)
    {
      *result = v5;
      *a2 = v7;
      v5 = *a3;
      if ((*a3 & 0x7FFFu) >= v8)
      {
        v8 = *a3 & 0x7FFF;
        goto LABEL_12;
      }

      *a2 = v5;
    }

    else
    {
      *result = v9;
    }

    *a3 = v7;
    v5 = v7;
  }

LABEL_12:
  if ((*a4 & 0x7FFFu) < v8)
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if ((*a3 & 0x7FFFu) < (*a2 & 0x7FFFu))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if ((*a2 & 0x7FFFu) < (*result & 0x7FFFu))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if ((*a5 & 0x7FFFu) < (*a4 & 0x7FFFu))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if ((*a4 & 0x7FFFu) < (*a3 & 0x7FFFu))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if ((*a3 & 0x7FFFu) < (*a2 & 0x7FFFu))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if ((*a2 & 0x7FFFu) < (*result & 0x7FFFu))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::resolvePartialDependencies(void)::$_0 &,C3D::RenderGraph::Link *>(int *a1, int *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = *a1;
      v5 = a1[1];
      v6 = v5 & 0x7FFF;
      v7 = *a1 & 0x7FFF;
      v8 = *(a2 - 1);
      v9 = v8 & 0x7FFF;
      if (v6 >= v7)
      {
        if (v9 < v6)
        {
          a1[1] = v8;
          *(a2 - 1) = v5;
          v29 = *a1;
          if ((a1[1] & 0x7FFFu) < (*a1 & 0x7FFFu))
          {
            *a1 = a1[1];
            a1[1] = v29;
          }
        }

        return 1;
      }

      if (v9 >= v6)
      {
        *a1 = v5;
        a1[1] = v4;
        if ((*(a2 - 1) & 0x7FFFu) >= v7)
        {
          return 1;
        }

        a1[1] = *(a2 - 1);
      }

      else
      {
        *a1 = v8;
      }

      *(a2 - 1) = v4;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,C3D::RenderGraph::resolvePartialDependencies(void)::$_0 &,C3D::RenderGraph::Link *,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v19 = a1 + 1;
    v20 = a1[1];
    v21 = a1 + 2;
    v22 = a1[2];
    v23 = v20 & 0x7FFF;
    v24 = *a1;
    v25 = *a1 & 0x7FFF;
    v26 = v22 & 0x7FFF;
    if (v23 >= v25)
    {
      if (v26 < v23)
      {
        v27 = a1;
        *v19 = v22;
        *v21 = v20;
        v28 = a1 + 1;
        v39 = v26 >= v25;
        v25 = v20 & 0x7FFF;
        v26 = v25;
        if (v39)
        {
          goto LABEL_47;
        }

        goto LABEL_45;
      }
    }

    else
    {
      if (v26 < v23)
      {
        v27 = a1;
        v28 = a1 + 2;
        v20 = *a1;
LABEL_45:
        *v27 = v22;
        *v28 = v24;
        v26 = v25;
LABEL_47:
        if ((*(a2 - 1) & 0x7FFFu) < v26)
        {
          *v21 = *(a2 - 1);
          *(a2 - 1) = v20;
          v40 = *v21;
          v41 = *v19;
          if ((v40 & 0x7FFFu) < (v41 & 0x7FFFu))
          {
            a1[1] = v40;
            a1[2] = v41;
            v42 = *a1;
            if ((v40 & 0x7FFFu) < (*a1 & 0x7FFFu))
            {
              *a1 = v40;
              a1[1] = v42;
            }
          }
        }

        return 1;
      }

      *a1 = v20;
      a1[1] = v24;
      v27 = a1 + 1;
      v28 = a1 + 2;
      v20 = v24;
      if (v26 < v25)
      {
        goto LABEL_45;
      }
    }

    v20 = v22;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *a1;
    if ((*(a2 - 1) & 0x7FFFu) < (*a1 & 0x7FFFu))
    {
      *a1 = *(a2 - 1);
      *(a2 - 1) = v3;
    }

    return 1;
  }

LABEL_13:
  v11 = a1 + 2;
  v10 = a1[2];
  v12 = a1[1];
  v13 = v12 & 0x7FFF;
  v14 = *a1;
  v15 = *a1 & 0x7FFF;
  v16 = v10 & 0x7FFF;
  if (v13 >= v15)
  {
    if (v16 >= v13)
    {
      goto LABEL_26;
    }

    a1[1] = v10;
    *v11 = v12;
    v17 = a1;
    v18 = a1 + 1;
LABEL_24:
    if (v16 >= v15)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v17 = a1;
  v18 = a1 + 2;
  if (v16 >= v13)
  {
    *a1 = v12;
    a1[1] = v14;
    v17 = a1 + 1;
    v18 = a1 + 2;
    goto LABEL_24;
  }

LABEL_25:
  *v17 = v10;
  *v18 = v14;
LABEL_26:
  v30 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v31 = 0;
  for (i = 12; ; i += 4)
  {
    v33 = *v30;
    v34 = *v30 & 0x7FFF;
    v35 = *v11;
    if (v34 < (v35 & 0x7FFFu))
    {
      v36 = i;
      while (1)
      {
        *(a1 + v36) = v35;
        v37 = v36 - 4;
        if (v36 == 4)
        {
          break;
        }

        v35 = *(a1 + v36 - 8);
        v36 -= 4;
        if (v34 >= (v35 & 0x7FFFu))
        {
          v38 = (a1 + v37);
          goto LABEL_34;
        }
      }

      v38 = a1;
LABEL_34:
      *v38 = v33;
      if (++v31 == 8)
      {
        break;
      }
    }

    v11 = v30++;
    if (v30 == a2)
    {
      return 1;
    }
  }

  return v30 + 1 == a2;
}

uint64_t C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::insert(uint64_t a1, uint64_t a2, void *a3)
{
  while (1)
  {
    v6 = *(a1 + 36);
    v7 = (v6 - 1) & a2;
    v8 = *(a1 + 24);
    v9 = *(v8 + 2 * v7);
    if (v9 >= 2)
    {
      break;
    }

LABEL_6:
    v12 = v7 + 496;
    v13 = v6 + 15;
    if (v13 < v7 + 496)
    {
      v12 = v13;
    }

    LODWORD(v14) = v7;
    v15 = v12 - v7;
    if (v12 > v7)
    {
      v14 = v7;
      while ((*(v8 + 2 * v14) & 1) != 0)
      {
        ++v14;
        if (!--v15)
        {
          goto LABEL_32;
        }
      }
    }

    if (v14 != v12)
    {
      *(v8 + 2 * v14) |= 1u;
      if (v14 <= v7 + 14)
      {
        v20 = v14;
      }

      else
      {
        while (2)
        {
          if (v14 >= 0xF)
          {
            v16 = v14 - 14;
          }

          else
          {
            v16 = 0;
          }

          v17 = v16 - 1;
          if (v16 <= v14)
          {
            v18 = v14;
          }

          else
          {
            v18 = v16;
          }

          v19 = 1;
          while (1)
          {
            v20 = v17 + 1;
            if (v16 <= v20)
            {
              break;
            }

LABEL_26:
            ++v19;
            v17 = v20;
            if (v20 == v18)
            {
              goto LABEL_31;
            }
          }

          v21 = 1 << (v17 - v16 + 2);
          v22 = v19;
          v23 = v16;
          while (1)
          {
            v24 = v23;
            if ((v21 & *(v8 + 2 * v23)) != 0)
            {
              break;
            }

            ++v23;
            LOWORD(v21) = v21 >> 1;
            --v22;
            if (v24 + 1 > v20)
            {
              goto LABEL_26;
            }
          }

          if (v20 >= v14)
          {
LABEL_31:
            *(v8 + 2 * v14) ^= 1u;
            goto LABEL_32;
          }

          v25 = *(a1 + 16);
          *(*(a1 + 8) + 8 * v14) = *(*(a1 + 8) + 8 * v20);
          *(v25 + 8 * v14) = *(v25 + 8 * v20);
          v8 = *(a1 + 24);
          *(v8 + 2 * v23) = (*(v8 + 2 * v23) | (1 << (v14 - v23 + 1))) ^ (1 << v22);
          LODWORD(v14) = v20;
          if (v20 > v7 + 14)
          {
            continue;
          }

          break;
        }

        LOBYTE(v14) = v20;
      }

      *(*(a1 + 16) + 8 * v20) = *a3;
      *(*(a1 + 8) + 8 * v20) = a2;
      v27 = *(a1 + 24);
      *(v27 + 2 * v20) |= 1u;
      result = 1;
      *(v27 + 2 * v7) |= 1 << (v14 - v7 + 1);
      ++*(a1 + 32);
      return result;
    }

LABEL_32:
    C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::_grow(a1);
  }

  v10 = (v6 - 1) & a2;
  while ((v9 & 2) == 0 || *(*(a1 + 8) + 8 * v10) != a2)
  {
    ++v10;
    v11 = v9 > 3;
    v9 >>= 1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  result = 0;
  *(*(a1 + 16) + 8 * v10) = *a3;
  return result;
}

void C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::_grow(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 36);
  C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::_allocate(a1, 2 * v5);
  v6 = (v5 + 15);
  if (v6)
  {
    do
    {
      v7 = *v4++;
      if (v7)
      {
        C3D::Hash<C3D::Pass *,C3D::ScratchAllocator>::insert(a1, *v3, v2);
      }

      ++v3;
      v2 += 8;
      --v6;
    }

    while (v6);
  }
}

void OUTLINED_FUNCTION_5_0(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void OUTLINED_FUNCTION_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_error_impl(a1, v4, OS_LOG_TYPE_ERROR, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t result, float a2)
{
  *v3 = a2;
  *v2 = result;
  return result;
}

C3D::RenderPass *C3D::GaussianBlurPass::GaussianBlurPass(C3D::GaussianBlurPass *this, C3D::RenderGraph *a2, C3D::Pass *a3, const Parameters *a4)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC3000;
  *(result + 15) = *&a4->var0;
  *(result + 20) = *&a4[1].var0;
  v6 = *&a4[1].var2;
  if (v6 <= 1)
  {
    LOWORD(v6) = 1;
  }

  *(result + 21) = v6;
  return result;
}

const char *C3D::GaussianBlurPass::name(C3D::GaussianBlurPass *this)
{
  if (*(this + 244))
  {
    return "GaussianBlurPass-Y";
  }

  else
  {
    return "GaussianBlurPass-X";
  }
}

void C3D::GaussianBlurPass::setup(C3D::GaussianBlurPass *this)
{
  C3D::Pass::setInputCount(this, 1u);

  C3D::Pass::setOutputCount(this, 1u);
}

uint64_t C3D::GaussianBlurPass::compile(C3D::GaussianBlurPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  v3 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  [-[SCNMTLResourceManager libraryManager](v3) frameworkLibrary];
  v4 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ (*(this + 249) << 24) ^ (*(this + 248) << 16) ^ (*(this + 247) << 8) ^ *(this + 246) ^ 0x1A929E4D6F47A654);
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v4 ^ (v4 >> 47))) >> 47));
  *(this + 32) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::GaussianBlurPass::execute(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 16));
  v6 = [(SCNMTLRenderContext *)RenderContext frameConstantBufferPool];
  v7 = C3D::Pass::inputTextureAtIndex(a1, 0);
  v8 = v7;
  if (*(a2 + 18))
  {
    v8 = [v7 newTextureViewWithPixelFormat:objc_msgSend(v7 textureType:"pixelFormat") levels:objc_msgSend(v7 slices:"textureType"), *(a2 + 18), 1, 0, 1];
  }

  SCNMTLRenderCommandEncoder::setFragmentTexture(v4, v8, 0);
  if (*(a1 + 246) || *(a1 + 248))
  {
    v9 = C3D::SmartPtr<SCNMTLRenderPipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 256) + 136);
    if (*(v4 + 3248) != v9)
    {
      *(v4 + 3248) = v9;
      [*(v4 + 3392) setFragmentSamplerState:v9 atIndex:0];
    }
  }

  v35 = [v8 width];
  v10 = [v8 height];
  v11.f32[0] = v35;
  v11.f32[1] = v10;
  v12 = *(a1 + 240);
  v13 = *(a1 + 244);
  __asm { FMOV            V0.2S, #1.0 }

  v36 = vdiv_f32(_D0, vmaxnm_f32(v11, _D0));
  *&v19 = C3DComputeGaussianProbability(0.0, v12);
  v20 = 0;
  v21 = 0;
  *&v22 = 0;
  *(&v22 + 1) = v19;
  v41[0] = v22;
  v23.i32[1] = v36.i32[1];
  v23.i32[0] = 0;
  v24 = vbsl_s8(vcltz_s32(vshl_n_s32(vdup_n_s32(v13), 0x1FuLL)), v36.u32[0], v23);
  v25 = 1;
  while (1)
  {
    v37 = v19;
    v26 = (v25 + 1);
    v27 = C3DComputeGaussianProbability(v25, v12);
    v28 = C3DComputeGaussianProbability(v26, v12);
    v30 = v27 + v28;
    if ((v27 + v28) <= 0.002)
    {
      break;
    }

    *&v29 = vmul_n_f32(v24, ((v28 * v26) + (v25 * v27)) / v30);
    *(&v29 + 2) = v27 + v28;
    ++v21;
    v19 = v37;
    *&v19 = *&v37 + (v30 * 2.0);
    v41[++v20] = v29;
    v25 += 2;
    if (v21 == 15)
    {
      goto LABEL_14;
    }
  }

  if (v21 < 0xF)
  {
    bzero(&v41[v20 + 1], 240 - v20 * 16);
  }

  LODWORD(v19) = v37;
LABEL_14:
  v31 = (v21 + 1);
  v32 = 8;
  do
  {
    *(v41 + v32) = *(v41 + v32) / *&v19;
    v32 += 16;
    --v31;
  }

  while (v31);
  if (v21 >= 0xE)
  {
    LODWORD(v21) = 14;
  }

  v38 = 0;
  v39 = 0;
  v40 = 0;
  SCNMTLBufferPool::allocateAndCopy(v6, v41, 0x100uLL, &v38);
  v33 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 256) + 8 * v21 + 16) :"state" detail:? :?NSRetainFct];
  if (*(v4 + 3376) != v33)
  {
    *(v4 + 3376) = v33;
    [*(v4 + 3392) setRenderPipelineState:v33];
  }

  SCNMTLRenderCommandEncoder::setFragmentBuffer(v4, v39, v40, 0);
  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v4);
}

void C3D::GaussianBlurPass::Resource::~Resource(C3D::GaussianBlurPass::Resource *this)
{
  *this = &unk_282DC3070;
  v2 = *(this + 17);
  if (v2)
  {
  }

  for (i = 128; i != 8; i -= 8)
  {
    v4 = *(this + i);
    if (v4)
    {
    }
  }
}

{
  *this = &unk_282DC3070;
  v2 = *(this + 17);
  if (v2)
  {
  }

  v3 = 128;
  while (1)
  {
    v4 = *(this + v3);
    if (v4)
    {
    }

    v3 -= 8;
    if (v3 == 8)
    {

      JUMPOUT(0x21CF07610);
    }
  }
}

void C3D::ComputePass::ComputePass(C3D::ComputePass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  C3D::Pass::Pass(this, a2, a3);
  *v3 = &unk_282DC3090;
  *(v3 + 32) = 3;
}

void C3DScratchAllocator::ClearToCapacity(C3DScratchAllocator *this, unint64_t a2)
{
  *(this + 2) = 0;
  v4 = *(this + 3);
  v5 = MEMORY[0x277D85F48];
  if (v4)
  {
    do
    {
      v6 = v4[3];
      MEMORY[0x21CF08CF0](*v5, *v4, v4[1]);
      MEMORY[0x21CF07610](v4, 0x10A0C4064A2AE3FLL);
      v4 = v6;
    }

    while (v6);
  }

  *(this + 3) = 0;
  *(this + 4) = this;
  if (*(this + 1) < a2)
  {
    MEMORY[0x21CF08CF0](*v5, *this);

    VMAllocateChunk(this, a2);
  }
}

void C3DScratchAllocator::Reset(C3DScratchAllocator *this)
{
  v1 = *(this + 1);
  for (i = *(this + 3); i; i = *(i + 24))
  {
    v1 += *(i + 8);
  }

  C3DScratchAllocator::ClearToCapacity(this, v1);
}

C3DScratchAllocator *C3DScratchAllocatorDelete(C3DScratchAllocator *result)
{
  if (result)
  {
    v1 = result;
    C3DScratchAllocator::ClearToCapacity(result, 0);
    MEMORY[0x21CF08CF0](*MEMORY[0x277D85F48], *v1, *(v1 + 1));

    JUMPOUT(0x21CF07610);
  }

  return result;
}

uint64_t C3DApplyBlendStatesToRenderPipelineDescriptor(uint64_t a1, void *a2)
{
  Desc = C3DBlendStatesGetDesc(a1, 0);
  v4 = HIDWORD(Desc);
  v5 = [objc_msgSend(a2 "colorAttachments")];
  [v5 setBlendingEnabled:{(objc_msgSend(v5, "pixelFormat") != 0) & Desc}];
  [v5 setSourceRGBBlendFactor:C3DBlendFactorToMTLBlendFactor(BYTE2(Desc))];
  [v5 setDestinationRGBBlendFactor:C3DBlendFactorToMTLBlendFactor(BYTE3(Desc))];
  [v5 setRgbBlendOperation:C3DBlendOpToMTLBlendOperation(BYTE4(Desc))];
  v6 = HIBYTE(Desc);
  v7 = Desc >> 40;
  v8 = (Desc & 0x100) == 0;
  if ((Desc & 0x100) != 0)
  {
    v9 = BYTE6(Desc);
  }

  else
  {
    LOBYTE(v7) = BYTE2(Desc);
    v9 = BYTE3(Desc);
  }

  if (v8)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  [v5 setSourceAlphaBlendFactor:C3DBlendFactorToMTLBlendFactor(v7)];
  [v5 setDestinationAlphaBlendFactor:C3DBlendFactorToMTLBlendFactor(v9)];
  v11 = C3DBlendOpToMTLBlendOperation(v10);

  return [v5 setAlphaBlendOperation:v11];
}

uint64_t SCNResourceRegistrySetup(uint64_t *a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 258;
  }

  result = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:v3 valueOptions:0 capacity:100];
  *a1 = result;
  return result;
}

void __removeMatchingProgram(const void *value, void *a2, void *a3)
{
  if (!*a3 || a2[2] == *a3)
  {
    v5 = a3[1];
    if (!v5 || a2[3] == v5)
    {
      Mutable = a3[2];
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, 0);
        a3[2] = Mutable;
      }

      CFArrayAppendValue(Mutable, value);
    }
  }
}

uint64_t _fillVertexDescriptor(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 3)
  {
    switch(a3)
    {
      case 4:
        v8 = 2;
        goto LABEL_20;
      case 5:
        v8 = 4;
        goto LABEL_20;
      case 6:
        v8 = 5;
        goto LABEL_20;
    }

LABEL_13:
    v9 = scn_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      _fillVertexDescriptor();
    }

    v8 = 14;
    goto LABEL_20;
  }

  if (a3 < 2)
  {
    v8 = a3;
    goto LABEL_20;
  }

  if (a3 == 2)
  {
    v8 = 3;
    goto LABEL_20;
  }

  if (a3 != 3)
  {
    goto LABEL_13;
  }

  if (a4 == -1)
  {
    v8 = 6;
    goto LABEL_20;
  }

  v8 = a4 + 6;
  if ((a4 + 6) == 14)
  {
    goto LABEL_13;
  }

LABEL_20:
  Accessor = C3DMeshSourceGetAccessor(a2);
  ComponentsValueType = C3DSourceAccessorGetComponentsValueType(Accessor);
  ComponentsCountPerValue = C3DSourceAccessorGetComponentsCountPerValue(Accessor);
  CompoundType = C3DBaseTypeGetCompoundType(ComponentsValueType, ComponentsCountPerValue);
  MTLVertexFormat = C3DMeshSourceGetMTLVertexFormat(a2);
  if (!MTLVertexFormat)
  {
    MTLVertexFormat = SCNMTLVertexFormatFromC3DBaseType(CompoundType);
  }

  [objc_msgSend(objc_msgSend(a1 "attributes")];
  if (![objc_msgSend(objc_msgSend(a1 "attributes")])
  {
    v15 = scn_default_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _fillVertexDescriptor(CompoundType, v15);
    }
  }

  [objc_msgSend(objc_msgSend(a1 "attributes")];
  [objc_msgSend(objc_msgSend(a1 "attributes")];
  [objc_msgSend(objc_msgSend(a1 "layouts")];
  InstancingDivisor = C3DMeshSourceGetInstancingDivisor(a2);
  if (!InstancingDivisor)
  {
    return [objc_msgSend(objc_msgSend(a1 "layouts")];
  }

  v17 = InstancingDivisor;
  [objc_msgSend(objc_msgSend(a1 "layouts")];
  return [objc_msgSend(objc_msgSend(a1 "layouts")];
}

void sub_21BF7F768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BF7F9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_2_6(void *a1, const char *a2)
{

  return [a1 initWithKeyOptions:258 valueOptions:0 capacity:100];
}

uint64_t OUTLINED_FUNCTION_9_1@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  a4 = a1;

  return [v5 dispatchThreadgroups:&a5 threadsPerThreadgroup:&a2];
}

uint64_t OUTLINED_FUNCTION_10_1(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  return [a4 threadExecutionWidth];
}

uint64_t (*C3DKeyFrameInterpolatorForType(int a1, int a2, int a3, signed int a4, char a5))()
{
  v5 = _C3DKeyFrameBoolInterpolator;
  switch(a1)
  {
    case 1:
    case 7:
      v5 = _C3DKeyFrameFloatInterpolator;
      if (a4 <= 2 && (a5 & 1) != 0)
      {
        v6 = off_282DC3130;
        return v6[a4];
      }

      return v5;
    case 2:
      v5 = _C3DKeyFrameIntInterpolator;
      if (a4 <= 2 && (a5 & 1) != 0)
      {
        v6 = off_282DC3160;
        return v6[a4];
      }

      return v5;
    case 3:
      return v5;
    case 4:
    case 16:
      v5 = _C3DKeyFrameCharInterpolator;
      if (a4 <= 2 && (a5 & 1) != 0)
      {
        v6 = off_282DC3238;
        return v6[a4];
      }

      return v5;
    case 6:
      v5 = _C3DKeyFrameDoubleInterpolator;
      if (a4 <= 2 && (a5 & 1) != 0)
      {
        v6 = off_282DC3148;
        return v6[a4];
      }

      return v5;
    case 8:
    case 18:
      v5 = _C3DKeyFrameVector2Interpolator;
      if (a4 <= 2 && (a5 & 1) != 0)
      {
        v6 = off_282DC31F0;
        return v6[a4];
      }

      return v5;
    case 9:
    case 19:
      v5 = _C3DKeyFrameVector3Interpolator;
      if (a4 <= 2 && (a5 & 1) != 0)
      {
        v6 = off_282DC31D8;
        return v6[a4];
      }

      return v5;
    case 10:
    case 20:
      if (a4 < 3)
      {
        v7 = a5;
      }

      else
      {
        v7 = 0;
      }

      if (a2 == 3)
      {
        v8 = _C3DKeyFrameQuaternionInterpolator;
        if ((v7 & 1) == 0)
        {
          return v8;
        }

        v6 = off_282DC3190;
      }

      else if (a2 == 4)
      {
        v8 = _C3DKeyFrameAxisAngleInterpolator;
        if ((v7 & 1) == 0)
        {
          return v8;
        }

        v6 = off_282DC3178;
      }

      else
      {
        v8 = _C3DKeyFrameVector4Interpolator;
        if ((v7 & 1) == 0)
        {
          return v8;
        }

        v6 = off_282DC31A8;
      }

      return v6[a4];
    case 11:
      if (a4 < 3)
      {
        v9 = a5;
      }

      else
      {
        v9 = 0;
      }

      if (a3)
      {
        v8 = _C3DKeyFrameMatrix4x4FastInterpolator;
        if (v9)
        {
          v6 = off_282DC3208;
          return v6[a4];
        }
      }

      else
      {
        v8 = _C3DKeyFrameMatrix4x4Interpolator;
        if (v9)
        {
          v6 = off_282DC3220;
          return v6[a4];
        }
      }

      return v8;
    case 13:
      v5 = _C3DKeyFrameColor4Interpolator;
      if (a4 > 2 || (a5 & 1) == 0)
      {
        return v5;
      }

      v6 = off_282DC31C0;
      return v6[a4];
    default:
      return 0;
  }
}

float _C3DKeyFrameFloatInterpolator_linear(float *a1, float *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float *a8)
{
  v8 = *a1 + (*a2 - *a1) * a3;
  if (a7)
  {
    v8 = v8 + *a8;
  }

  result = v8;
  *a8 = result;
  return result;
}

float *_C3DKeyFrameFloatInterpolator_discrete(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 = v7 + *a7;
  }

  *a7 = v7;
  return result;
}

float _C3DKeyFrameFloatInterpolator_cubic(float *a1, float *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float *a8)
{
  v8 = a3 * a3 * a3;
  v9 = (v8 + a3 * a3 * -2.0 + a3) * *(a5 + 4) + (1.0 - (a3 * a3 * 3.0 - v8 * 2.0)) * *a1 + (a3 * a3 * 3.0 + v8 * -2.0) * *a2 + (v8 - a3 * a3) * *(a6 + 4);
  if (a7)
  {
    v9 = v9 + *a8;
  }

  result = v9;
  *a8 = result;
  return result;
}

float _C3DKeyFrameFloatInterpolator(float *a1, float *a2, int a3, uint64_t a4, uint64_t a5, int a6, float *a7, double a8)
{
  if (!a3)
  {
    v9 = *a1 + (*a2 - *a1) * a8;
    if (a6)
    {
      v9 = v9 + *a7;
    }

    result = v9;
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    result = *a1;
    if (a6)
    {
      result = result + *a7;
    }

LABEL_8:
    *a7 = result;
    return result;
  }

  return _C3DKeyFrameFloatInterpolator_cubic(a1, a2, a8, 0, a4, a5, a6, a7);
}

double *_C3DKeyFrameDoubleInterpolator_linear(double *result, double *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double *a8)
{
  v8 = *result + (*a2 - *result) * a3;
  if (a7)
  {
    v8 = *a8 + v8;
  }

  *a8 = v8;
  return result;
}

double *_C3DKeyFrameDoubleInterpolator_discrete(double *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, double *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 = v7 + *a7;
  }

  *a7 = v7;
  return result;
}

double *_C3DKeyFrameDoubleInterpolator_cubic(double *result, double *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double *a8)
{
  v8 = a3 * a3 * a3;
  v9 = (v8 + a3 * a3 * -2.0 + a3) * *(a5 + 4) + (1.0 - (a3 * a3 * 3.0 - v8 * 2.0)) * *result + (a3 * a3 * 3.0 + v8 * -2.0) * *a2 + (v8 - a3 * a3) * *(a6 + 4);
  if (a7)
  {
    v9 = *a8 + v9;
  }

  *a8 = v9;
  return result;
}

double *_C3DKeyFrameDoubleInterpolator(double *result, double *a2, int a3, uint64_t a4, uint64_t a5, int a6, double *a7, double a8)
{
  if (!a3)
  {
    v8 = *result + (*a2 - *result) * a8;
    if (!a6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a3 == 1)
  {
    v8 = *result;
    if (!a6)
    {
LABEL_5:
      *a7 = v8;
      return result;
    }

LABEL_4:
    v8 = v8 + *a7;
    goto LABEL_5;
  }

  return _C3DKeyFrameDoubleInterpolator_cubic(result, a2, a8, 0, a4, a5, a6, a7);
}

int *_C3DKeyFrameIntInterpolator_linear(int *result, _DWORD *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int *a8)
{
  v8 = *result + (*a2 - *result) * a3;
  if (a7)
  {
    v8 = v8 + *a8;
  }

  *a8 = v8;
  return result;
}

int *_C3DKeyFrameIntInterpolator_discrete(int *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, _DWORD *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 += *a7;
  }

  *a7 = v7;
  return result;
}

int *_C3DKeyFrameIntInterpolator_cubic(int *result, int *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, int *a8)
{
  v8 = a3 * a3 * a3;
  v9 = (v8 + a3 * a3 * -2.0 + a3) * *(a5 + 4) + (1.0 - (a3 * a3 * 3.0 - v8 * 2.0)) * *result + (a3 * a3 * 3.0 + v8 * -2.0) * *a2 + (v8 - a3 * a3) * *(a6 + 4);
  if (a7)
  {
    v9 = v9 + *a8;
  }

  *a8 = v9;
  return result;
}

int *_C3DKeyFrameIntInterpolator(int *result, int *a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6, int *a7, double a8)
{
  if (a3 > 1)
  {
    return _C3DKeyFrameIntInterpolator_cubic(result, a2, a8, 0, a4, a5, a6, a7);
  }

  v8 = *result;
  if (a6)
  {
    v8 += *a7;
  }

  *a7 = v8;
  return result;
}

float32x4_t *_C3DKeyFrameAxisAngleInterpolator_linear(float32x4_t *result, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v8 = *result;
  v9 = vceqzq_f32(*result);
  v9.i32[3] = v9.i32[2];
  v10 = vminvq_u32(v9);
  v11 = *a2;
  if ((v10 & 0x80000000) != 0)
  {
    v8 = *a2;
    v8.i32[3] = 0;
    v15 = v8;
    result = &v15;
  }

  v12 = vceqzq_f32(v11);
  v12.i32[3] = v12.i32[2];
  if ((vminvq_u32(v12) & 0x80000000) != 0)
  {
    v8.i32[3] = 0;
    v15 = v8;
    v11 = v8;
  }

  v13 = a3;
  v14 = vmlaq_n_f32(*result, vsubq_f32(v11, *result), v13);
  if (a7)
  {
    v14 = vaddq_f32(*a8, v14);
  }

  *a8 = v14;
  return result;
}

float32x4_t *_C3DKeyFrameAxisAngleInterpolator_discrete(float32x4_t *result, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7)
{
  v7 = *result;
  v8 = vceqzq_f32(*result);
  v8.i32[3] = v8.i32[2];
  if ((vminvq_u32(v8) & 0x80000000) != 0)
  {
    v7 = *a2;
    v7.i32[3] = 0;
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = *result;
    goto LABEL_6;
  }

  if (!a6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = vaddq_f32(v7, *a7);
LABEL_6:
  *a7 = v9;
  return result;
}

float32x4_t *_C3DKeyFrameAxisAngleInterpolator(float32x4_t *result, float32x4_t *a2, int a3, double a4, int32x4_t a5, double a6, int32x4_t a7, uint64_t a8, uint64_t a9, int a10, float32x4_t *a11)
{
  if (a3 == 1)
  {
    v11 = *result;
    v12 = vceqzq_f32(*result);
    v12.i32[3] = v12.i32[2];
    if ((vminvq_u32(v12) & 0x80000000) != 0)
    {
      v11 = *a2;
      v11.i32[3] = 0;
      if (a10)
      {
        goto LABEL_4;
      }
    }

    else if (a10)
    {
LABEL_4:
      v13 = vaddq_f32(v11, *a11);
LABEL_14:
      *a11 = v13;
      return result;
    }

    v13 = *result;
    goto LABEL_14;
  }

  a5.i32[0] = 0;
  v14 = vceqzq_f32(*result);
  v14.i32[3] = v14.i32[2];
  a7.i32[0] = vminvq_u32(v14);
  v15 = *a2;
  v16 = *a2;
  v16.i32[3] = 0;
  v17 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(a5, a7), 0), v16, *result);
  v18 = vceqzq_f32(*a2);
  v18.i32[3] = v18.i32[2];
  if ((vminvq_u32(v18) & 0x80000000) != 0)
  {
    v19 = &v22;
    if (a7.i32[0] >= 0)
    {
      v19 = result;
    }

    v15 = v17;
    v15.i32[3] = 0;
    v22 = v15;
    v17 = *v19;
  }

  v20 = a4;
  v21 = vmlaq_n_f32(v17, vsubq_f32(v15, v17), v20);
  if (a10)
  {
    v21 = vaddq_f32(v21, *a11);
  }

  *a11 = v21;
  return result;
}

double _C3DKeyFrameQuaternionInterpolator_linear(float32x4_t *a1, float32x4_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, float32x4_t *a14)
{
  if (a13)
  {
    v18 = 0uLL;
    v15 = a3;
    C3DQuaternionSlerp(a1, a2, &v18, v15, a4, a5, a6, a7, a8, a9);
    *&result = C3DQuaternionAdd(&v18, a14, a14).u64[0];
  }

  else
  {
    v17 = a3;

    *&result = C3DQuaternionSlerp(a1, a2, a14, v17, a4, a5, a6, a7, a8, a9).u64[0];
  }

  return result;
}

float32x4_t _C3DKeyFrameQuaternionInterpolator_discrete(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7)
{
  if (a6)
  {
    result.i64[0] = C3DQuaternionAdd(a1, a7, a7).u64[0];
  }

  else
  {
    result = *a1;
    *a7 = *a1;
  }

  return result;
}

float32x4_t _C3DKeyFrameQuaternionInterpolator(float32x4_t *a1, float32x4_t *a2, int a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7, double a8, double a9, double a10, double a11, double a12, double a13, float32x4_t a14)
{
  if (a3 == 1)
  {
    if (a6)
    {
      result.i64[0] = C3DQuaternionAdd(a1, a7, a7).u64[0];
    }

    else
    {
      result = *a1;
      *a7 = *a1;
    }
  }

  else
  {
    *result.i64 = _C3DKeyFrameQuaternionInterpolator_linear(a1, a2, a8, a9, a10, a11, a12, a13, a14, 0, a4, a5, a6, a7);
  }

  return result;
}

float32x4_t *_C3DKeyFrameVector4Interpolator_linear(float32x4_t *result, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v8 = a3;
  v9 = vmlaq_n_f32(*result, vsubq_f32(*a2, *result), v8);
  if (a7)
  {
    v9 = vaddq_f32(*a8, v9);
  }

  *a8 = v9;
  return result;
}

float32x4_t _C3DKeyFrameVector4Interpolator_discrete(float32x4_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x4_t *a7)
{
  if (a6)
  {
    result = vaddq_f32(*a1, *a7);
    *a7 = result;
  }

  else
  {
    result = *a1;
    *a7 = *a1;
  }

  return result;
}

float32x4_t *_C3DKeyFrameVector4Interpolator_cubic(float32x4_t *result, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  v8 = a3;
  v9 = vmlaq_n_f32(*result, vsubq_f32(*a2, *result), v8);
  if (a7)
  {
    v9 = vaddq_f32(*a8, v9);
  }

  *a8 = v9;
  return result;
}

float32x4_t *_C3DKeyFrameVector4Interpolator(float32x4_t *result, float32x4_t *a2, int a3, double a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  if (a3 == 1)
  {
    if (a7)
    {
      v8 = vaddq_f32(*result, *a8);
    }

    else
    {
      v8 = *result;
    }

    *a8 = v8;
  }

  else
  {
    v9 = a4;
    v10 = vmlaq_n_f32(*result, vsubq_f32(*a2, *result), v9);
    if (a7)
    {
      v10 = vaddq_f32(v10, *a8);
    }

    *a8 = v10;
  }

  return result;
}

float _C3DKeyFrameColor4Interpolator_linear(float *a1, float *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float *a8)
{
  if (a7)
  {
    v12[0] = 0;
    v12[1] = 0;
    v9 = a3;
    C3DColor4Lerp(a1, a2, v12, v9);
    return C3DColor4Add(v12, a8, a8);
  }

  else
  {
    v11 = a3;

    return C3DColor4Lerp(a1, a2, a8, v11);
  }
}

__n128 _C3DKeyFrameColor4Interpolator_discrete(float *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float *a7)
{
  if (a6)
  {
    result.n128_f32[0] = C3DColor4Add(a1, a7, a7);
  }

  else
  {
    result = *a1;
    *a7 = *a1;
  }

  return result;
}

__n128 _C3DKeyFrameColor4Interpolator(float *a1, float *a2, int a3, uint64_t a4, uint64_t a5, int a6, float *a7, double a8)
{
  if (a3 == 1)
  {
    if (a6)
    {
      result.n128_f32[0] = C3DColor4Add(a1, a7, a7);
    }

    else
    {
      result = *a1;
      *a7 = *a1;
    }
  }

  else
  {
    result.n128_f32[0] = _C3DKeyFrameColor4Interpolator_linear(a1, a2, a8, 0, a4, a5, a6, a7);
  }

  return result;
}

uint64_t _C3DKeyFrameVector3Interpolator_linear(uint64_t result, uint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10)
{
  a4.i64[0] = *result;
  a4.i32[2] = *(result + 8);
  a5.i64[0] = *a2;
  a5.i32[2] = *(a2 + 8);
  v10 = *a3.i64;
  v11 = vmlaq_n_f32(a4, vsubq_f32(a5, a4), v10);
  if (a9)
  {
    a3.i64[0] = *a10;
    a3.i32[2] = *(a10 + 8);
    v11 = vaddq_f32(v11, a3);
  }

  *a10 = v11.i64[0];
  *(a10 + 8) = v11.i32[2];
  return result;
}

float *_C3DKeyFrameVector3Interpolator_discrete(float *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float *a7)
{
  if (a6)
  {
    v7 = a7[1];
    *a7 = *result + *a7;
    a7[1] = result[1] + v7;
    a7[2] = result[2] + a7[2];
  }

  else
  {
    v8 = *result;
    a7[2] = result[2];
    *a7 = v8;
  }

  return result;
}

uint64_t _C3DKeyFrameVector3Interpolator_cubic(uint64_t result, uint64_t a2, double a3, float32x4_t a4, float32x4_t a5, uint64_t a6, int32x2_t *a7, int32x2_t *a8, int a9, uint64_t a10)
{
  a4.i64[0] = *result;
  a4.i32[2] = *(result + 8);
  a5.i64[0] = *a2;
  a5.i32[2] = *(a2 + 8);
  v10 = a3 * a3;
  v11 = a3 * a3 * a3;
  v12 = a3 * a3 * 3.0;
  v13 = 1.0 - (v12 - v11 * 2.0);
  v14 = v11 + a3 * a3 * -2.0 + a3;
  *&v12 = v12 + v11 * -2.0;
  *&v10 = v11 - v10;
  *v15.f32 = vzip2_s32(*a7, a7[1]);
  *&v15.u32[2] = vdup_lane_s32(a7[2], 1);
  *v16.f32 = vzip2_s32(*a8, a8[1]);
  *&v16.u32[2] = vdup_lane_s32(a8[2], 1);
  v17 = vmlaq_n_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v15, v14), a4, v13), a5, *&v12), v16, *&v10);
  if (a9)
  {
    a4.i64[0] = *a10;
    a4.i32[2] = *(a10 + 8);
    v17 = vaddq_f32(v17, a4);
  }

  *a10 = v17.i64[0];
  *(a10 + 8) = v17.i32[2];
  return result;
}

float *_C3DKeyFrameVector3Interpolator(float *result, uint64_t a2, int a3, int32x2_t *a4, int32x2_t *a5, int a6, float *a7, float32x4_t a8, float32x4_t a9, float32x4_t a10)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6)
      {
        v10 = a7[1];
        *a7 = *result + *a7;
        a7[1] = result[1] + v10;
        a7[2] = result[2] + a7[2];
      }

      else
      {
        v13 = *result;
        a7[2] = result[2];
        *a7 = v13;
      }
    }

    else
    {
      return _C3DKeyFrameVector3Interpolator_cubic(result, a2, *a8.i64, a9, a10, 0, a4, a5, a6, a7);
    }
  }

  else
  {
    a9.i64[0] = *result;
    a9.f32[2] = result[2];
    a10.i64[0] = *a2;
    a10.i32[2] = *(a2 + 8);
    v11 = *a8.i64;
    v12 = vmlaq_n_f32(a9, vsubq_f32(a10, a9), v11);
    if (a6)
    {
      a8.i64[0] = *a7;
      a8.f32[2] = a7[2];
      v12 = vaddq_f32(v12, a8);
    }

    *a7 = v12.i64[0];
    a7[2] = v12.f32[2];
  }

  return result;
}

float32x2_t *_C3DKeyFrameVector2Interpolator_linear(float32x2_t *result, float32x2_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x2_t *a8)
{
  v8 = a3;
  v9 = vmla_n_f32(*result, vsub_f32(*a2, *result), v8);
  if (a7)
  {
    v9 = vadd_f32(v9, *a8);
  }

  *a8 = v9;
  return result;
}

float32x2_t *_C3DKeyFrameVector2Interpolator_discrete(float32x2_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, float32x2_t *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 = vadd_f32(v7, *a7);
  }

  *a7 = v7;
  return result;
}

float32x2_t *_C3DKeyFrameVector2Interpolator_cubic(float32x2_t *result, float32x2_t *a2, double a3, uint64_t a4, int32x2_t *a5, int32x2_t *a6, int a7, float32x2_t *a8)
{
  v8 = a3 * a3;
  v9 = a3 * a3 * a3;
  v10 = a3 * a3 * 3.0;
  v11 = 1.0 - (v10 - v9 * 2.0);
  v12 = v9 + a3 * a3 * -2.0 + a3;
  v13 = v10 + v9 * -2.0;
  v14 = vmla_n_f32(vmla_n_f32(vmul_n_f32(vzip2_s32(*a5, a5[1]), v12), *result, v11), *a2, v13);
  v15 = v9 - v8;
  v16 = vmla_n_f32(v14, vzip2_s32(*a6, a6[1]), v15);
  if (a7)
  {
    v16 = vadd_f32(v16, *a8);
  }

  *a8 = v16;
  return result;
}

float32x2_t *_C3DKeyFrameVector2Interpolator(float32x2_t *result, float32x2_t *a2, int a3, int32x2_t *a4, int32x2_t *a5, int a6, float32x2_t *a7, double a8)
{
  v8 = *result;
  if (a3)
  {
    if (a3 != 1)
    {
      v9 = a8 * a8;
      v10 = a8 * a8 * a8;
      v11 = a8 * a8 * 3.0;
      v12 = 1.0 - (v11 - v10 * 2.0);
      v13 = v10 + a8 * a8 * -2.0 + a8;
      v14 = vmla_n_f32(vmul_n_f32(vzip2_s32(*a4, a4[1]), v13), v8, v12);
      v15 = v11 + v10 * -2.0;
      v16 = vmla_n_f32(v14, *a2, v15);
      v17 = v10 - v9;
      v8 = vmla_n_f32(v16, vzip2_s32(*a5, a5[1]), v17);
      if (!a6)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v18 = a8;
    v8 = vmla_n_f32(v8, vsub_f32(*a2, v8), v18);
  }

  if (a6)
  {
LABEL_7:
    v8 = vadd_f32(v8, *a7);
  }

LABEL_8:
  *a7 = v8;
  return result;
}

double _C3DKeyFrameMatrix4x4FastInterpolator_linear(float32x4_t *a1, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  if (a7)
  {
    memset(v12, 0, sizeof(v12));
    v9 = a3;
    C3DMatrix4x4Lerp(a1, a2, v12, v9);
    return C3DMatrix4x4Mult(v12, a8, a8);
  }

  else
  {
    v11 = a3;

    *&result = C3DMatrix4x4Lerp(a1, a2, a8, v11).u64[0];
  }

  return result;
}

__n128 _C3DKeyFrameMatrix4x4FastInterpolator_discrete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a6)
  {
    result.n128_f64[0] = C3DMatrix4x4Mult(a1, a7, a7);
  }

  else
  {
    result = *a1;
    v8 = *(a1 + 16);
    v9 = *(a1 + 48);
    *(a7 + 32) = *(a1 + 32);
    *(a7 + 48) = v9;
    *a7 = result;
    *(a7 + 16) = v8;
  }

  return result;
}

double _C3DKeyFrameMatrix4x4FastInterpolator_cubic(float32x4_t *a1, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  if (a7)
  {
    memset(v12, 0, sizeof(v12));
    v9 = a3;
    C3DMatrix4x4Lerp(a1, a2, v12, v9);
    return C3DMatrix4x4Mult(v12, a8, a8);
  }

  else
  {
    v11 = a3;

    *&result = C3DMatrix4x4Lerp(a1, a2, a8, v11).u64[0];
  }

  return result;
}

__n128 _C3DKeyFrameMatrix4x4FastInterpolator(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, double a8)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6)
      {
        result.n128_f64[0] = C3DMatrix4x4Mult(a1, a7, a7);
      }

      else
      {
        result = *a1;
        v9 = *(a1 + 16);
        v10 = *(a1 + 48);
        *(a7 + 32) = *(a1 + 32);
        *(a7 + 48) = v10;
        *a7 = result;
        *(a7 + 16) = v9;
      }
    }

    else
    {
      result.n128_f64[0] = _C3DKeyFrameMatrix4x4FastInterpolator_cubic(a1, a2, a8, 0, a4, a5, a6, a7);
    }
  }

  else
  {
    result.n128_f64[0] = _C3DKeyFrameMatrix4x4FastInterpolator_linear(a1, a2, a8, a3, a4, a5, a6, a7);
  }

  return result;
}

void _C3DKeyFrameMatrix4x4Interpolator_linear(float32x4_t *a1, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  if (a7)
  {
    memset(v11, 0, sizeof(v11));
    v9 = a3;
    C3DMatrix4x4Interpolate(a1, a2, v11, v9);
    C3DMatrix4x4Mult(v11, a8, a8);
  }

  else
  {
    v10 = a3;

    C3DMatrix4x4Interpolate(a1, a2, a8, v10);
  }
}

__n128 _C3DKeyFrameMatrix4x4Interpolator_discrete(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  if (a6)
  {
    result.n128_f64[0] = C3DMatrix4x4Mult(a1, a7, a7);
  }

  else
  {
    result = *a1;
    v8 = *(a1 + 16);
    v9 = *(a1 + 48);
    *(a7 + 32) = *(a1 + 32);
    *(a7 + 48) = v9;
    *a7 = result;
    *(a7 + 16) = v8;
  }

  return result;
}

void _C3DKeyFrameMatrix4x4Interpolator_cubic(float32x4_t *a1, float32x4_t *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, float32x4_t *a8)
{
  if (a7)
  {
    memset(v11, 0, sizeof(v11));
    v9 = a3;
    C3DMatrix4x4Interpolate(a1, a2, v11, v9);
    C3DMatrix4x4Mult(v11, a8, a8);
  }

  else
  {
    v10 = a3;

    C3DMatrix4x4Interpolate(a1, a2, a8, v10);
  }
}

__n128 _C3DKeyFrameMatrix4x4Interpolator(uint64_t a1, float32x4_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, double a8)
{
  if (a3)
  {
    if (a3 == 1)
    {
      if (a6)
      {
        result.n128_f64[0] = C3DMatrix4x4Mult(a1, a7, a7);
      }

      else
      {
        result = *a1;
        v9 = *(a1 + 16);
        v10 = *(a1 + 48);
        *(a7 + 32) = *(a1 + 32);
        *(a7 + 48) = v10;
        *a7 = result;
        *(a7 + 16) = v9;
      }
    }

    else
    {
      _C3DKeyFrameMatrix4x4Interpolator_cubic(a1, a2, a8, 0, a4, a5, a6, a7);
    }
  }

  else
  {
    _C3DKeyFrameMatrix4x4Interpolator_linear(a1, a2, a8, a3, a4, a5, a6, a7);
  }

  return result;
}

_BYTE *_C3DKeyFrameBoolInterpolator(_BYTE *result, _BYTE *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, _BYTE *a8)
{
  if (a3 < 1.0)
  {
    a2 = result;
  }

  *a8 = *a2;
  return result;
}

unsigned __int8 *_C3DKeyFrameCharInterpolator_linear(unsigned __int8 *result, unsigned __int8 *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, _BYTE *a8)
{
  v8 = *result;
  v9 = v8;
  v10 = v8 + (*a2 - v8) * a3;
  if (a7)
  {
    LOBYTE(v9) = *a8;
    v10 = v10 + *&v9;
  }

  *a8 = v10;
  return result;
}

char *_C3DKeyFrameCharInterpolator_discrete(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, _BYTE *a7)
{
  v7 = *result;
  if (a6)
  {
    v7 += *a7;
  }

  *a7 = v7;
  return result;
}

_BYTE *_C3DKeyFrameCharInterpolator_cubic(_BYTE *result, _BYTE *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, _BYTE *a8)
{
  *&v8 = a3 * a3 * a3;
  v9 = a3 * a3 * 3.0;
  v10 = 1.0 - (v9 - *&v8 * 2.0);
  v11 = *&v8 + a3 * a3 * -2.0;
  v12 = v9 + *&v8 * -2.0;
  v13 = *&v8 - a3 * a3;
  LOBYTE(v8) = *result;
  *&v14 = v8;
  v15 = (v11 + a3) * *(a5 + 4) + v10 * *&v14;
  LOBYTE(v14) = *a2;
  v16 = v15 + v12 * v14 + v13 * *(a6 + 4);
  if (a7)
  {
    LOBYTE(v13) = *a8;
    v16 = v16 + *&v13;
  }

  *a8 = v16;
  return result;
}

unsigned __int8 *_C3DKeyFrameCharInterpolator(unsigned __int8 *result, _BYTE *a2, int a3, uint64_t a4, uint64_t a5, int a6, _BYTE *a7, double a8)
{
  if (!a3)
  {
    v9 = *result;
    v10 = v9;
    v11 = v9 + (*a2 - v9) * a8;
    if (a6)
    {
      LOBYTE(v10) = *a7;
      v11 = v11 + *&v10;
    }

    v8 = v11;
    goto LABEL_8;
  }

  if (a3 == 1)
  {
    LOBYTE(v8) = *result;
    if (a6)
    {
      LOBYTE(v8) = *a7 + v8;
    }

LABEL_8:
    *a7 = v8;
    return result;
  }

  return _C3DKeyFrameCharInterpolator_cubic(result, a2, a8, 0, a4, a5, a6, a7);
}

uint64_t C3DKeyFrameInterpolatorGetSemantic(double (*a1)(float32x4_t *a1, float32x4_t *a2, double a3, double a4, double a5, double a6, double a7, double a8, float32x4_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, float32x4_t *a14))
{
  if (a1 == _C3DKeyFrameQuaternionInterpolator_linear || a1 == _C3DKeyFrameQuaternionInterpolator || a1 == _C3DKeyFrameQuaternionInterpolator_discrete)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

double C3DTimingFunctionSpring(float *a1, double a2, float a3)
{
  v4 = a3 * a2;
  v5 = a1[6];
  if (v5 >= 1.0)
  {
    v6 = a1[8] + a1[10] * v4;
    v9 = exp(-(v4 * a1[7]));
  }

  else
  {
    v6 = exp(-(v4 * v5) * a1[7]);
    v7 = a1[8];
    v8 = __sincos_stret(v4 * a1[9]);
    v9 = v8.__sinval * a1[10] + v7 * v8.__cosval;
  }

  return 1.0 - v6 * v9;
}

double C3DTimingFunctionSolveCurve(float *a1, double a2)
{
  v2 = a1[1];
  v3 = *a1 * 3.0;
  v4 = -(v3 - (a1[2] - *a1) * 3.0);
  v5 = 1.0 - v3 - v4;
  v6 = 8;
  v7 = a2;
  do
  {
    v8 = v7 * (v3 + (v5 * v7 - (v3 - (a1[2] - *a1) * 3.0)) * v7);
    if (vabdd_f64(v8, a2) < 0.001)
    {
      goto LABEL_13;
    }

    v9 = v3 + (v4 + v4 + v5 * 3.0 * v7) * v7;
    if (fabs(v9) < 0.000001)
    {
      break;
    }

    v7 = v7 - (v8 - a2) / v9;
    --v6;
  }

  while (v6);
  v10 = 0.0;
  if (a2 >= 0.0)
  {
    v10 = 1.0;
    v11 = 1.0;
    if (a2 <= 1.0)
    {
      v12 = 0.0;
      v7 = a2;
      do
      {
        v13 = v7 * (v3 + (v5 * v7 - (v3 - (a1[2] - *a1) * 3.0)) * v7);
        if (vabdd_f64(v13, a2) < 0.001)
        {
          break;
        }

        if (v13 >= a2)
        {
          v11 = v7;
        }

        else
        {
          v12 = v7;
        }

        v7 = v12 + (v11 - v12) * 0.5;
      }

      while (v12 < v11);
LABEL_13:
      v10 = v7;
    }
  }

  v14 = v2 * 3.0;
  v15 = -(v14 - (a1[3] - v2) * 3.0);
  return (v14 + (v15 + (1.0 - v14 - v15) * v10) * v10) * v10;
}

BOOL _C3DTimingFunctionInitWithPropertyList(uint64_t a1, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v4 = CFGetTypeID(cf);
  if (v4 == CFStringGetTypeID())
  {
    v5 = C3DTimingFunctionLinear;
LABEL_19:
    *(a1 + 16) = v5;
    return 1;
  }

  if (C3DCFTypeIsDictionary())
  {
    Value = CFDictionaryGetValue(cf, @"c0");
    if (Value)
    {
      v8 = Value;
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v8, kCFNumberCGFloatType, &valuePtr);
        v10 = valuePtr;
        *(a1 + 24) = v10;
      }
    }

    v11 = CFDictionaryGetValue(cf, @"c1");
    if (v11)
    {
      v12 = v11;
      v13 = CFGetTypeID(v11);
      if (v13 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v12, kCFNumberCGFloatType, &valuePtr);
        v14 = valuePtr;
        *(a1 + 28) = v14;
      }
    }

    v15 = CFDictionaryGetValue(cf, @"c2");
    if (v15)
    {
      v16 = v15;
      v17 = CFGetTypeID(v15);
      if (v17 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v16, kCFNumberCGFloatType, &valuePtr);
        v18 = valuePtr;
        *(a1 + 32) = v18;
      }
    }

    v19 = CFDictionaryGetValue(cf, @"c3");
    if (v19)
    {
      v20 = v19;
      v21 = CFGetTypeID(v19);
      if (v21 == CFNumberGetTypeID())
      {
        valuePtr = 0.0;
        CFNumberGetValue(v20, kCFNumberCGFloatType, &valuePtr);
        v22 = valuePtr;
        *(a1 + 36) = v22;
      }
    }

    v5 = C3DTimingFunctionCurve;
    goto LABEL_19;
  }

  v23 = scn_default_log();
  result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
  if (result)
  {
    _C3DTimingFunctionInitWithPropertyList_cold_1(v23);
    return 0;
  }

  return result;
}

__CFString *_C3DTimingFunctionCopyPropertyList(uint64_t (**cf)())
{
  if (!cf)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      _C3DTimingFunctionCopyPropertyList_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  if (cf[2] == C3DTimingFunctionLinear)
  {
    return @"linear";
  }

  v10 = CFGetAllocator(cf);
  Mutable = CFDictionaryCreateMutable(v10, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = *(cf + 6);
  v12 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"c0", v12);
  CFRelease(v12);
  valuePtr = *(cf + 7);
  v13 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"c1", v13);
  CFRelease(v13);
  valuePtr = *(cf + 8);
  v14 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"c2", v14);
  CFRelease(v14);
  valuePtr = *(cf + 9);
  v15 = CFNumberCreate(0, kCFNumberCGFloatType, &valuePtr);
  CFDictionaryAddValue(Mutable, @"c3", v15);
  CFRelease(v15);
  return Mutable;
}

double __C3DTimingFunctionGetTypeID_block_invoke()
{
  C3DTimingFunctionGetTypeID_typeID = _CFRuntimeRegisterClass();
  result = *&kC3DC3DTimingFunctionContextClassSerializable;
  unk_28173FFD8 = kC3DC3DTimingFunctionContextClassSerializable;
  unk_28173FFE8 = *off_282DC3280;
  return result;
}

__n128 C3DTimingFunctionCreateWithName(__CFString *a1)
{
  if (C3DTimingFunctionGetTypeID_onceToken != -1)
  {
    C3DTimingFunctionCreateWithName_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTimingFunctionGetTypeID_typeID, 32);
  *(Instance + 16) = C3DTimingFunctionCurve;
  if (@"default" == a1)
  {
    v4 = &function_values;
  }

  else if (@"easeIn" == a1)
  {
    v4 = &xmmword_21C2802B8;
  }

  else if (@"easeOut" == a1)
  {
    v4 = &xmmword_21C2802C8;
  }

  else
  {
    if (@"easeInEaseOut" != a1)
    {
      *(Instance + 16) = C3DTimingFunctionLinear;
      return result;
    }

    v4 = &xmmword_21C2802D8;
  }

  result = *v4;
  *(Instance + 24) = *v4;
  return result;
}

uint64_t C3DTimingFunctionCreateSpring(float a1, float a2, float a3, float a4)
{
  if (C3DTimingFunctionGetTypeID_onceToken != -1)
  {
    C3DTimingFunctionCreateWithName_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DTimingFunctionGetTypeID_typeID, 32);
  v9 = sqrtf(a2 / a1);
  v10 = sqrtf(a1 * a2);
  v11 = a3 / (v10 + v10);
  if (v11 >= 1.0)
  {
    v14 = v9 - a4;
    v13 = 0.0;
  }

  else
  {
    v12 = sqrtf(1.0 - (v11 * v11));
    v13 = v9 * v12;
    v14 = -(a4 - (v11 * v9)) / (v9 * v12);
  }

  *(result + 24) = v11;
  *(result + 28) = v9;
  *(result + 32) = 1065353216;
  *(result + 36) = v13;
  *(result + 40) = v14;
  *(result + 16) = C3DTimingFunctionSpring;
  return result;
}

uint64_t C3DTimingFunctionCreateWithControlPoints(float a1, float a2, float a3, float a4)
{
  if (C3DTimingFunctionGetTypeID_onceToken != -1)
  {
    C3DTimingFunctionCreateWithName_cold_1();
  }

  result = C3DTypeCreateInstance_(C3DTimingFunctionGetTypeID_typeID, 32);
  *(result + 24) = a1;
  *(result + 28) = a2;
  *(result + 32) = a3;
  *(result + 36) = a4;
  *(result + 16) = C3DTimingFunctionCurve;
  return result;
}

uint64_t C3DTimingFunctionCreateWithPropertyList(const void *a1)
{
  if (C3DTimingFunctionGetTypeID_onceToken != -1)
  {
    C3DTimingFunctionCreateWithName_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTimingFunctionGetTypeID_typeID, 32);
  _C3DTimingFunctionInitWithPropertyList(Instance, a1);
  return Instance;
}

uint64_t C3DTimingFunctionGetControlPoints(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTimingFunctionGetControlPoints_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return a1 + 24;
}

uint64_t C3DTimingFunctionSolve(uint64_t a1, double a2, float a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DTimingFunctionGetControlPoints_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  return (*(a1 + 16))(a1, a2, a3);
}

CFStringRef _C3DTimingFunctionCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTimingFunction>");
}

CFStringRef _C3DTimingFunctionCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTimingFunction>");
}

void C3D::SSRDownSampleColorDepthPass::SSRDownSampleColorDepthPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC32A0;
  v5[15] = a4;
}

uint64_t C3D::SSRDownSampleColorDepthPass::setup(C3D::SSRDownSampleColorDepthPass *this)
{
  C3D::Pass::setInputCount(this, 3u);
  C3D::Pass::setOutputCount(this, 2u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "COLOR";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1u) + 64) = 2;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2u) + 64) = 2;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2u) + 8) = "BackDepth";
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 16) = **(this + 15);
  *(v2 + 18) = *(*(this + 15) + 2);
  C3D::Pass::parentColorDesc(this, v7);
  if (v8 == 81)
  {
    v3 = 80;
  }

  else
  {
    C3D::Pass::parentColorDesc(this, v5);
    v3 = v6;
  }

  *(v2 + 28) = v3;
  *(v2 + 8) = "ColorDownSampled";
  *(v2 + 26) = 3;
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 1u);
  *(result + 16) = **(this + 15);
  *(result + 18) = *(*(this + 15) + 2);
  *(result + 28) = 65;
  *(result + 8) = "DepthDownSampled";
  *(result + 26) = 3;
  return result;
}

uint64_t C3D::SSRDownSampleColorDepthPass::compile(C3D::SSRDownSampleColorDepthPass *this)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2));
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v3 = [(SCNMTLRenderContext *)RenderContext reverseZ];
  v7 = v3;
  v4 = v3 | (2 * *(*(this + 15) + 4));
  v5 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47));
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::SSRDownSampleColorDepthPass::execute(uint64_t *a1, SCNMTLComputeCommandEncoder **a2)
{
  RenderContext = C3DEngineContextGetRenderContext(a1[2]);
  v5 = *a2;
  v6 = C3D::Pass::inputTextureAtIndex(a1, 0);
  if (v5->_textures[0] != v6)
  {
    v5->_textures[0] = v6;
    v5->_texturesToBind[0] |= 1uLL;
  }

  v7 = C3D::Pass::inputTextureAtIndex(a1, 1u);
  if (v5->_textures[1] != v7)
  {
    v5->_textures[1] = v7;
    v5->_texturesToBind[0] |= 2uLL;
  }

  v8 = C3D::Pass::inputTextureAtIndex(a1, 2u);
  if (v5->_textures[2] != v8)
  {
    v5->_textures[2] = v8;
    v5->_texturesToBind[0] |= 4uLL;
  }

  v9 = C3D::Pass::outputTextureAtIndex(a1, 0);
  if (v5->_textures[3] != v9)
  {
    v5->_textures[3] = v9;
    v5->_texturesToBind[0] |= 8uLL;
  }

  v10 = C3D::Pass::outputTextureAtIndex(a1, 1u);
  if (v5->_textures[4] != v10)
  {
    v5->_textures[4] = v10;
    v5->_texturesToBind[0] |= 0x10uLL;
  }

  v24 = *(a1[15] + 8);
  v11 = [(SCNMTLRenderContext *)RenderContext reverseZ];
  v12.f32[0] = vmuls_lane_f32(v24.f32[0], v24, 1);
  v13 = v24.f32[0] - v24.f32[1];
  if (v11)
  {
    v13 = v24.f32[1] - v24.f32[0];
    v14 = v24.f32[1];
  }

  else
  {
    v14 = v24.f32[0];
  }

  __asm { FMOV            V3.2S, #1.0 }

  _D3.f32[0] = v13;
  v12.f32[1] = v14;
  v25 = vdiv_f32(_D3, v12);
  SCNMTLComputeCommandEncoder::setBytes(v5, &v25, 8uLL, 0);
  v20 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v21 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(a1[14] + 16);
  v22 = [(SCNMTLOpenSubdivComputeEvaluator *)v21 computeEvaluator];
  return SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v5, v20, v22);
}

void C3D::SSRDownSampleColorDepthPassResource::~SSRDownSampleColorDepthPassResource(C3D::SSRDownSampleColorDepthPassResource *this)
{
  *this = &unk_282DC3310;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC3310;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void _C3DFXTechniqueCFFinalize(uint64_t a1)
{
  if (*(a1 + 72) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(a1 + 80);
      *(*(v3 + 8 * v2) + 40) = 0;
      CFRelease(*(v3 + 8 * v2++));
    }

    while (v2 < *(a1 + 72));
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    free(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        *(CFArrayGetValueAtIndex(*(a1 + 120), i) + 16) = 0;
      }
    }
  }

  if ((*(a1 + 88) & 0x10) != 0)
  {
    _freeStorage(a1);
  }

  v9 = *(a1 + 120);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 120) = 0;
  }

  v10 = *(a1 + 104);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 104) = 0;
  }

  v11 = *(a1 + 144);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 144) = 0;
  }

  v12 = *(a1 + 152);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 152) = 0;
  }

  v13 = *(a1 + 136);
}

void _freeStorage(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    if (*v2)
    {
      CFDictionaryApplyFunction(*(v2 + 16), _releaseCFTypeParameters, *v2);
      v2 = *(a1 + 96);
    }

    if (*(v2 + 16))
    {
      CFRelease(*(v2 + 16));
      v2 = *(a1 + 96);
      *(v2 + 16) = 0;
    }

    if (*v2)
    {
      free(*v2);
      v2 = *(a1 + 96);
    }

    free(v2);
    *(a1 + 96) = 0;
  }
}

uint64_t C3DFXTechniqueGetTypeID()
{
  if (C3DFXTechniqueGetTypeID_onceToken != -1)
  {
    C3DFXTechniqueGetTypeID_cold_1();
  }

  return C3DFXTechniqueGetTypeID_typeID;
}

uint64_t __C3DFXTechniqueGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFXTechniqueGetTypeID_typeID = result;
  qword_281741638 = _C3DFXTechniqueCopyInstanceVariables;
  return result;
}

uint64_t C3DFXTechniqueCreateWithDescription(const void *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueCreateWithDescription_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (C3DFXTechniqueGetTypeID_onceToken != -1)
  {
    C3DFXTechniqueCreateWithDescription_cold_2();
  }

  Instance = C3DTypeCreateInstance_(C3DFXTechniqueGetTypeID_typeID, 144);
  C3DFXTechniqueSetDescription(Instance, a1);
  C3DFXTechniqueSetOwner(Instance, a2);
  C3DFXTechniqueCompile(Instance);
  *(Instance + 92) = -1;
  return Instance;
}

CFTypeRef C3DFXTechniqueSetDescription(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueSetDescription_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 104);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 104) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 104) = result;
  }

  return result;
}

void C3DFXTechniqueSetOwner(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueSetDescription_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 112) = a2;
}

uint64_t C3DFXTechniqueCompile(uint64_t a1)
{
  v112 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88))
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueCompile_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  *(a1 + 88) |= 1u;
  cf = C3DFXTechniqueGetOwner(a1);
  Description = C3DFXTechniqueGetDescription(a1);
  *(a1 + 144) = [Description valueForKey:@"bundle"];
  *(a1 + 152) = [Description valueForKey:@"metalLibraryName"];
  obj = [Description valueForKey:@"sequence"];
  v97 = [Description valueForKey:@"passes"];
  size = [obj count];
  v98 = Description;
  v11 = [Description valueForKey:@"symbols"];
  if (!*(a1 + 96))
  {
    *(a1 + 96) = malloc_type_calloc(0x18uLL, 1uLL, 0x1030040D5FA72FAuLL);
    *(a1 + 88) |= 0x10u;
  }

  v12 = [v11 count];
  *(*(a1 + 96) + 16) = CFDictionaryCreateMutable(0, v12, MEMORY[0x277CBF138], 0);
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v13 = [v11 countByEnumeratingWithState:&v104 objects:v111 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v105;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v105 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v104 + 1) + 8 * i);
        v18 = [v11 valueForKey:v17];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![v18 valueForKey:@"semantic"])
          {
            v19 = [v18 valueForKey:@"type"];
            if (([(__CFString *)v19 isEqualToString:@"color"]& 1) == 0 && ([(__CFString *)v19 isEqualToString:@"depth"]& 1) == 0)
            {
              v20 = C3DBaseTypeArraySizeFromString(v19);
              v21 = C3DBaseTypeFromMetalOrGLSLString(v19);
              if (v21)
              {
                C3DFXTechniqueDeclareSymbol(a1, v17, v21, v20);
              }
            }
          }
        }

        else
        {
          v22 = scn_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v110 = v17;
            _os_log_error_impl(&dword_21BEF7000, v22, OS_LOG_TYPE_ERROR, "Error: invalue description for input named %@ - expect a dictionary", buf, 0xCu);
          }
        }
      }

      v14 = [v11 countByEnumeratingWithState:&v104 objects:v111 count:16];
    }

    while (v14);
  }

  if (!size)
  {
    if ([v97 count])
    {
      v25 = scn_default_log();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        C3DFXTechniqueCompile_cold_2(v98, v25, v26, v27, v28, v29, v30, v31);
      }
    }

    return 1;
  }

  *(a1 + 80) = malloc_type_calloc(8uLL, size, 0xDF9E344uLL);
  *(a1 + 64) = size;
  if (cfa)
  {
    v23 = CFGetTypeID(cfa);
    if (v23 == C3DSceneGetTypeID())
    {
      RootNode = C3DSceneGetRootNode(cfa);
    }

    else
    {
      v32 = CFGetTypeID(cfa);
      if (v32 == C3DNodeGetTypeID())
      {
        RootNode = cfa;
      }

      else
      {
        RootNode = 0;
      }
    }
  }

  else
  {
    RootNode = 0;
  }

  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v33 = [obj countByEnumeratingWithState:&v100 objects:v108 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = 0;
    v36 = *v101;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v101 != v36)
        {
          objc_enumerationMutation(obj);
        }

        v38 = *(*(&v100 + 1) + 8 * j);
        v39 = C3DFXPassCreate();
        C3DFXPassSetName(v39, v38);
        v40 = [v97 valueForKey:v38];
        C3DFXPassSetupWithPropertyList(v39, v40, v98);
        if (!C3DFXPassGetProgram(v39))
        {
          C3DFXPassSetProgramName(v39, [v40 objectForKey:@"program"]);
          v41 = [v40 objectForKey:@"metalLibraryFile"];
          if (v41)
          {
            C3DFXPassSetMetalLibraryName(v39, v41);
          }

          C3DFXPassSetMetalVertexShaderFunction(v39, [v40 objectForKey:@"metalVertexShader"]);
          C3DFXPassSetMetalFragmentShaderFunction(v39, [v40 objectForKey:@"metalFragmentShader"]);
          v42 = [v40 objectForKey:@"clientProgram"];
          if (v42)
          {
            v43 = [v42 BOOLValue];
          }

          else
          {
            v43 = 1;
          }

          C3DFXPassSetClientProgram(v39, v43);
        }

        v44 = *(v39 + 24);
        if (v44 == 6 || v44 == 3)
        {
          v45 = *(v39 + 96);
          if (v45)
          {
            Technique = C3DMaterialGetTechnique(v45);
            if (Technique)
            {
              v47 = Technique;
              PassAtIndex = C3DFXTechniqueGetPassAtIndex(Technique, 0);
              if (PassAtIndex)
              {
                C3DFXPassAddInputsWithDescription(PassAtIndex, [v40 valueForKey:@"inputs"], v47);
              }
            }
          }
        }

        C3DFXPassAddInputsWithDescription(v39, [v40 valueForKey:@"inputs"], a1);
        v49 = [-[__CFDictionary valueForKey:](v98 valueForKey:{@"owners", "objectAtIndex:", v35}];
        NodeReference = _loadNodeReference(@"pointOfView", v40, a1, v49, RootNode, (v39 + 504));
        if (NodeReference)
        {
          C3DFXPassSetPointOfView(v39, NodeReference);
        }

        v51 = _loadNodeReference(@"mirrorNode", v40, a1, v49, RootNode, (v39 + 496));
        if (v51)
        {
          C3DFXPassSetMirrorNode(v39, v51);
        }

        v52 = _loadNodeReference(@"node", v40, a1, v49, RootNode, (v39 + 488));
        if (v52)
        {
          C3DFXPassSetRootNode(v39, v52);
        }

        C3DFXPassAddOutputsWithDescription(v39, [v40 valueForKey:@"outputs"], a1);
        C3DFXTechniqueAppendPass(a1, v39);
        CFRelease(v39);
        ++v35;
      }

      v34 = [obj countByEnumeratingWithState:&v100 objects:v108 count:16];
    }

    while (v34);
  }

  PassCount = C3DFXTechniqueGetPassCount(a1);
  Mutable = CFSetCreateMutable(0, 0, MEMORY[0x277CBF158]);
  v55 = Mutable;
  if (PassCount < 1)
  {
    CFRelease(Mutable);
    v88 = *(a1 + 88);
    goto LABEL_130;
  }

  v56 = 0;
  v99 = 0;
  v57 = 0;
  do
  {
    v58 = C3DFXTechniqueGetPassAtIndex(a1, v56);
    v59 = v58;
    if ((v57 & 1) == 0 && (v99 & 1) == 0)
    {
      v60 = *(v58 + 520);
      if (v60 < 1)
      {
        goto LABEL_67;
      }

      v57 = 0;
      v61 = *(v58 + 512);
      do
      {
        v62 = *v61++;
        v57 |= *(v62 + 80);
        --v60;
      }

      while (v60);
    }

    if (v57)
    {
      v57 = 1;
      goto LABEL_68;
    }

LABEL_67:
    v57 = 0;
    v99 |= *(v58 + 186) >> 7;
LABEL_68:
    if (*(v58 + 440))
    {
      v63 = 0;
      do
      {
        buf[0] = 0;
        v64 = *(v59 + 432) + (v63 << 6);
        v65 = *(v64 + 8);
        v66 = *(v64 + 20);
        if (v65)
        {
          if (v66 > 0x7FFFFFFD)
          {
            if (v66 == 0x7FFFFFFF)
            {
              v67 = 0x7FFFFFFF;
            }

            else
            {
              v67 = 2147483646;
            }
          }

          else
          {
            v67 = _computeInputCountForOutputNamed(a1, v65, v56, buf, 0);
          }

          if ((C3DMetalIsUsed() & 1) == 0 && !*(*(v59 + 432) + (v63 << 6) + 16) && v67 >= 2)
          {
            *(v59 + 176) = 1;
            buf[0] = 0;
          }

          if (!CFSetContainsValue(v55, v65))
          {
            CFSetAddValue(v55, v65);
            *(*(v59 + 432) + (v63 << 6) + 20) = v67;
          }

          if (buf[0] == 1)
          {
            *(v59 + 184) |= 0x10u;
          }

          if (v67 >= 2)
          {
            *(v59 + 184) |= 0x400000u;
          }
        }

        else
        {
          *(v64 + 20) = v66 + 1;
          v68 = v56 + 1;
          if (v56 + 1 < PassCount)
          {
            do
            {
              v69 = C3DFXTechniqueGetPassAtIndex(a1, v68);
              v70 = *(v69 + 520);
              if (v70 >= 1)
              {
                v71 = *(v69 + 512);
                do
                {
                  if ((*(*v71 + 80) & 3) != 0)
                  {
                    ++*(*(v59 + 432) + (v63 << 6) + 20);
                  }

                  v71 += 8;
                  --v70;
                }

                while (v70);
              }

              v72 = *(v69 + 440);
              if (v72)
              {
                v73 = (*(v69 + 432) + 8);
                LOBYTE(v74) = 1;
                do
                {
                  v75 = *v73;
                  v73 += 8;
                  v74 = (v75 != 0) & v74;
                  --v72;
                }

                while (v72);
              }

              else
              {
                v74 = 1;
              }

              ++v68;
            }

            while (v68 < PassCount && v74);
          }
        }

        ++v63;
      }

      while (v63 < *(v59 + 440));
    }

    v77 = *(v59 + 184);
    if ((v77 & 0x800010) == 0x800000)
    {
      buf[0] = 0;
      _computeInputCountForOutputNamed(a1, @"COLOR", v56, buf, 1);
      v77 = *(v59 + 184) & 0xFFFFFFEF | (16 * (buf[0] & 1));
      *(v59 + 184) = v77;
    }

    if ((v77 & 0x400000) == 0)
    {
      if ((v77 & 0x800000) == 0)
      {
        goto LABEL_116;
      }

      v78 = C3DFXTechniqueGetPassCount(a1);
      v79 = v56 + 1;
      if (v56 + 1 >= v78)
      {
        v77 = *(v59 + 184);
        if ((v77 & 0x1000000) == 0)
        {
          goto LABEL_121;
        }
      }

      else
      {
        v80 = v78;
        v81 = 1;
        while (1)
        {
          v82 = C3DFXTechniqueGetPassAtIndex(a1, v79);
          v83 = *(v82 + 520);
          if (v83 >= 1)
          {
            break;
          }

LABEL_114:
          v81 = ++v79 < v80;
          if (v79 == v80)
          {
            goto LABEL_115;
          }
        }

        v84 = *(v82 + 512);
        while ((*(*v84 + 80) & 1) == 0)
        {
          v84 += 8;
          if (!--v83)
          {
            goto LABEL_114;
          }
        }

LABEL_115:
        v77 = *(v59 + 184);
        if (v81)
        {
LABEL_120:
          *(v59 + 184) = v77 | 0x400000;
          goto LABEL_125;
        }

LABEL_116:
        if ((v77 & 0x1000000) == 0)
        {
LABEL_121:
          if ((v77 & 0x1A00000) == 0x200000)
          {
            v86 = scn_default_log();
            if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
            {
              Name = C3DFXPassGetName(v59);
              *buf = 138412290;
              v110 = Name;
              _os_log_impl(&dword_21BEF7000, v86, OS_LOG_TYPE_INFO, "Info: pass named %@ appears to be useless - skipping", buf, 0xCu);
            }

            C3DFXPassSetEnabled(v59, 0);
          }

          goto LABEL_125;
        }
      }

      IsConsumed = _depthIsConsumed(a1, v56);
      v77 = *(v59 + 184);
      if (IsConsumed)
      {
        goto LABEL_120;
      }

      goto LABEL_121;
    }

LABEL_125:
    ++v56;
  }

  while (v56 != PassCount);
  CFRelease(v55);
  v88 = *(a1 + 88);
  if (v99)
  {
    v88 |= 8u;
  }

LABEL_130:
  *(a1 + 88) = v88 | 4;
  if (size >= 1)
  {
    v89 = C3DFXTechniqueGetPassAtIndex(a1, size - 1);
    if (v89)
    {
      if (*(v89 + 185))
      {
        if (C3DFXPassGetProgramIsOpaque(v89))
        {
          v91 = 4;
        }

        else
        {
          v91 = 0;
        }

        v90 = *(a1 + 88) & 0xFB | v91;
      }

      else
      {
        v90 = *(a1 + 88) & 0xFB;
      }

      *(a1 + 88) = v90;
    }
  }

  return 1;
}

uint64_t C3DFXTechniqueCreateWithCapacity(size_t a1)
{
  if (C3DFXTechniqueGetTypeID_onceToken != -1)
  {
    C3DFXTechniqueGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFXTechniqueGetTypeID_typeID, 144);
  if (a1)
  {
    v3 = malloc_type_calloc(8uLL, a1, 0xEF50A478uLL);
  }

  else
  {
    v3 = 0;
  }

  *(Instance + 80) = v3;
  *(Instance + 64) = a1;
  *(Instance + 92) = -1;
  return Instance;
}

uint64_t C3DFXTechniqueGetNullTechnique()
{
  result = C3DFXTechniqueGetNullTechnique_nullT;
  if (!C3DFXTechniqueGetNullTechnique_nullT)
  {
    result = C3DFXTechniqueCreateWithCapacity(0);
    C3DFXTechniqueGetNullTechnique_nullT = result;
  }

  return result;
}

void C3DFXTechniqueAppendPass(void *a1, CFTypeRef cf)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DFXTechniqueAppendPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    if (cf)
    {
      goto LABEL_6;
    }
  }

  else if (cf)
  {
    goto LABEL_6;
  }

  v12 = scn_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    C3DFXTechniqueAppendPass_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (a1[9] >= a1[8])
  {
    v23 = scn_default_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      C3DFXTechniqueAppendPass_cold_3(v23);
    }
  }

  else
  {
    v20 = CFRetain(cf);
    v22 = a1[9];
    v21 = a1[10];
    a1[9] = v22 + 1;
    *(v21 + 8 * v22) = v20;
    *(cf + 5) = a1;
  }
}

uint64_t C3DFXTechniqueGetPassCount(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 72);
}

uint64_t C3DFXTechniqueGetPassNamed(uint64_t a1, CFTypeRef cf1)
{
  v2 = *(a1 + 72);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = *(*(*(a1 + 80) + 8 * v5) + 16);
    if (v6)
    {
      break;
    }

LABEL_6:
    if (++v5 >= v2)
    {
      return 0;
    }
  }

  if (!CFEqual(cf1, v6))
  {
    v2 = *(a1 + 72);
    goto LABEL_6;
  }

  return *(*(a1 + 80) + 8 * v5);
}

uint64_t C3DFXTechniqueGetOwner(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueSetDescription_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 112);
}

uint64_t C3DFXTechniqueGetPassAtIndex(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(a1 + 72) <= a2)
  {
    v12 = scn_default_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueGetPassAtIndex_cold_2((a1 + 72), a2, v12);
    }
  }

  return *(*(a1 + 80) + 8 * a2);
}

uint64_t C3DFXTechniqueGetDescription(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 104);
}

void C3DFXTechniqueDeclareSymbol(uint64_t a1, void *key, int a3, unsigned int a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DFXTechniqueAppendPass_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DFXTechniqueDeclareSymbol_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  v24 = *(a1 + 96);
  if (!v24)
  {
    goto LABEL_11;
  }

  if (*v24)
  {
    v25 = scn_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueDeclareSymbol_cold_3(v25, v26, v27, v28, v29, v30, v31, v32);
    }

    v24 = *(a1 + 96);
    if (!v24)
    {
LABEL_11:
      v24 = malloc_type_calloc(0x18uLL, 1uLL, 0x1030040D5FA72FAuLL);
      *(a1 + 96) = v24;
      *(a1 + 88) |= 0x10u;
    }
  }

  Mutable = v24[2];
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], 0);
    *(*(a1 + 96) + 16) = Mutable;
  }

  if (CFDictionaryGetValue(Mutable, key))
  {
    v34 = scn_default_log();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueDeclareSymbol_cold_4(key, v34);
    }
  }

  v35 = *(a1 + 96);
  if (a3 == 5)
  {
    v37 = *v35;
    v36 = v35[1];
    v38 = ((v37 + v36 + 7) & 0xFFFFFFFFFFFFFFF8) - (v37 + v36);
  }

  else
  {
    v38 = 0;
    v36 = v35[1];
  }

  v39 = a4;
  v40 = (((v36 + v38) << 16) | (a4 << 8) | a3 & 0x3F);
  v41 = v38 + C3DSizeOfBaseType(a3) * v39;
  v42 = *(a1 + 96);
  v43 = *(v42 + 16);
  *(v42 + 8) += v41;
  CFDictionarySetValue(v43, key, v40);
}

void C3DFXTechniqueSetValueForSymbolWithCount(uint64_t a1, void *a2, const void *a3, int a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DFXTechniqueAppendPass_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DFXTechniqueSetValueForSymbolWithCount_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!*(a1 + 96))
  {
    *(a1 + 96) = malloc_type_calloc(0x18uLL, 1uLL, 0x1030040D5FA72FAuLL);
    *(a1 + 88) |= 0x10u;
  }

  __CheckParametersStorage(a1);
  Value = CFDictionaryGetValue(*(*(a1 + 96) + 16), a2);
  if (Value)
  {
    v25 = WORD1(Value);
    if ((Value & 0x3F) == 5)
    {
      if (a4 != 1 && (v26 = scn_default_log(), os_log_type_enabled(v26, OS_LOG_TYPE_FAULT)))
      {
        C3DFXTechniqueSetValueForSymbolWithCount_cold_3(v26, v27, v28, v29, v30, v31, v32, v33);
        if (a3)
        {
LABEL_13:
          v34 = CFGetTypeID(a3);
          if (v34 == C3DImageGetTypeID())
          {
            ValueForSymbol = C3DFXTechniqueGetValueForSymbol(a1, a2, 0);
            if (!ValueForSymbol)
            {
              ValueForSymbol = C3DFXSamplerCreate();
              C3DFXTechniqueSetValueForSymbolWithCount(a1, a2, ValueForSymbol, 1);
              CFRelease(ValueForSymbol);
            }

            C3DFXSamplerSetImage(ValueForSymbol, a3);
          }

          else
          {
            v45 = *(a1 + 96);
            v46 = *v45;
            v47 = *(*v45 + v25);
            if (v47 != a3)
            {
              if (v47)
              {
                CFRelease(v47);
                *(v46 + v25) = 0;
              }

              *(v46 + v25) = CFRetain(a3);
            }
          }

          return;
        }
      }

      else if (a3)
      {
        goto LABEL_13;
      }

      v48 = *(a1 + 96);
      v49 = *v48;
      v50 = *(*v48 + v25);
      if (v50)
      {
        CFRelease(v50);
        *(v49 + v25) = 0;
      }
    }

    else if (a3)
    {
      if (BYTE1(Value) >= a4)
      {
        v43 = a4;
      }

      else
      {
        v43 = BYTE1(Value);
      }

      v44 = C3DSizeOfBaseType(Value & 0x3F);
      memcpy((**(a1 + 96) + v25), a3, v44 * v43);
    }
  }

  else
  {
    v36 = scn_default_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      C3DFXTechniqueSetValueForSymbolWithCount_cold_4(a2, v36, v37, v38, v39, v40, v41, v42);
    }
  }
}

void *__CheckParametersStorage(void *result)
{
  v1 = result[12];
  if (v1 && !*v1)
  {
    v2 = result;
    result = v1[1];
    if (result)
    {
      result = malloc_type_calloc(result, 1uLL, 0xCEDC4FFuLL);
      *v2[12] = result;
    }
  }

  return result;
}

uint64_t C3DFXTechniqueGetValueForSymbol(uint64_t a1, void *a2, _WORD *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DFXTechniqueAppendPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DFXTechniqueSetValueForSymbolWithCount_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  __CheckParametersStorage(a1);
  v25 = 0;
  ValueOffsetForSymbol = C3DFXTechniqueGetValueOffsetForSymbol(a1, a2, &v25, 0);
  if (ValueOffsetForSymbol == -1)
  {
    return 0;
  }

  v23 = ValueOffsetForSymbol;
  if (a3)
  {
    *a3 = v25;
  }

  __CheckParametersStorage(a1);
  result = **(a1 + 96) + v23;
  if (v25 == 5)
  {
    return *result;
  }

  return result;
}

uint64_t C3DFXTechniqueGetValueOffsetForSymbol(uint64_t a1, void *key, _WORD *a3, BOOL *a4)
{
  if (!a1 && (v8 = scn_default_log(), os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    C3DFXTechniqueAppendPass_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v16 = scn_default_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
  {
    C3DFXTechniqueSetValueForSymbolWithCount_cold_2(v16, v17, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  v24 = *(a1 + 96);
  if (v24 && (v25 = *(v24 + 16)) != 0 && (Value = CFDictionaryGetValue(v25, key), Value & 0xFFFFFFFF0000FFFFLL | (WORD1(Value) << 16)))
  {
    v27 = Value;
    result = WORD1(Value);
    if (a3)
    {
      *a3 = v27 & 0x3F;
    }

    if (a4)
    {
      *a4 = (v27 & 0x40) != 0;
    }
  }

  else
  {
    v29 = scn_default_log();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      C3DFXTechniqueGetValueOffsetForSymbol_cold_3(key, v29, v30, v31, v32, v33, v34, v35);
    }

    return -1;
  }

  return result;
}

uint64_t C3DFXTechniqueGetValueAnimatableAddressForSymbol(uint64_t a1, void *a2, _WORD *a3)
{
  if (!a1 && (v6 = scn_default_log(), os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DFXTechniqueAppendPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v14 = scn_default_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
  {
    C3DFXTechniqueSetValueForSymbolWithCount_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  __CheckParametersStorage(a1);
  v25 = 0;
  ValueOffsetForSymbol = C3DFXTechniqueGetValueOffsetForSymbol(a1, a2, &v25, 0);
  if (ValueOffsetForSymbol == -1)
  {
    return 0;
  }

  v23 = ValueOffsetForSymbol;
  if (a3)
  {
    *a3 = v25;
  }

  __CheckParametersStorage(a1);
  return **(a1 + 96) + v23;
}

CFTypeRef C3DFXTechniqueCreateBySequencingTechniques(void *a1, uint64_t a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v49 = [MEMORY[0x277CBEB18] array];
  v48 = [MEMORY[0x277CBEB38] dictionary];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CBEB38] dictionary];
  v5 = [MEMORY[0x277CBEB18] array];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = a1;
  v6 = [a1 countByEnumeratingWithState:&v61 objects:v75 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v62;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v62 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v61 + 1) + 8 * i);
        if (*(v11 + 136))
        {
          v8 = *(v11 + 136);
        }

        Description = C3DFXTechniqueGetDescription(*(*(&v61 + 1) + 8 * i));
        v13 = [Description valueForKey:@"sequence"];
        [v49 addObjectsFromArray:v13];
        [v48 addEntriesFromDictionary:{objc_msgSend(Description, "valueForKey:", @"passes"}];
        [v3 addEntriesFromDictionary:{objc_msgSend(Description, "valueForKey:", @"targets"}];
        [v4 addEntriesFromDictionary:{objc_msgSend(Description, "valueForKey:", @"symbols"}];
        Owner = C3DFXTechniqueGetOwner(v11);
        if (!Owner)
        {
          Owner = [MEMORY[0x277CBEB68] null];
        }

        for (j = [v13 count]; j; --j)
        {
          [v5 addObject:Owner];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v61 objects:v75 count:16];
    }

    while (v7);
  }

  else
  {
    v8 = 0;
  }

  v73[0] = @"sequence";
  v73[1] = @"passes";
  v74[1] = v48;
  v74[2] = v3;
  v73[2] = @"targets";
  v73[3] = @"symbols";
  v73[4] = @"owners";
  v74[0] = v49;
  v74[3] = v4;
  v74[4] = v5;
  v16 = C3DFXTechniqueCreateWithDescription([MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:5], a2);
  v17 = v16[17];
  if (v17 != v8)
  {
    if (v17)
    {
      CFRelease(v17);
      v16[17] = 0;
    }

    if (v8)
    {
      v18 = CFRetain(v8);
    }

    else
    {
      v18 = 0;
    }

    v16[17] = v18;
  }

  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v19 = [obj countByEnumeratingWithState:&v57 objects:v72 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = 0;
    v50 = *v58;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v58 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v57 + 1) + 8 * k);
        if (v23[9] >= 1)
        {
          v24 = 0;
          do
          {
            v25 = *(v23[10] + 8 * v24);
            v26 = *(v16[10] + 8 * v21);
            v27 = *(v25 + 520);
            if (v27 != *(v26 + 520))
            {
              v28 = scn_default_log();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
              {
                C3DFXTechniqueCreateBySequencingTechniques_cold_1(v70, &v71, v28);
              }

              v27 = *(v25 + 520);
            }

            if (v27 >= 1)
            {
              for (m = 0; m < v27; ++m)
              {
                v30 = *(*(v25 + 512) + 8 * m);
                if (*(v30 + 16) == 3)
                {
                  v31 = *(v30 + 96);
                  if (v31)
                  {
                    C3DFXPassInputSetBindingBlock(*(*(v26 + 512) + 8 * m), v31);
                    v27 = *(v25 + 520);
                  }
                }
              }
            }

            if (*(v26 + 544))
            {
              v32 = scn_default_log();
              if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
              {
                C3DFXTechniqueCreateBySequencingTechniques_cold_2(v68, &v69, v32);
              }
            }

            C3DFXPassSetInitializeBlock(v26, *(v25 + 544));
            if (*(v26 + 552))
            {
              v33 = scn_default_log();
              if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
              {
                C3DFXTechniqueCreateBySequencingTechniques_cold_3(v66, &v67, v33);
              }
            }

            C3DFXPassSetExecuteBlock(v26, *(v25 + 552));
            *(v26 + 216) = *(v25 + 216);
            v34 = *(v25 + 232);
            v35 = *(v25 + 248);
            v36 = *(v25 + 264);
            *(v26 + 280) = *(v25 + 280);
            *(v26 + 264) = v36;
            *(v26 + 248) = v35;
            *(v26 + 232) = v34;
            v37 = *(v25 + 392);
            v38 = *(v25 + 408);
            *(v26 + 424) = *(v25 + 424);
            *(v26 + 392) = v37;
            *(v26 + 408) = v38;
            *(v26 + 200) = *(v25 + 200);
            ++v24;
            ++v21;
          }

          while (v24 < v23[9]);
        }

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v39 = *(v23[12] + 16);
        v40 = [v39 countByEnumeratingWithState:&v53 objects:v65 count:16];
        if (v40)
        {
          v41 = v40;
          v42 = *v54;
          do
          {
            for (n = 0; n != v41; ++n)
            {
              if (*v54 != v42)
              {
                objc_enumerationMutation(v39);
              }

              v44 = *(*(&v53 + 1) + 8 * n);
              v52 = 0;
              ValueForSymbol = C3DFXTechniqueGetValueForSymbol(v23, v44, &v52);
              if (ValueForSymbol)
              {
                C3DFXTechniqueSetValueForSymbolWithCount(v16, v44, ValueForSymbol, 1);
              }
            }

            v41 = [v39 countByEnumeratingWithState:&v53 objects:v65 count:16];
          }

          while (v41);
        }
      }

      v20 = [obj countByEnumeratingWithState:&v57 objects:v72 count:16];
    }

    while (v20);
  }

  return CFRetain(v16);
}

BOOL _depthIsConsumed(uint64_t a1, uint64_t a2)
{
  PassCount = C3DFXTechniqueGetPassCount(a1);
  v5 = a2 + 1;
  if (v5 >= PassCount)
  {
    return 0;
  }

  else
  {
    v6 = PassCount;
    v7 = 1;
    while (1)
    {
      PassAtIndex = C3DFXTechniqueGetPassAtIndex(a1, v5);
      v9 = *(PassAtIndex + 520);
      if (v9 >= 1)
      {
        break;
      }

LABEL_7:
      v7 = ++v5 < v6;
      if (v5 == v6)
      {
        return v7;
      }
    }

    v10 = *(PassAtIndex + 512);
    while ((*(*v10 + 80) & 2) == 0)
    {
      v10 += 8;
      if (!--v9)
      {
        goto LABEL_7;
      }
    }
  }

  return v7;
}

uint64_t _loadNodeReference(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const void **a6)
{
  v10 = [a2 objectForKey:a1];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  if ([v10 isEqualToString:@"self"])
  {
    if (!a4)
    {

      return C3DFXTechniqueGetOwner(a3);
    }

    return a4;
  }

  if (!a5)
  {
    v13 = *a6;
    if (*a6 != v11)
    {
      if (v13)
      {
        CFRelease(v13);
        *a6 = 0;
      }

      a4 = 0;
      *a6 = CFRetain(v11);
      return a4;
    }

    return 0;
  }

  return C3DNodeGetNodeWithName(a5, v11);
}

uint64_t _computeInputCountForOutputNamed(uint64_t a1, const void *a2, uint64_t a3, _BYTE *a4, int a5)
{
  PassCount = C3DFXTechniqueGetPassCount(a1);
  v10 = a3 + 1;
  if (a3 + 1 >= PassCount)
  {
    LOBYTE(v12) = 0;
    v21 = 1;
    v14 = 1;
    if (!a4)
    {
      return v14;
    }

    goto LABEL_19;
  }

  v11 = PassCount;
  v23 = a5;
  v24 = a4;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  do
  {
    PassAtIndex = C3DFXTechniqueGetPassAtIndex(a1, v10);
    if (*(PassAtIndex + 520) >= 1)
    {
      v16 = 0;
      do
      {
        v17 = *(*(*(PassAtIndex + 512) + 8 * v16) + 56);
        if (v17 && CFEqual(v17, a2))
        {
          ++v14;
          v12 |= v13 ^ 1;
        }

        ++v16;
      }

      while (v16 < *(PassAtIndex + 520));
    }

    if (*(PassAtIndex + 440))
    {
      v18 = 0;
      v19 = 8;
      do
      {
        v20 = *(*(PassAtIndex + 432) + v19);
        if (v20 && CFEqual(v20, a2))
        {
          v13 |= v12 ^ 1;
          ++v14;
        }

        ++v18;
        v19 += 64;
      }

      while (v18 < *(PassAtIndex + 440));
    }

    ++v10;
  }

  while (v10 != v11);
  v21 = v13 ^ 1;
  a4 = v24;
  a5 = v23;
  if (v24)
  {
LABEL_19:
    if (!a5)
    {
      v21 = v12;
    }

    *a4 = v21 & 1;
  }

  return v14;
}

uint64_t C3DFXTechniqueIsBeingRendered(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 88) >> 1) & 1;
}

uint64_t C3DFXTechniqueIsOpaque(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return (*(a1 + 88) >> 2) & 1;
}

void C3DFXTechniqueSetIsOpaque(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a2)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  *(a1 + 88) = *(a1 + 88) & 0xFB | v12;
}

void C3DFXTechniqueAddSubTechnique(uint64_t a1, void *value)
{
  if (!a1 && (v4 = scn_default_log(), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DFXTechniqueAppendPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
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
    C3DFXTechniqueAddSubTechnique_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  Mutable = *(a1 + 120);
  if (!Mutable)
  {
    Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    *(a1 + 120) = Mutable;
  }

  value[16] = a1;
  CFArrayAppendValue(Mutable, value);
}

uint64_t C3DFXTechniqueGetParentTechnique(uint64_t a1)
{
  if (!a1)
  {
    v2 = scn_default_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return *(a1 + 128);
}

void C3DFXTechniqueAddSymbolWithBindingBlock(uint64_t a1, const void *a2, void *a3)
{
  if (!a1)
  {
    v6 = scn_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  if (*(a1 + 72) >= 1)
  {
    v14 = 0;
    do
    {
      v15 = *(*(a1 + 80) + 8 * v14);
      if (*(v15 + 520) >= 1)
      {
        v16 = 0;
        do
        {
          v17 = *(*(v15 + 512) + 8 * v16);
          SymbolName = C3DFXPassInputGetSymbolName(v17);
          if (CFEqual(a2, SymbolName))
          {
            C3DFXPassInputSetBindingBlock(v17, a3);
          }

          ++v16;
        }

        while (v16 < *(v15 + 520));
      }

      Material = C3DFXPassGetMaterial(v15);
      if (Material)
      {
        Technique = C3DMaterialGetTechnique(Material);
        if (Technique)
        {
          C3DFXTechniqueAddSymbolWithBindingBlock(Technique, a2, a3);
        }
      }

      ++v14;
    }

    while (v14 < *(a1 + 72));
  }
}

uint64_t C3DFXTechniqueCreateDefault(int a1, int a2)
{
  if (a2)
  {
    v3 = @"C3DFXDefault_velocity.plist";
  }

  else
  {
    v3 = @"C3DFXDefaultPass.plist";
  }

  v4 = C3DDictionaryNamed(v3);
  v5 = C3DFXTechniqueCreateWithDescription(v4, 0);
  PassAtIndex = C3DFXTechniqueGetPassAtIndex(v5, 0);
  if (a1)
  {
    *(PassAtIndex + 296) = 36;
  }

  return v5;
}

uint64_t C3DFXTechniqueEnsureThatPassesShouldExecute(uint64_t a1)
{
  result = C3DFXTechniqueGetPassCount(a1);
  if (result >= 1)
  {
    v3 = result;
    for (i = 0; i != v3; ++i)
    {
      result = C3DFXTechniqueGetPassAtIndex(a1, i);
      v5 = *(result + 232);
      if (v5)
      {
        result = v5();
      }
    }
  }

  return result;
}

BOOL C3DFXTechniqueMarkAsUsed(uint64_t a1, int a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 92) != a2;
  *(a1 + 92) = a2;
  return result;
}

uint64_t C3DFXTechniqueGetSingleProgram(uint64_t result)
{
  if (result)
  {
    PassAtIndex = C3DFXTechniqueGetPassAtIndex(result, 0);

    return C3DFXPassGetProgram(PassAtIndex);
  }

  return result;
}

void *C3DFXTechniqueSetParentTechnique(uint64_t a1, uint64_t a2)
{
  Owner = C3DFXTechniqueGetOwner(a2);
  C3DFXTechniqueSetOwner(a1, Owner);
  C3DFXTechniqueCompile(a1);
  _freeStorage(a1);
  result = *(a2 + 96);
  if (!result)
  {
    result = malloc_type_calloc(0x18uLL, 1uLL, 0x1030040D5FA72FAuLL);
    *(a2 + 96) = result;
    *(a2 + 88) |= 0x10u;
  }

  *(a1 + 96) = result;
  *(a1 + 88) &= ~0x10u;
  return result;
}

void C3DFXTechniqueSetLibrary(uint64_t a1, void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFXTechniqueAppendPass_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(a1 + 136);
  if (v12 != a2)
  {

    *(a1 + 136) = a2;
  }
}

void _releaseCFTypeParameters(uint64_t a1, int a2, uint64_t a3)
{
  if ((a2 & 0x3F) == 5)
  {
    v3 = *(a3 + HIWORD(a2));
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

CFStringRef _C3DFXTechniqueCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXTechnique>");
}

CFStringRef _C3DFXTechniqueCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DFXTechnique>");
}

__CFArray *_C3DFXTechniqueCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  if (*(a1 + 72) >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      v5 = CFStringCreateWithFormat(0, 0, @"pass %d", v4);
      v6 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      v16 = 2;
      valuePtr = 5;
      v15 = *(a1 + 80) + v3;
      v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
      v8 = CFNumberCreate(0, kCFNumberSInt32Type, &v16);
      v9 = CFNumberCreate(0, kCFNumberLongType, &v15);
      CFDictionarySetValue(v6, @"name", v5);
      CFDictionarySetValue(v6, @"type", v7);
      CFDictionarySetValue(v6, @"address", v9);
      CFDictionarySetValue(v6, @"semantic", v8);
      CFArrayAppendValue(Mutable, v6);
      CFRelease(v8);
      CFRelease(v6);
      CFRelease(v9);
      CFRelease(v7);
      CFRelease(v5);
      ++v4;
      v3 += 8;
    }

    while (v4 < *(a1 + 72));
  }

  v10 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v16 = 2;
  valuePtr = 5;
  v15 = a1 + 104;
  v11 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &v16);
  v13 = CFNumberCreate(0, kCFNumberLongType, &v15);
  CFDictionarySetValue(v10, @"name", @"plist");
  CFDictionarySetValue(v10, @"type", v11);
  CFDictionarySetValue(v10, @"address", v13);
  CFDictionarySetValue(v10, @"semantic", v12);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v12);
  CFRelease(v10);
  CFRelease(v13);
  CFRelease(v11);
  return Mutable;
}

void OUTLINED_FUNCTION_1_6(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}