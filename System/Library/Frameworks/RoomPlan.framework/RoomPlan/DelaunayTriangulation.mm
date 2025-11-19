@interface DelaunayTriangulation
+ (DelaunayTriangulation)shared;
- (id)computeTriangulation:(id)a3;
@end

@implementation DelaunayTriangulation

+ (DelaunayTriangulation)shared
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__DelaunayTriangulation_shared__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (+[DelaunayTriangulation shared]::onceToken[0] != -1)
  {
    dispatch_once(+[DelaunayTriangulation shared]::onceToken, block);
  }

  v2 = +[DelaunayTriangulation shared]::singleton;

  return v2;
}

uint64_t __31__DelaunayTriangulation_shared__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  +[DelaunayTriangulation shared]::singleton = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (id)computeTriangulation:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v39 = a3;
  v40 = objc_opt_new();
  __src = 0;
  v47 = 0;
  v48 = 0;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v3 = v39;
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v54 count:{16, v39}];
  if (v4)
  {
    v5 = *v43;
    v6 = vdup_n_s32(0x47C35000u);
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v43 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v42 + 1) + 8 * i) value];
        v9 = vcvtq_s64_f64(vcvtq_f64_f32(vmul_f32(v8, v6)));
        v10 = v47;
        if (v47 >= v48)
        {
          v12 = __src;
          v13 = v47 - __src;
          v14 = (v47 - __src) >> 4;
          v15 = v14 + 1;
          if ((v14 + 1) >> 60)
          {
            std::vector<PointInt64>::__throw_length_error[abi:ne200100]();
          }

          v16 = v48 - __src;
          if ((v48 - __src) >> 3 > v15)
          {
            v15 = v16 >> 3;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF0)
          {
            v17 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          if (v17)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<PointInt64>>(&__src, v17);
          }

          *(16 * v14) = v9;
          v11 = (16 * v14 + 16);
          memcpy(0, v12, v13);
          v18 = __src;
          __src = 0;
          v47 = v11;
          v48 = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *v47 = v9;
          v11 = (v10 + 16);
        }

        v47 = v11;
      }

      v4 = [v3 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v4);
  }

  v53 = 0;
  v51 = 0u;
  *__p = 0u;
  *v49 = 0u;
  *v50 = 0u;
  boost::polygon::construct_voronoi<std::__wrap_iter<PointInt64 *>,boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>>(__src, v47, v49);
  v19 = v50[1];
  for (j = v51; v19 != j; v19 += 4)
  {
    v20 = v19[2];
    v21 = **v20;
    v22 = v20[4][2];
    v23 = **v22;
    do
    {
      v22 = v22[4][2];
      v24 = **v22;
      v25 = [DelaunayTriangle alloc];
      v26 = [v3 objectAtIndexedSubscript:v21];
      [v26 value];
      v28 = v27;
      v29 = [v3 objectAtIndexedSubscript:v23];
      [v29 value];
      v31 = v30;
      v32 = [v3 objectAtIndexedSubscript:v24];
      [v32 value];
      v34 = [(DelaunayTriangle *)v25 initFirst:v28 second:v31 third:v33];

      [v34 area];
      if (v35 >= 0.00000011921)
      {
        [v40 addObject:v34];
      }

      v23 = v24;
    }

    while (v24 != v21);
  }

  v36 = [v40 copy];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v50[1])
  {
    *&v51 = v50[1];
    operator delete(v50[1]);
  }

  if (v49[0])
  {
    v49[1] = v49[0];
    operator delete(v49[0]);
  }

  if (__src)
  {
    v47 = __src;
    operator delete(__src);
  }

  v37 = *MEMORY[0x277D85DE8];

  return v36;
}

@end