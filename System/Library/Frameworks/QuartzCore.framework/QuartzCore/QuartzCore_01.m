uint64_t CA::Render::Update::mark_root_dependence(uint64_t this, CA::Render::LayerNode *a2, CA::Render::LayerNode *a3)
{
  if ((this & 1) == 0)
  {
    v3 = a3;
    v4 = a2;
    if (a2)
    {
      this = CA::Render::LayerNode::shared_ancestor(a2, a3);
      if (this)
      {
        v5 = *(this + 40);
        if (!v5)
        {
          return this;
        }

LABEL_13:
        *(v5 + 104) |= 0x1000000000000000uLL;
        return this;
      }

      do
      {
        v7 = v3;
        v3 = *(v3 + 11);
      }

      while (v3);
      v8 = *(v7 + 5);
      if (v8)
      {
        *(v8 + 104) |= 0x1000000000000000uLL;
      }

      do
      {
        v6 = v4;
        v4 = *(v4 + 11);
      }

      while (v4);
    }

    else
    {
      do
      {
        v6 = v3;
        v3 = *(v3 + 11);
      }

      while (v3);
    }

    v5 = *(v6 + 5);
    if (!v5)
    {
      return this;
    }

    goto LABEL_13;
  }

  return this;
}

uint64_t CA::Render::LayerNode::shared_ancestor(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    if (!a2)
    {
      return 0;
    }

    if (*(result + 88) == a2)
    {
      return a2;
    }

    if (*(a2 + 88) != result)
    {
      v2 = 1;
      v3 = 1;
      v4 = a2;
      v5 = result;
      while (1)
      {
        if (v3)
        {
          v6 = *(v5 + 24);
          if ((v6 & 0x200000) != 0)
          {
            goto LABEL_19;
          }

          *(v5 + 24) = v6 | 0x200000;
          v5 = *(v5 + 88);
          if (!v2)
          {
LABEL_9:
            v4 = 0;
            goto LABEL_13;
          }
        }

        else
        {
          v5 = 0;
          if (!v2)
          {
            goto LABEL_9;
          }
        }

        v7 = *(v4 + 24);
        if ((v7 & 0x200000) != 0)
        {
          v5 = v4;
          do
          {
LABEL_19:
            v8 = *(result + 24);
            if ((v8 & 0x200000) == 0)
            {
              break;
            }

            *(result + 24) = v8 & 0xFFFFFFFFFFDFFFFFLL;
            result = *(result + 88);
          }

          while (result);
          do
          {
            v9 = *(a2 + 24);
            if ((v9 & 0x200000) == 0)
            {
              break;
            }

            *(a2 + 24) = v9 & 0xFFFFFFFFFFDFFFFFLL;
            a2 = *(a2 + 88);
          }

          while (a2);
          return v5;
        }

        *(v4 + 24) = v7 | 0x200000;
        v4 = *(v4 + 88);
LABEL_13:
        v3 = v5 != 0;
        v2 = v4 != 0;
        if (!(v5 | v4))
        {
          v5 = 0;
          goto LABEL_19;
        }
      }
    }
  }

  return result;
}

void CA::Render::LayerNode::MapGeometry::map(uint64_t this, CA::Render::LayerNode *a2, CA::Render::LayerNode *a3)
{
  v5 = this;
  v45 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    this = CA::Render::LayerNode::shared_ancestor(a2, a3);
    v6 = this;
    if (this)
    {
      do
      {
        if ((*(*(v6 + 4) + 13) & 9) == 0)
        {
          break;
        }

        v6 = *(v6 + 11);
      }

      while (v6);
    }
  }

  else
  {
    v6 = 0;
  }

  v37 = xmmword_183E20E00;
  v38 = 0u;
  v7.f64[1] = 1.0;
  v39 = xmmword_183E20E60;
  v40 = 0u;
  v41 = 0u;
  v42 = xmmword_183E20E00;
  v35 = xmmword_183E20E60;
  v36 = xmmword_183E20E00;
  v43 = 0u;
  v44 = xmmword_183E20E60;
  if (v6 == a2)
  {
    goto LABEL_23;
  }

  v8 = 0;
  v9 = a2;
  do
  {
    while (1)
    {
      if (v9 != a2 && (*(*(v9 + 4) + 12) & 0x900) != 0)
      {
        goto LABEL_20;
      }

      v10 = *(v9 + 7);
      if (!v10)
      {
        v12 = *(v9 + 4);
        v7.f64[0] = *(v9 + 10);
        v37 = vmlaq_laneq_f64(v37, v12, v38, 1);
        v38 = vmlaq_laneq_f64(v38, v7, v38, 1);
        v39 = vmlaq_laneq_f64(v39, v12, v40, 1);
        v40 = vmlaq_laneq_f64(v40, v7, v40, 1);
        v41 = vmlaq_laneq_f64(v41, v12, v42, 1);
        v42 = vmlaq_laneq_f64(v42, v7, v42, 1);
        v43 = vmlaq_laneq_f64(v43, v12, v44, 1);
        v44 = vmlaq_laneq_f64(v44, v7, v44, 1);
        goto LABEL_16;
      }

      this = CA::Mat4Impl::mat4_is_affine(*(v9 + 7), a2);
      if (this)
      {
        break;
      }

      (**v5)(v5, &v37);
      this = (**v5)(v5, *(v9 + 7));
      v8 = 0;
      v13 = 0;
      v7.f64[1] = *(&v35 + 1);
      v37 = v36;
      v38 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = v35;
      v42 = v36;
      v43 = 0u;
      v44 = v35;
      v9 = *(v9 + 11);
      if (v9 == v6)
      {
        goto LABEL_24;
      }
    }

    if (v8)
    {
      CA::Mat4Impl::mat4_concat(&v37, &v37, v10->f64, v11);
LABEL_16:
      v8 = 1;
      goto LABEL_20;
    }

    v14 = v10[1];
    v15 = v10[2];
    v16 = v10[3];
    v37 = *v10;
    v38 = v14;
    v39 = v15;
    v40 = v16;
    v7 = v10[5];
    v17 = v10[6];
    v18 = v10[7];
    v41 = v10[4];
    v42 = v7;
    v8 = 1;
    v43 = v17;
    v44 = v18;
LABEL_20:
    v9 = *(v9 + 11);
  }

  while (v9 != v6);
  if ((v8 & 1) == 0)
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  this = (**v5)(v5, &v37);
  v13 = 1;
LABEL_24:
  if (v6 != a3)
  {
    v19 = 0;
    v20 = 2304;
    v21 = a3;
    do
    {
      if (v21 == a3 || (*(*(v21 + 4) + 12) & v20) == 0)
      {
        this = MEMORY[0x1EEE9AC00](this);
        *(&v35 - 2) = v21;
        *(&v35 - 1) = v19;
        v19 = &v35 - 1;
      }

      v21 = *(v21 + 11);
    }

    while (v21 != v6);
    if (v13)
    {
      v37 = v36;
      v38 = 0u;
      v40 = 0u;
      v41 = 0u;
      v39 = v35;
      v42 = v36;
      v43 = 0u;
      v44 = v35;
    }

    if (v19)
    {
      v22 = 0;
      do
      {
        while (1)
        {
          v23 = *v19;
          v24 = *(*v19 + 56);
          if (v24)
          {
            break;
          }

          v26 = *(v23 + 64);
          v27 = *(v23 + 72);
          v28 = *(v23 + 80);
          v43 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v43, v37, v26), v39, v27), v41, v28);
          v44 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(v44, v38, v26), v40, v27), v42, v28);
LABEL_47:
          v19 = *(v19 + 1);
          v22 = 1;
          if (!v19)
          {
            if (CA::Mat4Impl::mat4_invert(&v37, &v37, a3))
            {
              (*(*v5 + 8))(v5, &v37);
            }

            return;
          }
        }

        if (CA::Mat4Impl::mat4_is_affine(*(*v19 + 56), a2))
        {
          if (v22)
          {
            CA::Mat4Impl::mat4_concat(&v37, v24->f64, &v37, v25);
          }

          else
          {
            v29 = v24[1];
            v30 = v24[2];
            v31 = v24[3];
            v37 = *v24;
            v38 = v29;
            v39 = v30;
            v40 = v31;
            v32 = v24[5];
            v33 = v24[6];
            v34 = v24[7];
            v41 = v24[4];
            v42 = v32;
            v43 = v33;
            v44 = v34;
          }

          goto LABEL_47;
        }

        if ((v22 & 1) != 0 && CA::Mat4Impl::mat4_invert(&v37, &v37, a3))
        {
          (*(*v5 + 8))(v5, &v37);
        }

        if (CA::Mat4Impl::mat4_invert(&v37, *(v23 + 56), a3))
        {
          (*(*v5 + 8))(v5, &v37);
        }

        v22 = 0;
        v37 = v36;
        v38 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = v35;
        v42 = v36;
        v43 = 0u;
        v44 = v35;
        v19 = *(v19 + 1);
      }

      while (v19);
    }
  }
}

uint64_t *CA::Render::Update::release_object(uint64_t *this, const CA::Render::Object *a2)
{
  if (a2)
  {
    v3 = this;
    v4 = *this;
    v5 = *(*this + 16);
    v6 = v5 >= 0x10;
    v7 = v5 - 16;
    if (v6)
    {
      this = *(v4 + 8);
      *(v4 + 8) = this + 2;
      *(v4 + 16) = v7;
    }

    else
    {
      this = x_heap_malloc_small_(*this, 0x10uLL);
    }

    v8 = *(v3 + 352);
    *this = a2;
    this[1] = v8;
    *(v3 + 352) = this;
  }

  return this;
}

char *CA::Render::SDFElementLayer::copy@<X0>(CA::Render::SDFElementLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x28uLL, 0xDEEC3011uLL);
  if (result)
  {
    *(result + 2) = 1;
    *(result + 3) = 47;
    ++dword_1ED4EAAF4;
    *result = &unk_1EF1FEAC8;
    *(result + 6) = 1065353216;
    *(result + 8) = *(this + 8);
    *(result + 20) = *(this + 20);
    *(result + 7) = *(this + 7);
    result[32] = *(this + 32);
  }

  *a2 = result;
  return result;
}

void CA::Render::Layer::Ext::unref(CA::Render::Layer::Ext *this)
{
  if (atomic_fetch_add(this + 88, 0xFFFFFFFF) == 1)
  {
    v3 = *(this + 18);
    if (v3 && atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 16))(v3);
    }

    v4 = *(this + 17);
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
    }

    v5 = *(this + 16);
    if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
    }

    v6 = *(this + 15);
    if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v6 + 16))(v6);
    }

    v7 = *(this + 14);
    if (v7 && atomic_fetch_add(v7 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v7 + 16))(v7);
    }

    v8 = *(this + 13);
    if (v8 && atomic_fetch_add(v8 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v8 + 16))(v8);
    }

    v9 = *(this + 12);
    if (v9 && atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v9 + 16))(v9);
    }

    v10 = *(this + 11);
    if (v10 && atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v10 + 16))(v10);
    }

    v11 = *(this + 10);
    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11);
    }

    v12 = *(this + 9);
    if (v12 && atomic_fetch_add(v12 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v12 + 16))(v12);
    }

    v13 = *(this + 8);
    if (v13 && atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v13 + 16))(v13);
    }

    v14 = *(this + 7);
    if (v14 && atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v14 + 16))(v14);
    }

    v15 = *(this + 6);
    if (v15 && atomic_fetch_add(v15 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v15 + 16))(v15);
    }

    v16 = *(this + 5);
    if (v16 && atomic_fetch_add(v16 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v16 + 16))(v16);
    }

    v17 = *(this + 4);
    if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v17 + 16))(v17);
    }

    v18 = *(this + 3);
    if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v18 + 16))(v18);
    }

    v19 = *(this + 2);
    if (v19 && atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v19 + 16))(v19);
    }

    v20 = *(this + 1);
    if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v20 + 16))(v20);
    }

    v21 = *this;
    if (*this && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v21 + 16))(v21);
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v22 = malloc_zone;

    malloc_zone_free(v22, this);
  }
}

atomic_uint *CA::Render::Layer::set_transform_matrix(atomic_uint *result, uint64_t a2, int a3, unint64_t a4, float64x2_t *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  if (a4 >= 0x10)
  {
    result = CA::Render::Layer::ensure_ext(result);
    v10 = result;
    v11.n128_u64[0] = *&a5->f64[0];
    if (a5->f64[0] == 1.0)
    {
      v17 = 1;
      while (v17 != 16)
      {
        v18 = v17;
        v11.n128_u64[0] = *&a5->f64[v17];
        v19 = *(&CA::Mat4Impl::mat4_identity_double + v17++);
        if (v11.n128_f64[0] != v19)
        {
          if ((v18 - 1) < 0xF)
          {
            goto LABEL_3;
          }

          break;
        }
      }

      if ((a3 & 1) == 0)
      {
        result = *(result + a2);
        *(v10 + a2) = 0;
        if (result)
        {
          if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
          {
            v20 = *(*result + 16);

            return v20(v11);
          }
        }
      }
    }

    else
    {
LABEL_3:
      memset(v21, 0, sizeof(v21));
      if (a3)
      {
        v12 = *(result + a2);
        if (v12)
        {
          v13 = *(v12 + 16);
          v14 = (v12 + 24);
          if (v13 <= 0xF)
          {
            v15 = &CA::Mat4Impl::mat4_identity_double;
          }

          else
          {
            v15 = v14;
          }

          CA::Mat4Impl::mat4_concat(v21, v15, a5->f64, v9);
          a5 = v21;
        }
      }

      v16 = CA::Render::Vector::new_vector(0x10, a5, v8);
      result = *(v10 + a2);
      *(v10 + a2) = v16;
      if (result)
      {
        if (atomic_fetch_add(result + 2, 0xFFFFFFFF) == 1)
        {
          return (*(*result + 16))(result);
        }
      }
    }
  }

  return result;
}

double CA::Mat4Impl::mat4_get_scale(float64x2_t *this, double *a2, double *a3, double *a4)
{
  v4 = vaddvq_f64(vmulq_f64(*this, *this));
  v5 = vaddvq_f64(vmulq_f64(this[2], this[2]));
  v6 = this[7].f64[1];
  if (v6 != 1.0)
  {
    v7 = 1.0 / (v6 * v6);
    v4 = v7 * v4;
    v5 = v7 * v5;
  }

  v8 = v4 != 1.0;
  if (v5 != 1.0)
  {
    v8 = 1;
  }

  v9 = sqrt(v4);
  v10 = sqrt(v5);
  if (v8)
  {
    v5 = v10;
  }

  if (a2)
  {
    if (v8)
    {
      v4 = v9;
    }

    *a2 = v4;
  }

  if (a3)
  {
    *a3 = v5;
  }

  result = (v10 + v9) * 0.5;
  if (!v8)
  {
    return 1.0;
  }

  return result;
}

float64x2_t CA::Render::Layer::compute_frame_transform(uint64_t a1, uint64_t a2, CA::Mat4Impl *this, const double *a4)
{
  v7 = *(a1 + 136);
  if (a2)
  {
    v8 = *(a2 + 136);
    v9 = (*(a2 + 50) >> 6) & 1;
    if (v7)
    {
LABEL_3:
      v10 = vmulq_f64(*(v7 + 168), *(a1 + 88));
      v11 = *(v7 + 184);
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
    LOBYTE(v9) = 0;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  v10 = 0uLL;
  v11 = 0.0;
  if ((*(a1 + 50) & 0x40) == 0)
  {
    __asm { FMOV            V1.2D, #0.5 }

    v10 = vmulq_f64(*(a1 + 88), _Q1);
  }

LABEL_7:
  if (v8)
  {
    v17 = *(v8 + 24);
  }

  else
  {
    v17 = 0;
  }

  if (!(a4 | v17))
  {
    if (v7)
    {
      v18 = *(v7 + 16);
      if (v18)
      {
        goto LABEL_16;
      }

      *this = xmmword_183E20E00;
      *(this + 1) = 0u;
      *(this + 2) = xmmword_183E20E60;
      *(this + 3) = 0u;
      *(this + 4) = 0u;
      *(this + 5) = xmmword_183E20E00;
      *(this + 6) = 0u;
      *(this + 7) = xmmword_183E20E60;
      result = vsubq_f64(*(a1 + 56), v10);
      *(this + 6) = result;
      v43 = *(v7 + 192);
    }

    else
    {
      *this = xmmword_183E20E00;
      *(this + 1) = 0u;
      *(this + 2) = xmmword_183E20E60;
      *(this + 3) = 0u;
      *(this + 4) = 0u;
      *(this + 5) = xmmword_183E20E00;
      *(this + 6) = 0u;
      *(this + 7) = xmmword_183E20E60;
      result = vsubq_f64(*(a1 + 56), v10);
      *(this + 6) = result;
      v43 = 0.0;
    }

    *(this + 14) = v43 - v11;
    v35 = xmmword_183E20E60;
    v38 = xmmword_183E20E00;
    v37 = 0uLL;
    v36 = 0uLL;
    v34 = 0uLL;
    v33 = xmmword_183E20E00;
    goto LABEL_37;
  }

  if (v7)
  {
    v18 = *(v7 + 16);
    if (v18)
    {
LABEL_16:
      v20 = *(v18 + 16);
      v19 = (v18 + 24);
      if (v20 <= 0xF)
      {
        v19 = &CA::Mat4Impl::mat4_identity_double;
      }

      goto LABEL_18;
    }
  }

  v19 = &CA::Mat4Impl::mat4_identity_double;
LABEL_18:
  v22 = *v19;
  v21 = v19[1];
  v23 = v19[2];
  v24 = v19[3];
  *this = *v19;
  *(this + 1) = v21;
  *(this + 2) = v23;
  *(this + 3) = v24;
  v26 = v19[4];
  v25 = v19[5];
  v27 = v19[6];
  v28 = v19[7];
  *(this + 4) = v26;
  *(this + 5) = v25;
  v29 = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(v27, v22, v10.f64[0], 0), v23, v10.f64[1], 0), v26, v11, 0);
  v30 = vmlsq_lane_f64(vmlsq_lane_f64(vmlsq_lane_f64(v28, v21, v10.f64[0], 0), v24, v10.f64[1], 0), v25, v11, 0);
  *(this + 6) = v29;
  *(this + 7) = v30;
  v31 = *(a1 + 56);
  if (v7)
  {
    v32 = *(v7 + 192);
  }

  else
  {
    v32 = 0;
  }

  v33 = vmlaq_laneq_f64(v22, v31, v21, 1);
  v34 = vmlaq_laneq_f64(v21, v32, v21, 1);
  v35 = vmlaq_laneq_f64(v23, v31, v24, 1);
  v36 = vmlaq_laneq_f64(v24, v32, v24, 1);
  v37 = vmlaq_laneq_f64(v26, v31, v25, 1);
  v38 = vmlaq_laneq_f64(v25, v32, v25, 1);
  result = vmlaq_laneq_f64(v29, v31, v30, 1);
  *this = v33;
  *(this + 1) = v34;
  *(this + 2) = v35;
  *(this + 3) = v36;
  *(this + 4) = v37;
  *(this + 5) = v38;
  v40 = vmlaq_laneq_f64(v30, v32, v30, 1);
  *(this + 6) = result;
  *(this + 7) = v40;
  if (a4 | v17)
  {
    if (v8)
    {
      v41 = vmulq_f64(*(v8 + 168), *(a2 + 88));
      v42 = *(v8 + 184);
    }

    else
    {
      v41 = 0uLL;
      v42 = 0.0;
      if ((v9 & 1) == 0)
      {
        __asm { FMOV            V16.2D, #0.5 }

        v41 = vmulq_f64(*(a2 + 88), _Q16);
      }
    }

    v60 = vaddq_f64(*(a2 + 72), v41);
    v61 = v42;
    *this = vmlsq_laneq_f64(v33, v60, v34, 1);
    *(this + 1) = vmlaq_laneq_f64(v34, COERCE_UNSIGNED_INT64(-v42), v34, 1);
    *(this + 2) = vmlsq_laneq_f64(v35, v60, v36, 1);
    *(this + 3) = vmlaq_laneq_f64(v36, COERCE_UNSIGNED_INT64(-v42), v36, 1);
    *(this + 4) = vmlsq_laneq_f64(v37, v60, v38, 1);
    *(this + 5) = vmlaq_laneq_f64(v38, COERCE_UNSIGNED_INT64(-v42), v38, 1);
    *(this + 6) = vmlsq_laneq_f64(result, v60, v40, 1);
    *(this + 7) = vmlaq_laneq_f64(v40, COERCE_UNSIGNED_INT64(-v42), v40, 1);
    if (v17)
    {
      v45 = *(v17 + 16);
      v46 = (v17 + 24);
      if (v45 <= 0xF)
      {
        v47 = &CA::Mat4Impl::mat4_identity_double;
      }

      else
      {
        v47 = v46;
      }

      CA::Mat4Impl::mat4_concat(this, this, v47, a4);
      v42 = v61;
    }

    if (a4)
    {
      CA::Mat4Impl::mat4_concat(this, this, a4, a4);
      v42 = v61;
    }

    v48 = *(this + 1);
    v49 = *(this + 3);
    v50 = *(this + 5);
    v51 = *(this + 7);
    v33 = vmlaq_laneq_f64(*this, v60, v48, 1);
    v34 = vmlaq_laneq_f64(v48, *&v42, v48, 1);
    v35 = vmlaq_laneq_f64(*(this + 2), v60, v49, 1);
    v36 = vmlaq_laneq_f64(v49, *&v42, v49, 1);
    v37 = vmlaq_laneq_f64(*(this + 4), v60, v50, 1);
    v38 = vmlaq_laneq_f64(v50, *&v42, v50, 1);
    result = vmlaq_laneq_f64(*(this + 6), v60, v51, 1);
    *this = v33;
    *(this + 1) = v34;
    *(this + 2) = v35;
    *(this + 3) = v36;
    *(this + 4) = v37;
    *(this + 5) = v38;
    *(this + 6) = result;
    *(this + 7) = vmlaq_laneq_f64(v51, *&v42, v51, 1);
  }

LABEL_37:
  v52 = *(a1 + 40);
  if ((v52 & 0x80000000000) != 0)
  {
    v53 = *(a1 + 96);
    result = vmlaq_n_f64(result, v35, v53);
    v35 = vnegq_f64(v35);
    v54 = vmlaq_n_f64(*(this + 7), v36, v53);
    *(this + 6) = result;
    *(this + 7) = v54;
    v36 = vnegq_f64(v36);
    *(this + 2) = v35;
    *(this + 3) = v36;
    v52 = *(a1 + 40);
  }

  if ((v52 & 0x800000000000) != 0)
  {
    v58 = *(a1 + 88);
    result = vmlaq_n_f64(result, v33, v58);
    v33 = vnegq_f64(v33);
    v59 = vmlaq_n_f64(*(this + 7), v34, v58);
    *(this + 6) = result;
    *(this + 7) = v59;
    v34 = vnegq_f64(v34);
    *this = v33;
    *(this + 1) = v34;
  }

  v56 = *(a1 + 72);
  v55 = *(a1 + 80);
  if (v56 != 0.0 || v55 != 0.0)
  {
    result = vmlaq_f64(vmlsq_lane_f64(vmlsq_lane_f64(result, v33, v56, 0), v35, v55, 0), 0, v37);
    v57 = vmlaq_f64(vmlsq_lane_f64(vmlsq_lane_f64(*(this + 7), v34, v56, 0), v36, v55, 0), 0, v38);
    *(this + 6) = result;
    *(this + 7) = v57;
  }

  return result;
}

BOOL CA::Render::Layer::is_containerable(CA::Render::Layer *this, const double *a2)
{
  if (*(this + 13))
  {
    return 0;
  }

  v4 = *(this + 12);
  if ((v4 & 0x20000) != 0)
  {
    return 0;
  }

  if (*(this + 37))
  {
    return 0;
  }

  v5 = *(this + 17);
  if (v5)
  {
    if (*(v5 + 344) != 0.0)
    {
      return 0;
    }
  }

  if (*(this + 15))
  {
    return 0;
  }

  v6 = *(this + 5);
  if ((v6 & 0x830000000000000) != 0 || *(this + 36) != 255 && *(this + 36))
  {
    return 0;
  }

  result = 0;
  if ((v4 & 0x4010) == 0x10 && (v6 & 0x800000C000000000) == 0)
  {
    v7 = *(this + 19);
    if (v7)
    {
      result = 0;
      if ((v4 & 0x200000) != 0 || (*(v7 + 104) & 0x8000000000000000) != 0)
      {
        return result;
      }
    }

    else if ((v4 & 0x200000) != 0)
    {
      return 0;
    }

    if ((v6 & 0x30007FF00000) != 0x300000000000)
    {
      return 0;
    }

    if (!v5)
    {
      goto LABEL_42;
    }

    if (*(v5 + 240) > 0.0)
    {
      return 0;
    }

    if (*v5)
    {
      return 0;
    }

    v22 = *(this + 5);
    v23 = v5;
    if (*(v5 + 96) || *(v5 + 88) || *(v5 + 104) || *(v5 + 112) || *(v5 + 80))
    {
      return 0;
    }

    v8 = *(v5 + 16);
    if (!v8 || ((v9 = *(v8 + 16), v10 = (v8 + 24), v9 >= 0x10) ? (v11 = v10) : (v11 = &CA::Mat4Impl::mat4_identity_double), result = CA::Mat4Impl::mat4_is_affine(v11, a2)))
    {
      v12 = *(v23 + 24);
      if (!v12 || (*(v12 + 16) >= 0x10u ? (v13 = (v12 + 24)) : (v13 = &CA::Mat4Impl::mat4_identity_double), result = CA::Mat4Impl::mat4_is_affine(v13, a2)))
      {
        if (*(v23 + 192) == 0.0 && *(v23 + 184) == 0.0 && ((v22 & 0x10000000000) == 0 || *(v23 + 232) == 0.0 && !(*(v23 + 72) | v12)))
        {
LABEL_42:
          v14 = *(this + 18);
          if (v14)
          {
            v15 = *(v14 + 16);
            if (v15)
            {
              v16 = 8 * v15;
              v17 = v14 + 24;
              while (*(*v17 + 12) != 61)
              {
                v17 += 8;
                v16 -= 8;
                if (!v16)
                {
                  goto LABEL_47;
                }
              }

              return 0;
            }
          }

LABEL_47:
          v18 = *(this + 14);
          if ((*(this + 13) & 0x20) != 0)
          {
            if (v18)
            {
              result = CA::Render::Layer::sublayer_allows_containerization(this, v18);
              if (!result)
              {
                return result;
              }
            }
          }

          else if (v18)
          {
            v19 = v18[4];
            if (v19)
            {
              v20 = 8 * v19;
              for (i = (v18 + 6); CA::Render::Layer::sublayer_allows_containerization(this, *i); ++i)
              {
                v20 -= 8;
                if (!v20)
                {
                  return 1;
                }
              }

              return 0;
            }
          }

          return 1;
        }

        return 0;
      }
    }
  }

  return result;
}

void CA::Render::LayerNode::MapPoints::apply(uint64_t a1, float64x2_t *this, double *a3)
{
  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CA::Mat4Impl::mat4_apply_to_point2(this, (*(a1 + 16) + v5), a3);
      ++v6;
      v5 += 16;
    }

    while (v6 < *(a1 + 8));
  }
}

void CA::Render::LayerNode::MapPoints::unapply(uint64_t a1, float64x2_t *this, double *a3)
{
  if (*(a1 + 8))
  {
    v5 = 0;
    v6 = 0;
    do
    {
      CA::Mat4Impl::mat4_unapply_inverse_to_point2(this, (*(a1 + 16) + v5), a3);
      ++v6;
      v5 += 16;
    }

    while (v6 < *(a1 + 8));
  }
}

double CA::Mat4Impl::mat4_set_corner_matrix(uint64_t a1, float64x2_t *a2, double *a3, double *a4)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a2;
  v7 = a2[1];
  v8 = vaddq_f64(vsubq_f64(v4, vaddq_f64(v7, v5)), *a2);
  v9 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL), vabsq_f64(v8)));
  if (v9.i32[0] & v9.i32[1])
  {
    _Q1 = vsubq_f64(v7, v6);
    _Q3 = vsubq_f64(v4, v7);
    v12.f64[0] = 0.0;
    v13 = 0.0;
  }

  else
  {
    v14.f64[0] = a2[1].f64[0];
    v14.f64[1] = a2[3].f64[1];
    v15 = vsubq_f64(v14, v4);
    v16 = vextq_s8(v15, v15, 8uLL);
    v17.f64[0] = a2[3].f64[0];
    v17.f64[1] = a2[1].f64[1];
    v18 = vsubq_f64(v17, v4);
    v15.f64[1] = v18.f64[1];
    v19 = vmulq_f64(vzip1q_s64(v16, v18), v15);
    v12 = vdivq_f64(vmlaq_f64(vnegq_f64(vmulq_f64(vextq_s8(v8, v8, 8uLL), v18)), v16, v8), vdupq_lane_s64(*&vsubq_f64(v19, vdupq_laneq_s64(v19, 1)), 0));
    _Q3 = vmlaq_laneq_f64(vsubq_f64(v5, v6), v5, v12, 1);
    _Q1 = vmlaq_n_f64(vsubq_f64(v7, v6), v7, v12.f64[0]);
    v13 = v12.f64[1];
  }

  if (*a3 == 0.0)
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0x3FF0000000000000;
    v20 = 0.0;
  }

  else
  {
    *a1 = _Q1.f64[0] / *a3;
    *(a1 + 8) = _Q1.f64[1] / *a3;
    *(a1 + 16) = 0;
    v20 = v12.f64[0] / *a3;
  }

  *(a1 + 24) = v20;
  v21 = a3[1];
  if (v21 == 0.0)
  {
    *(a1 + 32) = xmmword_183E20E60;
    *(a1 + 48) = 0;
    v22 = 0.0;
  }

  else
  {
    *(a1 + 32) = _Q3.f64[0] / v21;
    *(a1 + 40) = _Q3.f64[1] / a3[1];
    *(a1 + 48) = 0;
    v22 = v13 / a3[1];
  }

  *(a1 + 56) = v22;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = xmmword_183E20E00;
  *(a1 + 96) = v6;
  *(a1 + 112) = xmmword_183E20E60;
  *(a1 + 96) = v6.f64[0] + *a4 * _Q1.f64[0] + a4[1] * _Q3.f64[0];
  _Q3.f64[0] = *a4;
  __asm { FMLA            D0, D3, V1.D[1] }

  *(a1 + 104) = _D0 + a4[1] * _Q3.f64[1];
  result = *a4 * v12.f64[0] + 1.0 + a4[1] * v13;
  *(a1 + 120) = result;
  return result;
}

void CA::Render::LayerNode::depth_sort_sublayers(CA::Render::LayerNode *this)
{
  v1 = MEMORY[0x1EEE9AC00](this);
  v164[1020] = *MEMORY[0x1E69E9840];
  v159 = 0;
  v160 = 0;
  v157 = 0;
  v158 = 0;
  v3 = v1[3];
  if ((v3 & 0x20) != 0)
  {
    v1[3] = v3 & 0xFFFFFFFFFFFFFFDFLL;
    if ((*(v1[4] + 45) & 0x20) != 0)
    {
      v4 = v1 + 12;
      v5 = v1[13];
      if (v5 != v1 + 12)
      {
        v6 = 0;
        LODWORD(v153) = 0;
        v7 = 0;
        v154 = v1;
        v155 = &v155;
        v156 = &v155;
        v8 = 16;
        if (v2)
        {
          v8 = 0;
        }

        v9 = v8 | 4;
        v10 = v8 | 8;
        v11 = 1;
        do
        {
          v12 = v6;
          v6 = v5;
          while (1)
          {
            v5 = *(v6 + 1);
            v13 = *(v6 + 3);
            if ((v13 & v9) == 4)
            {
              CA::Render::LayerNode::update_z_range(v6, v2);
              v13 = *(v6 + 3);
            }

            v14 = v13 & v10;
            v15 = v13 & 0x400000;
            v16 = v14 && v15 == 0;
            if (!v16)
            {
              break;
            }

            v18 = *v6;
            v17 = *(v6 + 1);
            *(v18 + 8) = v17;
            *v17 = v18;
            *v6 = v6;
            *(v6 + 1) = &v155;
            v19 = v155;
            v155 = v6;
            *v6 = v19;
            v19[1] = v6;
            v6 = v5;
            if (v5 == v4)
            {
              goto LABEL_22;
            }
          }

          if (v7)
          {
            v20 = v6[30];
            v11 &= v20 <= v12[30];
            v21 = LODWORD(v153);
            if (v20 < v12[31])
            {
              v21 = 1;
            }

            LODWORD(v153) = v21;
          }

          ++v7;
        }

        while (v5 != v4);
LABEL_22:
        v22 = v11;
        if (v11)
        {
          v23 = v154;
          if ((LOBYTE(v153) & (v7 > 1)) == 0)
          {
            goto LABEL_164;
          }
        }

        else
        {
          v23 = v154;
          if (v7 < 2)
          {
            goto LABEL_164;
          }
        }

        v24 = 32 * v7;
        if (32 * v7 > 0x1000)
        {
          v26 = malloc_type_malloc(32 * v7, 0x108004057E67DB5uLL);
          v25 = v26;
          if (!v26)
          {
            goto LABEL_164;
          }
        }

        else
        {
          MEMORY[0x1EEE9AC00](v1);
          v25 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v25, 32 * v7);
        }

        if (4 * v7 <= 0x1000)
        {
          MEMORY[0x1EEE9AC00](v26);
          v27 = &v147 - ((4 * v7 + 15) & 0xFFFFFFFFFFFFFFF0);
          bzero(v27, 4 * v7);
          goto LABEL_32;
        }

        v27 = malloc_type_malloc(4 * v7, 0x465AA25BuLL);
        if (v27)
        {
LABEL_32:
          v151 = 4 * v7;
          v28 = v23[13];
          if (v28 != v4)
          {
            v29 = v7 - 1;
            v30 = &v27[4 * v7 - 4];
            v31 = &v25[16 * v7 - 8];
            do
            {
              *(v31 - 1) = ((*(v28 + 240) >> 63) | 0x8000000000000000) ^ *(v28 + 240);
              *v31 = v28;
              *v28 = 0;
              *v30 = *(v28 + 116);
              v30 -= 4;
              *(v28 + 116) = v29;
              v28 = *(v28 + 8);
              --v29;
              v31 -= 16;
            }

            while (v28 != v4);
          }

          v150 = v27;
          if ((v22 & 1) == 0)
          {
            if (v7 > 0x3F)
            {
              bzero(v162, 0x2000uLL);
              v40 = v25;
              v41 = v7;
              do
              {
                v42 = *v40;
                v40 += 2;
                ++LODWORD(v162[4 * v42]);
                ++HIDWORD(v162[4 * BYTE1(v42)]);
                ++LODWORD(v162[4 * BYTE2(v42) + 1]);
                ++HIDWORD(v162[4 * BYTE3(v42) + 1]);
                ++LODWORD(v162[4 * BYTE4(v42) + 2]);
                ++DWORD1(v163[2 * BYTE5(v42)]);
                ++DWORD2(v163[2 * BYTE6(v42)]);
                ++HIDWORD(v163[2 * HIBYTE(v42)]);
                --v41;
              }

              while (v41);
              v43 = 0;
              v44 = 0uLL;
              v45 = 0uLL;
              do
              {
                v46 = &v162[4 * v43];
                v47 = v46[6];
                v48 = v46[7];
                v49 = vaddq_s32(*v46, v44);
                v50 = vaddq_s32(v46[1], v45);
                v51 = vaddq_s32(v50, v46[3]);
                v52 = vaddq_s32(v49, v46[2]);
                v53 = vaddq_s32(v52, v46[4]);
                v54 = vaddq_s32(v51, v46[5]);
                *v46 = v44;
                v46[1] = v45;
                v45 = vaddq_s32(v54, v48);
                v44 = vaddq_s32(v53, v47);
                v46[2] = v49;
                v46[3] = v50;
                v46[4] = v52;
                v46[5] = v51;
                v46[6] = v53;
                v46[7] = v54;
                v55 = v43 >= 0xFC;
                v43 += 4;
              }

              while (!v55);
              v56 = 0;
              v161[0] = v25;
              v161[1] = &v25[16 * v7];
              do
              {
                v57 = v161[!(v56 & 1)];
                v58 = (v161[v56 & 1] + 8);
                v59 = v7;
                do
                {
                  v60 = *(v58 - 1);
                  v61 = *v58;
                  v62 = &v162[4 * (v60 >> (8 * v56))];
                  v63 = *(v62 + v56);
                  *(v62 + v56) = v63 + 1;
                  v64 = (v57 + 16 * v63);
                  *v64 = v60;
                  v64[1] = v61;
                  v58 += 2;
                  --v59;
                }

                while (v59);
                ++v56;
              }

              while (v56 != 8);
            }

            else if (v7 >= 2)
            {
              v32 = 1;
              v33 = v25;
              do
              {
                v34 = &v25[16 * v32];
                v35 = *v34;
                v36 = *(v34 + 1);
                v37 = v33;
                v38 = v32;
                while (*v37 > v35)
                {
                  --v38;
                  v37[1] = *v37;
                  --v37;
                  if (v38 + 1 <= 1)
                  {
                    v38 = 0;
                    break;
                  }
                }

                v39 = &v25[16 * v38];
                *v39 = v35;
                *(v39 + 1) = v36;
                ++v32;
                ++v33;
              }

              while (v32 != v7);
            }
          }

          v157 = &v157;
          v158 = &v157;
          if (v7)
          {
            v65 = 8;
            v66 = v7;
            do
            {
              v67 = *&v25[v65];
              *v67 = v67;
              v67[1] = &v157;
              v68 = v157;
              v157 = v67;
              *v67 = v68;
              *(v68 + 1) = v67;
              v67[11] = 0;
              v67[3] = (v67[3] & 0xFFFFFFFFFFFFFFFDLL);
              v65 += 16;
              --v66;
            }

            while (v66);
            if (v24 > 0x1000)
            {
              free(v25);
            }
          }

          v69 = v162;
          v162[0] = 0;
          v162[1] = v164;
          v163[0] = xmmword_183E21230;
          v159 = 0;
          v160 = v162;
          v70 = 0x2000;
          if (v7 * v7 < 0x2000)
          {
            v70 = v7 * v7;
          }

          v23[12] = v23 + 12;
          v23[13] = v4;
          v71 = v158;
          if (v158 == &v157)
          {
LABEL_160:
            x_heap_free(v69);
            v141 = v23[13];
            v142 = v150;
            for (i = v151; v141 != v4; v141 = *(v141 + 8))
            {
              *(v141 + 116) = v142[*(v141 + 116)];
            }

            if (i > 0x1000)
            {
              free(v142);
            }

            goto LABEL_164;
          }

          v148 = v70;
          v152 = 0;
          v153 = -0.0000999999975;
          v149 = 0.0001;
LABEL_63:
          v72 = *(v71 + 8);
          if (v72 == &v157)
          {
            goto LABEL_148;
          }

          while (1)
          {
            while (1)
            {
              if (*(v71 + 248) <= *(v72 + 240))
              {
                if ((*(v72 + 24) & 2) == 0)
                {
                  goto LABEL_147;
                }

                goto LABEL_73;
              }

              v73 = *(v71 + 88);
              if (!v73)
              {
                v73 = CA::Render::compute_occlusion_data(&v159, v71);
                *(v71 + 88) = v73;
                if (!v73)
                {
                  v121 = *v71;
                  v120 = *(v71 + 8);
                  *(v121 + 8) = v120;
                  *v120 = v121;
                  *v71 = v71;
                  *(v71 + 8) = v71;
                  if (atomic_fetch_add((v71 + 16), 0xFFFFFFFF) == 1)
                  {
                    CA::Render::LayerNode::delete_node(v71, v74);
                  }

LABEL_126:
                  v122 = v152;
                  v23 = v154;
                  goto LABEL_127;
                }
              }

              v75 = *(v72 + 88);
              if (v75)
              {
                break;
              }

              v75 = CA::Render::compute_occlusion_data(&v159, v72);
              *(v72 + 88) = v75;
              if (v75)
              {
                break;
              }

              v102 = *v72;
              v103 = *(v72 + 8);
              *(v102 + 1) = v103;
              *v103 = v102;
              *v72 = v72;
              *(v72 + 8) = v72;
              if (atomic_fetch_add((v72 + 16), 0xFFFFFFFF) == 1)
              {
                CA::Render::LayerNode::delete_node(v72, v76);
              }

              v72 = v103;
              if (v103 == &v157)
              {
                goto LABEL_147;
              }
            }

            if (*v73 >= *v75)
            {
              if (*(v75 + 16) <= *v73)
              {
                goto LABEL_73;
              }
            }

            else if (*(v73 + 16) <= *v75)
            {
              goto LABEL_73;
            }

            v77 = *(v73 + 8);
            v78 = *(v75 + 8);
            if (v77 >= v78)
            {
              if (*(v75 + 24) <= v77)
              {
                goto LABEL_73;
              }
            }

            else if (*(v73 + 24) <= v78)
            {
              goto LABEL_73;
            }

            v79 = *(v75 + 56);
            v80 = *(v73 + 56);
            if (vabdd_f64(v79, v80) > 0.0000999999975)
            {
              break;
            }

            v92 = *(v75 + 32);
            v93 = *(v75 + 40);
            v85 = *(v73 + 32);
            v84 = *(v73 + 40);
            v95 = *(v75 + 48);
            v87 = *(v73 + 48);
            v104 = v85 * v92 + v84 * v93 + v87 * v95;
            if (1.0 - fabsf(v104) >= 0.0000999999975)
            {
              v81 = *(v75 + 72);
              if (v81)
              {
                v105 = *(v75 + 80);
                v106 = *(v75 + 88);
                v107 = *(v75 + 72);
                v108 = *(v75 + 96);
                while (fabs(v80 + *v105 * v85 + *v106 * v84 + *v108 * v87) <= 0.0000999999975)
                {
                  ++v108;
                  ++v106;
                  ++v105;
                  if (!--v107)
                  {
                    goto LABEL_100;
                  }
                }

                goto LABEL_82;
              }
            }

LABEL_100:
            if (*(v71 + 116) >= *(v72 + 116))
            {
              LODWORD(v89) = *(v73 + 72);
LABEL_102:
              if (v89)
              {
                goto LABEL_103;
              }

LABEL_109:
              v111 = *(v75 + 72);
              if (!v111)
              {
                goto LABEL_128;
              }

              v112 = 0;
              do
              {
                if (v112)
                {
                  v113 = v112;
                }

                else
                {
                  v113 = v111;
                }

                v114 = CA::Render::separating_axis(v75, v73, v113 - 1, v112);
                if (v114)
                {
                  break;
                }

                v16 = v111 - 1 == v112++;
              }

              while (!v16);
              if (!v114)
              {
LABEL_128:
                v123 = *(v72 + 24);
                if ((v123 & 2) == 0 && ((CA::Render::in_positive_half_space(v75, v73) & 1) != 0 || CA::Render::in_negative_half_space(v73, v75)))
                {
                  v125 = *v72;
                  v124 = *(v72 + 8);
                  *(v125 + 1) = v124;
                  *v124 = v125;
                  *(v72 + 8) = v72;
                  v126 = v158;
                  v158 = v72;
                  *v72 = &v157;
                  *v126 = v72;
                  *(v72 + 8) = v126;
                  *(v72 + 24) = v123 | 2;
                  goto LABEL_126;
                }

                v127 = *(v71 + 144);
                if (v127)
                {
                  v128 = *(v127 + 8) + 1;
                }

                else
                {
                  v128 = 1;
                }

                v129 = *(v72 + 144);
                if (v129)
                {
                  v130 = *(v129 + 8) + 1;
                }

                else
                {
                  v130 = 1;
                }

                if (CA::Render::in_both_half_spaces(v75, v73, ((v128 * v128) * v149)))
                {
                  v131 = (v75 + 32);
                  if (fabs(v92) >= 0.0000999999975 || fabs(v93) >= 0.0000999999975 || fabs(v95 + -1.0) >= 0.0000999999975)
                  {
                    v72 = v71;
                    v75 = v73;
                    v23 = v154;
                    v132 = v148;
LABEL_155:
                    v122 = v152 + 1;
                    if (v152 > v132 || (v137 = *(v72 + 144)) != 0 && *(v137 + 8) > 0x40u)
                    {
                      ++v152;
                      goto LABEL_148;
                    }

                    v139 = *v72;
                    v138 = *(v72 + 8);
                    *(v139 + 1) = v138;
                    *v138 = v139;
                    *v72 = v72;
                    *(v72 + 8) = v72;
                    *(v75 + 64) = v159;
                    v159 = v75;
                    *(v72 + 88) = 0;
                    *(v72 + 24) &= ~2uLL;
                    v140 = CA::Render::LayerNode::split_node(v72, v131);
                    CA::Render::insert_node_by_minz(&v157, v140);
                    CA::Render::insert_node_by_minz(&v157, v72);
LABEL_127:
                    v71 = v158;
                    v152 = v122;
                    goto LABEL_151;
                  }
                }

                if (!CA::Render::in_both_half_spaces(v73, v75, ((v130 * v130) * v149)))
                {
LABEL_147:
                  v23 = v154;
                  goto LABEL_148;
                }

                v131 = (v73 + 32);
                v132 = v148;
                if (fabs(v85) >= 0.0000999999975 || fabs(v84) >= 0.0000999999975)
                {
                  v23 = v154;
                  goto LABEL_155;
                }

                v23 = v154;
                if (fabs(v87 + -1.0) >= 0.0000999999975)
                {
                  goto LABEL_155;
                }

LABEL_148:
                v133 = *(v71 + 88);
                if (v133)
                {
                  *(v133 + 64) = v159;
                  v159 = v133;
                }

                v135 = *v71;
                v134 = *(v71 + 8);
                *(v135 + 8) = v134;
                *v134 = v135;
                *(v71 + 8) = v71;
                v136 = v23[13];
                v23[13] = v71;
                *v71 = v4;
                *v136 = v71;
                *(v71 + 8) = v136;
                *(v71 + 88) = v23;
                *(v71 + 24) &= ~2uLL;
                v71 = v158;
LABEL_151:
                if (v71 == &v157)
                {
                  v69 = v160;
                  goto LABEL_160;
                }

                goto LABEL_63;
              }
            }

LABEL_73:
            v72 = *(v72 + 8);
            if (v72 == &v157)
            {
              goto LABEL_147;
            }
          }

          v81 = *(v75 + 72);
LABEL_82:
          if (v81)
          {
            v82 = *(v75 + 80);
            v83 = *(v75 + 88);
            v85 = *(v73 + 32);
            v84 = *(v73 + 40);
            v86 = *(v75 + 96);
            v87 = *(v73 + 48);
            v88 = v80 + 0.0000999999975;
            if (v88 + *v82 * v85 + *v83 * v84 + *v86 * v87 >= 0.0)
            {
              v115 = 0;
              v116 = v82 + 1;
              v117 = v83 + 1;
              v118 = v86 + 1;
              while (v81 - 1 != v115)
              {
                v119 = v88 + v116[v115] * v85 + v117[v115] * v84 + v118[v115] * v87;
                ++v115;
                if (v119 < 0.0)
                {
                  if (v115 >= v81)
                  {
                    goto LABEL_73;
                  }

                  goto LABEL_84;
                }
              }

              goto LABEL_73;
            }

LABEL_84:
            v89 = *(v73 + 72);
            if (v89)
            {
              v90 = *(v73 + 80);
              v91 = *(v73 + 88);
              v92 = *(v75 + 32);
              v93 = *(v75 + 40);
              v94 = *(v73 + 96);
              v95 = *(v75 + 48);
              v96 = v79 + v153;
              if (v96 + *v90 * v92 + *v91 * v93 + *v94 * v95 <= 0.0)
              {
                v97 = 0;
                v98 = v90 + 1;
                v99 = v91 + 1;
                v100 = v94 + 1;
                while (v89 - 1 != v97)
                {
                  v101 = v96 + v98[v97] * v92 + v99[v97] * v93 + v100[v97] * v95;
                  ++v97;
                  if (v101 > 0.0)
                  {
                    if (v97 >= v89)
                    {
                      goto LABEL_73;
                    }

                    goto LABEL_102;
                  }
                }

                goto LABEL_73;
              }

LABEL_103:
              v109 = 0;
              while (1)
              {
                v110 = v109 ? v109 : v89;
                if (CA::Render::separating_axis(v73, v75, v110 - 1, v109))
                {
                  goto LABEL_73;
                }

                if (v89 == ++v109)
                {
                  goto LABEL_109;
                }
              }
            }
          }

          goto LABEL_73;
        }

LABEL_164:
        v144 = v156;
        v145 = *v4;
        v145[1] = v156;
        *v144 = v145;
        v146 = v155;
        v155[1] = v4;
        *v4 = v146;
      }
    }
  }
}

unint64_t CA::Render::Context::copy_dirty_shape(CA::Render::Context *this, const CA::Bounds *a2)
{
  v3 = *(this + 76);
  if (v3)
  {
    return CA::Shape::ref(v3, a2);
  }

  else
  {
    return CA::Shape::new_shape((this + 616), a2);
  }
}

void CA::Render::LayerHost::retain_hosted_context(CA::Render::LayerHost *this, CA::Render::Context *a2, uint64_t a3, int a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v39 = 0;
  os_unfair_lock_lock(&CA::Render::LayerHost::_lock);
  if (a4)
  {
    v9 = *(a2 + 11);
    if (v9)
    {
      v10 = (v9 + 8);
      if (!atomic_fetch_add((v9 + 8), 1u))
      {
        v9 = 0;
        atomic_fetch_add(v10, 0xFFFFFFFF);
      }
    }

    goto LABEL_9;
  }

  v11 = *(a2 + 12);
  if (!v11)
  {
    *(a2 + 12) = a3;
    *(a3 + 456) = x_list_prepend(*(a3 + 456), a2);
    v11 = *(a2 + 12);
  }

  if (v11 != a3)
  {
    v9 = 0;
LABEL_9:
    *this = v9;

    os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
    return;
  }

  v12 = *(a2 + 11);
  if (v12)
  {
    v13 = (v12 + 8);
    if (!atomic_fetch_add((v12 + 8), 1u))
    {
      v12 = 0;
      atomic_fetch_add(v13, 0xFFFFFFFF);
    }

    goto LABEL_15;
  }

  v17 = *(a2 + 7);
  if (v17)
  {
    if (a3)
    {
      v18 = a3;
      while (v17 != *(v18 + 16))
      {
        v19 = *(v18 + 448);
        if (v19)
        {
          v18 = *(v19 + 96);
          if (v18)
          {
            continue;
          }
        }

        goto LABEL_38;
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v20 = x_log_get_render(void)::log;
      if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
      {
        v37 = *(a2 + 7);
        *buf = 67109120;
        *&buf[4] = v37;
        _os_log_error_impl(&dword_183AA6000, v20, OS_LOG_TYPE_ERROR, "LayerHost trying to host itself or one of its ancestors (context id %d)\n", buf, 8u);
      }

      *(a2 + 7) = 0;
    }

LABEL_38:
    v21 = CA::Render::Context::context_by_hosting_token((a2 + 16), v8);
    v12 = v21;
    if (!v21)
    {
      goto LABEL_15;
    }

    v22 = *(v21 + 448);
    if (v22)
    {
      v23 = v22[12];
      v24 = *(v23 + 456);
      x_list_remove(v24, *(v12 + 448));
      *(v23 + 456) = v24;
      *(v12 + 448) = 0;
      v22[11] = 0;
      v22[12] = 0;
      *(v23 + 12) |= 0x2000u;
      X::Ref<CA::Render::Texture>::operator=(&v39, v12);
      v25 = v22[6];
      v22[6] = 0;
      *(a2 + 11) = v12;
      *buf = v25;
      if ((*(a2 + 13) & 4) == 0)
      {
        goto LABEL_60;
      }

      if (v25)
      {
        X::Ref<CA::Render::AsynchronousState>::operator=(a2 + 6, buf);
LABEL_59:
        v34 = *(a2 + 6);
        *(v34 + 21) = (*(a2 + 3) & 0x800) != 0;
        *(v34 + 64) = *(a2 + 10);
        std::vector<unsigned long long>::__move_assign(v34 + 40, (a2 + 56));
        *(a2 + 8) = *(a2 + 7);
LABEL_60:
        *(v12 + 448) = a2;
        if (*(*(a2 + 12) + 584))
        {
          v35 = *(a2 + 12);
        }

        else
        {
          v35 = 0;
        }

        CA::Render::Context::update_backdrop_namespaces_locked(v12, v35);
        CA::Render::Context::set_visible_locked(v12, *(a3 + 352) != 0);
        atomic_fetch_add(CA::Render::LayerHost::_seed, 1u);
        v36 = *buf;
        if (*buf && atomic_fetch_add((*buf + 8), 0xFFFFFFFF) == 1)
        {
          (*(*v36 + 16))(v36);
        }

        goto LABEL_15;
      }
    }

    else
    {
      X::Ref<CA::Render::Texture>::operator=(&v39, v21);
      *(a2 + 11) = v12;
      *buf = 0;
      if ((*(a2 + 13) & 4) == 0)
      {
        goto LABEL_60;
      }
    }

    if (x_malloc_get_zone::once != -1)
    {
      dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
    }

    v26 = malloc_type_zone_malloc(malloc_zone, 0x48uLL, 0x165299FDuLL);
    if (v26)
    {
      v28 = *(a2 + 5);
      if (v28)
      {
        v29 = v28 + 2;
        if (!atomic_fetch_add(v28 + 2, 1u))
        {
          v28 = 0;
          atomic_fetch_add(v29, 0xFFFFFFFF);
        }
      }

      v38 = v28;
      v30.n128_f64[0] = CA::Render::AsynchronousState::AsynchronousState(v26, &v38, *(a2 + 7));
      v31 = *(a2 + 6);
      *(a2 + 6) = v32;
      if (v31 && atomic_fetch_add(v31 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v31 + 16))(v31, v30.n128_f64[0]);
      }

      if (v28 && atomic_fetch_add(v28 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v28 + 16))(v28, v30);
      }
    }

    else
    {
      v33 = *(a2 + 6);
      *(a2 + 6) = 0;
      if (v33 && atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v33 + 16))(v33, v27);
      }
    }

    goto LABEL_59;
  }

  v12 = 0;
LABEL_15:
  os_unfair_lock_unlock(&CA::Render::LayerHost::_lock);
  if (v39)
  {
    CA::Render::invalidate_context(v39, v14);
  }

  if (v12)
  {
    CA::Render::Context::set_display_mask(v12, *(a3 + 640));
    CA::Render::Context::set_display_id(v12, *(a3 + 644));
    v15 = *(a3 + 632);
    if (*(v12 + 632) != v15)
    {
      *(v12 + 632) = v15;
      if (*(v12 + 260))
      {
        *(v12 + 12) |= 0x400000u;
      }
    }
  }

  *this = v12;
  v16 = v39;
  if (v39 && atomic_fetch_add(v39 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v16 + 16))(v16);
  }
}

uint64_t CA::Render::LayerHost::update@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if ((*(a2 + 1376) & 1) == 0)
  {
    v6 = *(result + 48);
    result = *(a3 + 264);
    if (result != v6)
    {
      if (result && atomic_fetch_add((result + 8), 0xFFFFFFFF) == 1)
      {
        result = (*(*result + 16))(result);
      }

      if (v6)
      {
        v7 = (v6 + 8);
        if (!atomic_fetch_add((v6 + 8), 1u))
        {
          v6 = 0;
          atomic_fetch_add(v7, 0xFFFFFFFF);
        }
      }

      *(a3 + 264) = v6;
    }
  }

  a4[1] = 0;
  a4[2] = 0;
  *a4 = 0x7FF0000000000000;
  return result;
}

void CA::Render::Updater::union_opaque_rect(uint64_t a1, uint64_t a2, const CA::Bounds *a3, float64x2_t a4, float64x2_t a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = vceqzq_f64(a5);
  if ((vorrq_s8(vdupq_laneq_s64(v7, 1), v7).u64[0] & 0x8000000000000000) != 0 || (v8 = vceqq_f64(a5, a5), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v8), 1), v8).u64[0] & 0x8000000000000000) != 0))
  {
    v15 = 0uLL;
  }

  else
  {
    v9 = vmaxnmq_f64(a4, vdupq_n_s64(0xC1BFFFFFFF000000));
    v10 = vminnmq_f64(vaddq_f64(a4, a5), vdupq_n_s64(0x41C0000000000000uLL));
    v11 = vcvtpq_s64_f64(v9);
    v15 = vuzp1q_s32(v11, vsubq_s64(vcvtmq_s64_f64(v10), v11));
  }

  CA::shape_union((a2 + 56), &v15, a3);
  v14 = *(*a1 + 64);

  CA::shape_subtract((a2 + 56), v14, v12, v13);
}

BOOL CA::Render::Update::allowed_in_update(CA::Render::Update *this, CA::Render::Context *a2, const CA::Render::Layer *a3, int a4)
{
  v5 = (*(a3 + 10) >> 20) & 0x7FF | a4;
  v6 = *(this + 172);
  if ((v6 & 0x40) != 0)
  {
    v5 = (*(a3 + 10) >> 20) & 0x100 | a4 & 0x100;
  }

  if (v5)
  {
    if ((*(this + 172) & 0x28000000) == 0x8000000 && (v5 & 2) != 0)
    {
      return 0;
    }

    v8 = *(this + 73) & 0x10000;
    if ((v5 & 4) != 0)
    {
      if (v8)
      {
        return 0;
      }
    }

    if ((v5 & 8) != 0 && !v8 || (v6 & 0x20000000) != 0 && a2 && (v5 & 0x20) != 0 && (*(a2 + 292) & 8) != 0 || (v6 & 0x20) != 0 && (v5 & 0x40) != 0)
    {
      return 0;
    }

    if ((v6 & 0x100000000) != 0 && ((v5 & 0x100) != 0 || (v5 & 0x10) != 0 && ((v6 >> 7) & ((v5 & 0x400) >> 10)) == 0))
    {
      result = 0;
      *(this + 172) = v6 | 0x200000000;
      return result;
    }

    if ((v6 & 0x10000000) != 0 && (v5 & 0x200) != 0)
    {
      return 0;
    }
  }

  if ((v6 & 1) == 0)
  {
    return 1;
  }

  v9 = *(a3 + 17);
  if (!v9)
  {
    return 1;
  }

  v10 = *(v9 + 144);
  if (!v10)
  {
    return 1;
  }

  if (!*(this + 127))
  {
    return 1;
  }

  v12 = *(v10 + 16);
  if (!v12)
  {
    return 1;
  }

  v13 = (v10 + 24);
  v14 = 8 * v12 - 8;
  do
  {
    v15 = *v13++;
    v16 = *(this + 127);
    v17 = CA::Render::String::unsafe_cf_string(v15);
    v18 = CFSetContainsValue(v16, v17);
    result = v18 == 0;
    if (v18)
    {
      v19 = 1;
    }

    else
    {
      v19 = v14 == 0;
    }

    v14 -= 8;
  }

  while (!v19);
  return result;
}

void CA::Render::LayerNode::delete_node(CA::Render::LayerNode *this, CA::Render::LayerNode *a2)
{
  v2 = this;
  v3 = 0;
  v4 = 0;
  *(this + 11) = 0;
  do
  {
    v5 = v2;
    v6 = *(v2 + 11);
    v7 = *(v2 + 13);
    if (v7 != (v2 + 96))
    {
      do
      {
        v8 = *(v7 + 1);
        if (v8 == v7)
        {
          break;
        }

        *(v7 + 11) = 0;
        v9 = *v7;
        *(v9 + 8) = v8;
        *v8 = v9;
        *v7 = v7;
        *(v7 + 1) = v7;
        if (atomic_fetch_add(v7 + 4, 0xFFFFFFFF) == 1)
        {
          *(v7 + 11) = v6;
          v6 = v7;
        }

        v7 = v8;
      }

      while (v8 != (v2 + 96));
    }

    v10 = *(v2 + 16);
    if (v10 && (*(v10 + 11) = 0, atomic_fetch_add(v10 + 4, 0xFFFFFFFF) == 1))
    {
      *(v10 + 11) = v6;
    }

    else
    {
      v10 = v6;
    }

    v2 = *(v2 + 17);
    if (v2 && (*(v2 + 11) = 0, atomic_fetch_add(v2 + 4, 0xFFFFFFFF) == 1))
    {
      *(v2 + 11) = v10;
    }

    else
    {
      v2 = v10;
    }

    v11 = *(v5 + 6);
    if (v11 && atomic_fetch_add(v11 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v11 + 16))(v11, a2);
    }

    v12 = *(v5 + 26);
    if (v12)
    {
      CA::Shape::unref(v12);
    }

    v13 = *(v5 + 27);
    if (v13)
    {
      CA::Shape::unref(v13);
    }

    v14 = *(v5 + 28);
    if (v14)
    {
      CA::Shape::unref(v14);
    }

    v15 = *(v5 + 29);
    if (v15)
    {
      CA::Shape::unref(v15);
    }

    v16 = *(v5 + 7);
    if (v16)
    {
      *v16 = v3;
      v3 = *(v5 + 7);
    }

    v17 = *(v5 + 4);
    if (v17 && atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v17 + 16))(v17, a2);
    }

    v18 = *(v5 + 15);
    if (v18 && atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v18 + 16))(v18, a2);
    }

    v19 = *(v5 + 5);
    if (v19)
    {
      *(v19 + 40) = 0;
    }

    v20 = *(v5 + 32);
    if (v20 && atomic_fetch_add(v20 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v20 + 16))(v20, a2);
    }

    v21 = *(v5 + 33);
    if (v21 && atomic_fetch_add(v21 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v21 + 16))(v21, a2);
    }

    v22 = *(v5 + 18);
    if (v22)
    {
      do
      {
        v23 = *v22;
        free(v22);
        v22 = v23;
      }

      while (v23);
    }

    *(v5 + 11) = v4;
    v4 = v5;
  }

  while (v2);
  do
  {
    while (1)
    {
      v24 = v5;
      v5 = *(v5 + 11);
      *&v25 = 0x2222222222222222;
      *(&v25 + 1) = 0x2222222222222222;
      *v24 = v25;
      *(v24 + 1) = v25;
      *(v24 + 2) = v25;
      *(v24 + 3) = v25;
      *(v24 + 6) = v25;
      *(v24 + 7) = v25;
      *(v24 + 8) = v25;
      *(v24 + 9) = v25;
      *(v24 + 10) = v25;
      *(v24 + 11) = v25;
      *(v24 + 12) = v25;
      *(v24 + 13) = v25;
      *(v24 + 14) = v25;
      *(v24 + 15) = v25;
      *(v24 + 16) = v25;
      *(v24 + 17) = v25;
      *(v24 + 4) = v25;
      *(v24 + 5) = v25;
      if (CA::Render::LayerNodeAllocator::_data > v24)
      {
        if (x_malloc_get_zone::once == -1)
        {
          goto LABEL_50;
        }

LABEL_54:
        dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
        goto LABEL_50;
      }

      v26 = 0x8E38E38E38E38E39 * ((v24 - CA::Render::LayerNodeAllocator::_data) >> 5);
      if (v26 < 0x1000)
      {
        break;
      }

      if (x_malloc_get_zone::once != -1)
      {
        goto LABEL_54;
      }

LABEL_50:
      malloc_zone_free(malloc_zone, v24);
      if (!v5)
      {
        goto LABEL_55;
      }
    }

    os_unfair_lock_lock(&CA::Render::LayerNodeAllocator::_lock);
    v27 = CA::Render::LayerNodeAllocator::_free_offsets_count++;
    *(CA::Render::LayerNodeAllocator::_free_offsets + 2 * v27) = v26;
    os_unfair_lock_unlock(&CA::Render::LayerNodeAllocator::_lock);
  }

  while (v5);
LABEL_55:
  if (v3)
  {
    do
    {
      v28 = *v3;
      free(v3);
      v3 = v28;
    }

    while (v28);
  }
}

void CA::Render::Update::add_included_context(CA::Render::Update *this, CA::Render::Context *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v19 = 0.0;
  v20 = 0.0;
  CA::Render::Context::get_begin_time(a2, &v20, &v19, *(this + 107), *(this + 16));
  v4 = mach_absolute_time();
  v5 = CATimeWithHostTime(v4);
  if (v5 >= v20)
  {
    v6.f64[0] = v20;
  }

  else
  {
    v6.f64[0] = v5;
  }

  v7 = v19;
  if (v19 < v6.f64[0])
  {
    v7 = v6.f64[0];
  }

  v19 = v7;
  v20 = v6.f64[0];
  v8 = *(this + 107);
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000 && v6.f64[0] != 1.79769313e308 && v8 != 0)
  {
    v18 = v6.f64[0];
    v11 = (*(v8 + 16))(v6.f64[0]);
    v6.f64[0] = v18;
    v7 = v11 + v18;
  }

  v6.f64[1] = v7;
  *(this + 824) = vbslq_s8(vcgtq_f64(v6, *(this + 824)), *(this + 824), v6);
  v12 = *(a2 + 77);
  if (v12 > *(this + 295))
  {
    *(this + 295) = v12;
    if (BYTE14(xmmword_1ED4E980C) == 1)
    {
      if (!atomic_load(a2 + 57))
      {
        if (*(a2 + 64))
        {
          v16 = 0;
        }

        else
        {
          v16 = getpid();
        }

        v17 = 0;
        atomic_compare_exchange_strong(a2 + 57, &v17, v16);
      }

      kdebug_trace();
    }

    v13 = atomic_load(a2 + 57);
    if (!v13)
    {
      v14 = *(a2 + 64) ? 0 : getpid();
      v13 = 0;
      atomic_compare_exchange_strong(a2 + 57, &v13, v14);
      if (!v13)
      {
        v13 = v14;
      }
    }

    if (*(this + 153) - *(this + 152) <= 0xFFuLL)
    {
      v21.n128_u16[0] = 1024;
      *(v21.n128_u64 + 4) = __PAIR64__(LODWORD(v12), v13);
      v21.n128_f32[3] = v12;
      X::small_vector_base<CA::Render::Update::EDRRequest>::push_back(this + 152, &v21);
    }
  }

  CAHostTimeWithTime(v20);
  v21 = 0uLL;
  mach_get_times();
  if (*(a2 + 73))
  {
    *(this + 38) |= 0x1000000uLL;
  }

  operator new();
}

BOOL CA::Render::Update::ContextInfo::operator<(uint64_t *a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 != v3)
  {
    return v2 < v3;
  }

  v6 = *(a1 + 3);
  v7 = *(a2 + 3);
  v8 = v6 >= v7;
  if (v6 != v7)
  {
    return !v8;
  }

  v9 = *a1;
  v10 = atomic_load((*a1 + 228));
  if (!v10)
  {
    if (*(v9 + 256))
    {
      v11 = 0;
    }

    else
    {
      v11 = getpid();
    }

    v13 = 0;
    atomic_compare_exchange_strong((v9 + 228), &v13, v11);
    if (v13)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  v14 = *a2;
  v15 = atomic_load((*a2 + 228));
  if (!v15)
  {
    v16 = *(v14 + 256) ? 0 : getpid();
    v15 = 0;
    atomic_compare_exchange_strong((v14 + 228), &v15, v16);
    if (!v15)
    {
      v15 = v16;
    }
  }

  v17 = *a1;
  if (v10 == v15)
  {
    v18 = v17[4];
    v19 = *(*a2 + 16);
    v8 = v18 >= v19;
    if (v18 == v19)
    {
      v8 = a1[2] >= a2[2];
    }

    return !v8;
  }

  v20 = atomic_load(v17 + 57);
  if (!v20)
  {
    if (v17[64])
    {
      v21 = 0;
    }

    else
    {
      v21 = getpid();
    }

    v22 = 0;
    atomic_compare_exchange_strong(v17 + 57, &v22, v21);
    if (v22)
    {
      v20 = v22;
    }

    else
    {
      v20 = v21;
    }
  }

  v23 = *a2;
  v24 = atomic_load((v23 + 228));
  if (!v24)
  {
    v25 = *(v23 + 256) ? 0 : getpid();
    v24 = 0;
    atomic_compare_exchange_strong((v23 + 228), &v24, v25);
    if (!v24)
    {
      v24 = v25;
    }
  }

  return v20 < v24;
}

uint64_t CA::Render::Update::allowed_to_include_context(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = *(a1 + 376);
  if (!v4 || (result = (*(*v4 + 40))(v4, a2), result))
  {
    v6 = *(a1 + 348);
    if (v6)
    {
      v7 = atomic_load((a2 + 228));
      if (!v7)
      {
        if (*(a2 + 256))
        {
          v8 = 0;
        }

        else
        {
          v8 = getpid();
        }

        v7 = 0;
        atomic_compare_exchange_strong((a2 + 228), &v7, v8);
        if (!v7)
        {
          v7 = v8;
        }
      }

      return v6 == v7;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void CA::Render::Context::get_begin_time(uint64_t a1, double *a2, double *a3, uint64_t a4, double a5)
{
  os_unfair_lock_lock((a1 + 512));
  v10 = *(a1 + 520);
  v11 = *(a1 + 528);
  if (v10 == v11)
  {
    v12 = INFINITY;
    v13 = 1.79769313e308;
  }

  else
  {
    v12 = INFINITY;
    v13 = 1.79769313e308;
    do
    {
      v14 = v10[1];
      v15 = COERCE_DOUBLE(atomic_load(&CA::Render::Context::_begin_time_threshold));
      if (v14 > v15)
      {
        if (v10[1] > a5)
        {
          break;
        }

        v16 = *v10;
        v17 = v10[2];
        if (a4 && v16 != 1.79769313e308 && (v10[2] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v17 = (*(a4 + 16))(a4, *v10) + v16;
        }

        if (v13 >= v16)
        {
          v13 = v16;
        }

        if (v12 >= v17)
        {
          v12 = v17;
        }
      }

      v10 += 3;
    }

    while (v10 != v11);
  }

  *a2 = v13;
  *a3 = v12;

  os_unfair_lock_unlock((a1 + 512));
}

double ___ZN2CA12WindowServer6Server15render_for_timeEdPK11CVTimeStampyPK17CATimingReferencej_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (*(**(v1 + 96) + 2280))(*(v1 + 96));
  return (*(**(v1 + 96) + 776))() * v2;
}

uint64_t CA::WindowServer::IOMFBDisplay::frame_interval_at_time(os_unfair_lock_s *this, __n128 a2)
{
  if ((this[160]._os_unfair_lock_opaque & 0x100) != 0)
  {
    v3 = a2.n128_f64[0];
    os_unfair_lock_lock(this + 7269);
    v4 = *&this[7270]._os_unfair_lock_opaque;
    v5 = v4 + 3;
    v6 = &this[4 * v4 + 7284];
    v7 = -3;
    while (1)
    {
      v8 = *&v6[-12 * (v5 / 3)]._os_unfair_lock_opaque;
      if (v8 != 0.0 && v8 < v3)
      {
        break;
      }

      --v5;
      v6 -= 4;
      if (__CFADD__(v7++, 1))
      {
        os_unfair_lock_unlock(this + 7269);
        goto LABEL_10;
      }
    }

    os_unfair_lock_opaque = this[4 * (v5 % 3) + 7274]._os_unfair_lock_opaque;
    os_unfair_lock_unlock(this + 7269);
    return os_unfair_lock_opaque;
  }

  else
  {
LABEL_10:
    v11 = *(*&this->_os_unfair_lock_opaque + 784);

    return v11(this, a2);
  }
}

void CA::Render::Context::invalidate(CA::Shape **this, int32x2_t *a2, const CA::Bounds *a3)
{
  v3 = a2[1].i32[0];
  if (v3 >= a2[1].i32[1])
  {
    v3 = a2[1].i32[1];
  }

  if (v3 >= 1)
  {
    if (this[76])
    {
      v5 = (this + 76);
      CA::shape_union(this + 76, a2, a3);
      v6 = *v5;
      if ((*v5 & 1) == 0 && *(v6 + 4) >= 65)
      {
        CA::Shape::get_bounds(v6, (this + 77));
        CA::Shape::unref(this[76]);
        this[76] = 0;
      }
    }

    else
    {
      v7 = *a2;
      v8 = a2[1];
      v9 = (this + 77);

      CA::BoundsImpl::Union(v9, v7, v8);
    }
  }
}

int32x4_t *CA::Bounds::set_interior(int32x4_t *this, const Rect *a2, float64x2_t a3, float64x2_t a4)
{
  v4 = vceqzq_f64(a4);
  if ((vorrq_s8(vdupq_laneq_s64(v4, 1), v4).u64[0] & 0x8000000000000000) != 0 || (v5 = vceqq_f64(a4, a4), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v5), 1), v5).u64[0] & 0x8000000000000000) != 0))
  {
    this->i64[0] = 0;
    this->i64[1] = 0;
  }

  else
  {
    v6 = vmaxnmq_f64(a3, vdupq_n_s64(0xC1BFFFFFFF000000));
    v7 = vminnmq_f64(vaddq_f64(a3, a4), vdupq_n_s64(0x41C0000000000000uLL));
    v8 = vcvtpq_s64_f64(v6);
    *this = vuzp1q_s32(v8, vsubq_s64(vcvtmq_s64_f64(v7), v8));
  }

  return this;
}

void CA::Render::Context::invalidate(CA::Shape **this, CA::Shape **a2, const CA::Shape *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (a2 == 1)
    {
      return;
    }
  }

  else if (*(a2 + 1) == 6)
  {
    return;
  }

  if (this[76])
  {
    v4 = (this + 76);
    CA::shape_union(this + 76, a2, a3);
    v5 = *v4;
    if ((*v4 & 1) == 0 && *(v5 + 4) >= 65)
    {
      CA::Shape::get_bounds(v5, (this + 77));
      CA::Shape::unref(this[76]);
      this[76] = 0;
    }
  }

  else
  {
    v6 = 0;
    v7 = 0;
    CA::Shape::get_bounds(a2, &v6);
    CA::BoundsImpl::Union(this + 77, v6, v7);
  }
}

uint64_t CA::Render::Update::allowed_in_secure_update(CA::Render::Update *this, CA::Render::Context *a2, const CA::Render::LayerHost *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = *(this + 172);
  if ((v3 & 0x20) == 0)
  {
    return 1;
  }

  if ((*(a2 + 292) & 4) != 0)
  {
    return 1;
  }

  if (a3)
  {
    v7 = *(a3 + 12);
    if (v7)
    {
      if ((*(v7 + 584) & 4) != 0 && (*(a3 + 13) & 2) != 0)
      {
        return 1;
      }
    }
  }

  if ((*(a2 + 14) & 4) == 0 && (v3 & 1) == 0)
  {
    memset(v26, 0, sizeof(v26));
    if (a3)
    {
      v8 = *(a3 + 12);
      if (v8)
      {
        v9 = *(a2 + 4);
        v10 = v8[4];
        v11 = atomic_load(v8 + 57);
        if (!v11)
        {
          if (v8[64])
          {
            v12 = 0;
          }

          else
          {
            v12 = getpid();
          }

          v14 = 0;
          atomic_compare_exchange_strong(v8 + 57, &v14, v12);
          if (v14)
          {
            v11 = v14;
          }

          else
          {
            v11 = v12;
          }
        }

        v15 = CA::Render::Context::process_path(*(a3 + 12));
        X::Stream::printf(v26, "Cannot host %x in context %x - pid %u [%s].\n", v9, v10, v11, v15 + 28);
      }
    }

    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v16 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a2 + 4);
      v21 = atomic_load(a2 + 57);
      if (!v21)
      {
        if (*(a2 + 64))
        {
          v22 = 0;
        }

        else
        {
          v22 = getpid();
        }

        v23 = 0;
        atomic_compare_exchange_strong(a2 + 57, &v23, v22);
        if (v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v22;
        }
      }

      v24 = CA::Render::Context::process_path(a2) + 7;
      v25 = x_stream_get(v26);
      *buf = 67109890;
      v28 = v20;
      v29 = 1024;
      v30 = v21;
      v31 = 2080;
      v32 = v24;
      v33 = 2080;
      v34 = v25;
      _os_log_error_impl(&dword_183AA6000, v16, OS_LOG_TYPE_ERROR, "insecure context %x - pid %u [%s].\n%s", buf, 0x22u);
      if (!a3)
      {
        goto LABEL_35;
      }
    }

    else if (!a3)
    {
LABEL_35:
      *(a2 + 3) |= 0x40000u;
      *(this + 38) |= 0x200uLL;
      if (v26[0])
      {
        free(v26[0]);
      }

      return 0;
    }

    v17 = *(a3 + 12);
    if (v17)
    {
      v18 = atomic_load((v17 + 228));
      if (!v18)
      {
        if (*(v17 + 256))
        {
          v19 = 0;
        }

        else
        {
          v19 = getpid();
        }

        v18 = 0;
        atomic_compare_exchange_strong((v17 + 228), &v18, v19);
        if (!v18)
        {
          v18 = v19;
        }
      }

      *(a2 + 75) = v18;
      *(a2 + 76) = *(*(a3 + 12) + 16);
    }

    goto LABEL_35;
  }

  return 0;
}

uint64_t CA::Render::MatchMoveDependence::run(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 104) & 8) != 0)
  {
    *(*(result + 48) + 76) = *(a2 + 272);
  }

  return result;
}

uint64_t CA::Render::MatchPropertyDependence::run(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = 24;
  if (*(result + 360))
  {
    v3 = 8;
  }

  if ((v3 & *(a3 + 104)) != 0)
  {
    *(*(result + 48) + 76) = *(a2 + 272);
  }

  return result;
}

_DWORD *CA::Render::Vector::new_vector(CA::Render::Vector *this, const void *a2, const double *a3)
{
  v4 = this;
  v5 = 8 * this;
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  v6 = malloc_type_zone_malloc(malloc_zone, v5 + 24, 0xF521AEBEuLL);
  v7 = v6;
  if (v6)
  {
    v6[2] = 1;
    v6[3] = 62;
    ++dword_1ED4EAB30;
    *v6 = &unk_1EF202890;
    v6[4] = v4;
    v8 = v6 + 6;
    if (a2)
    {
      memcpy(v8, a2, v5);
    }

    else
    {
      bzero(v8, v5);
    }
  }

  return v7;
}

void CA::Render::InterpolatedFunction::allocate_storage(CA::Render::InterpolatedFunction *this)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(this + 2);
  if (!v1)
  {
    return;
  }

  if (*(this + 4))
  {
    goto LABEL_3;
  }

  if (!is_mul_ok(v1, *(this + 6)))
  {
    return;
  }

  v8 = v1 * *(this + 6);
  v9 = *(this + 3);
  if ((v9 & 0x200) == 0)
  {
    v1 = 0;
  }

  v10 = __CFADD__(v8, v1);
  v11 = v8 + v1;
  if (v10 || v11 >> 62)
  {
    return;
  }

  v12 = 4 * v11;
  if (4 * v11 <= 0x28000)
  {
    v14 = malloc_type_malloc(v12, 0x100004052888210uLL);
    *(this + 4) = v14;
    if ((v9 & 0x200) != 0 && v14)
    {
      *(this + 5) = &v14[4 * v8];
    }

LABEL_3:
    if (!*(this + 6) && (*(this + 13) & 4) != 0)
    {
      v3 = *(this + 2) - 1;
      if (!(v3 >> 59))
      {
        v4 = 32 * v3;
        if (32 * v3 <= 0x14000)
        {
          *(this + 6) = malloc_type_malloc(32 * v3, 0x100004000313F17uLL);
        }

        else
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v5 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
          {
            v6 = *(this + 2);
            v15 = 134218240;
            v16 = v4;
            v17 = 2048;
            v18 = v6;
            v7 = "suspiciously large interpolations: %zu count: %zu";
LABEL_21:
            _os_log_error_impl(&dword_183AA6000, v5, OS_LOG_TYPE_ERROR, v7, &v15, 0x16u);
            return;
          }
        }
      }
    }

    return;
  }

  if (x_log_get_render(void)::once[0] != -1)
  {
    dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
  }

  v5 = x_log_get_render(void)::log;
  if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
  {
    v13 = *(this + 2);
    v15 = 134218240;
    v16 = v12;
    v17 = 2048;
    v18 = v13;
    v7 = "suspiciously large function size: %zu count: %zu";
    goto LABEL_21;
  }
}

void CA::Render::PropertyAnimation::set(void *const *this, CA::Render::Layer *a2, CA::Render::VelocityState *a3, CA::Render::Vector *a4, unint64_t a5, const double *a6, const double *a7, unint64_t a8, const double *a9, const double *a10, float64x2_t *a11, double *a12)
{
  v211 = *MEMORY[0x1E69E9840];
  if (!(a4 >> 61))
  {
    v15 = a4;
    v18 = this;
    v163 = a7;
    v164 = 8 * a4;
    if ((8 * a4) > 0x1000)
    {
      v33 = malloc_type_malloc(v164, 0x3850EDF1uLL);
      v34 = v163;
      if (!v33)
      {
        return;
      }

      v21 = v33;
      __asm { FMOV            V0.2D, #1.0 }

      v187 = _Q0;
      if (!a3)
      {
        v160 = a2;
        v31 = 0;
        v162 = 0;
        v32 = 0;
        goto LABEL_12;
      }

      v162 = malloc_type_malloc(v164, 0x6660C058uLL);
      if (!v162)
      {
LABEL_109:
        free(v21);
        return;
      }

      v160 = a2;
      v31 = 1;
      v32 = v21;
    }

    else
    {
      v158 = a4;
      v159 = this;
      v19 = v164;
      MEMORY[0x1EEE9AC00](this);
      v20 = (v164 + 15) & 0xFFFFFFFFFFFFFFF0;
      v21 = (&v149 - v20);
      bzero(&v149 - v20, v164);
      __asm { FMOV            V0.2D, #1.0 }

      v187 = _Q0;
      v160 = a2;
      if (a3)
      {
        MEMORY[0x1EEE9AC00](v22);
        v162 = (&v149 - v20);
        bzero(&v149 - v20, v19);
        v31 = 1;
        v32 = (&v149 - v20);
      }

      else
      {
        v31 = 0;
        v162 = 0;
        v32 = 0;
      }

      v15 = v158;
      v18 = v159;
    }

    v34 = v163;
LABEL_12:
    v36 = *(v18 + 13);
    v161 = a3;
    if ((v36 & 4) != 0 && (v37 = *(v18 + 5)) != 0)
    {
      if (*(v37 + 13))
      {
        a10 = a9;
      }
    }

    else
    {
      a10 = 0;
    }

    v39 = *(v18 + 12);
    v159 = v18 + 12;
    if (v39)
    {
      if (v39)
      {
        v40 = v39 >> 1;
      }

      else
      {
        if (!*v39)
        {
          goto LABEL_33;
        }

        v40 = v39[1];
      }

      if (v40 == 154 || v40 == 716 || v40 == 693)
      {
        if (v15 == 6)
        {
          v202 = 0u;
          v203 = 0u;
          v201 = 0u;
          if (v34)
          {
            v92 = *(a6 + 1);
            v198 = *a6;
            v199 = v92;
            v200 = *(a6 + 2);
            v93 = *(v34 + 2);
            v179 = *v34;
            v180 = v93;
            v181 = *(v34 + 4);
            v94 = v31;
            if (v31)
            {
              v192.f64[0] = 0.0;
              v190 = 0u;
              v191 = 0u;
              v188 = 0u;
              v189 = 0u;
              CA::Mat2Impl::mat2_mix_with_deriv(&v201, &v198, &v179, &v188, &v187, a11->f64[0], a11->f64[1]);
              v32 = &v187;
              v95 = v162;
              *v162 = v188;
              v95[1] = v189;
              v95[2].f64[0] = v190.f64[0];
            }

            else
            {
              v102 = v32;
              CA::Mat2Impl::mat2_mix(&v201, v198.f64, v179.f64, v25, a11->f64[0]);
              v32 = v102;
            }

            v90 = v94;
            LOBYTE(v31) = v94;
          }

          else
          {
            v90 = 0;
            v100 = *(a6 + 2);
            v201 = *a6;
            v202 = v100;
            v203 = *(a6 + 4);
          }

          v56 = v160;
          if (a10)
          {
            v103 = *(a10 + 2);
            v188 = *a10;
            v189 = v103;
            v190 = *(a10 + 4);
            v104 = v31;
            v105 = v32;
            CA::Mat2Impl::mat2_pow(&v188, a12);
            v32 = v105;
            LOBYTE(v31) = v104;
            v106 = vmlaq_n_f64(vmulq_n_f64(v201, v188.f64[0]), v202, v188.f64[1]);
            v107 = vmlaq_n_f64(vmulq_n_f64(v201, v189.f64[0]), v202, v189.f64[1]);
            v108 = vmlaq_n_f64(vmlaq_n_f64(v203, v201, v190.f64[0]), v202, v190.f64[1]);
          }

          else
          {
            v106 = v201;
            v107 = v202;
            v108 = v203;
          }

          v91 = v161;
          v34 = v163;
          *v21 = v106;
          v21[1] = v107;
          v21[2] = v108;
LABEL_93:
          v143 = v31 ^ 1;
          if (!v34)
          {
            v143 = 1;
          }

          if ((v143 & 1) == 0)
          {
            CA::Render::VelocityState::set_keypath_velocity(v91, *(v18 + 12), *(v18 + 13), (*(v18 + 3) >> 9) & 1, v15, v162, v32->f64, v90);
          }

          v144 = *(v18 + 13);
          if (v144)
          {
            if ((*(*v144 + 104))(v144) <= v15)
            {
              v145 = (*(**(v18 + 13) + 112))(*(v18 + 13));
              v146 = v145;
              if (v145 <= 0x200)
              {
                MEMORY[0x1EEE9AC00](v145);
                v148 = &v149 - ((v147 + 15) & 0xFFFFFFFF0);
                bzero(v148, v147);
LABEL_103:
                *&v188.f64[0] = v18;
                *&v188.f64[1] = v56;
                if ((*(**(v18 + 13) + 128))(*(v18 + 13), 1, v21, 0, v148, 0, CA::Render::animation_get_function_param, &v188))
                {
                  CA::Render::Layer::set_keypath_value(v56, v159, ((*(v18 + 3) >> 9) & 1), v146, v148);
                }

                if (v146 >= 0x201)
                {
                  free(v148);
                }

                goto LABEL_107;
              }

              v148 = malloc_type_malloc(8 * v145, 0x2D98A9AAuLL);
              if (v148)
              {
                goto LABEL_103;
              }
            }
          }

          else
          {
            CA::Render::Layer::set_keypath_value(v56, v159, ((*(v18 + 3) >> 9) & 1), v15, v21->f64);
          }

LABEL_107:
          if (v164 <= 0x1000)
          {
            return;
          }

          free(v162);
          goto LABEL_109;
        }

        if (v15 == 16)
        {
          v185 = 0u;
          v186 = 0u;
          v183 = 0u;
          v184 = 0u;
          v181 = 0u;
          v182 = 0u;
          v179 = 0u;
          v180 = 0u;
          if (v34)
          {
            v41 = *(a6 + 5);
            v175 = *(a6 + 4);
            v176 = v41;
            v42 = *(a6 + 7);
            v177 = *(a6 + 12);
            v178 = v42;
            v43 = *(a6 + 1);
            v172[0] = *a6;
            v172[1] = v43;
            v44 = *(a6 + 3);
            v173 = *(a6 + 4);
            v174 = v44;
            v45 = *v34;
            v46 = *(v34 + 1);
            v47 = *(v34 + 3);
            v166 = *(v34 + 2);
            v167 = v47;
            v165[0] = v45;
            v165[1] = v46;
            v48 = *(v34 + 4);
            v49 = *(v34 + 5);
            v50 = *(v34 + 7);
            v170 = *(v34 + 6);
            v171 = v50;
            v168 = v48;
            v169 = v49;
            v51 = v31;
            if (v31)
            {
              v52 = a11->f64[0];
              *&v48 = a11->f64[1];
              v157 = v48;
              if (CA::Mat4Impl::mat4_is_affine(v172, v23) && CA::Mat4Impl::mat4_is_affine(v165, v53))
              {
                v201 = v172[0];
                v202 = v173;
                v203 = v177;
                v198 = v165[0];
                v199 = v166;
                v200 = v170;
                CA::Mat2Impl::mat2_mix_with_deriv(v210, &v201, &v198, &v188, &v187, v52, *&v157);
                v54 = 0uLL;
                v55 = 0.0;
                v56 = v160;
                v34 = v163;
                v31 = v51;
                v57 = v188;
                v58 = v189;
                memset(v197, 0, 40);
                v183 = 0uLL;
                v184 = xmmword_183E20E00;
                v179 = v210[0];
                v180 = 0uLL;
                v181 = v210[1];
                v182 = 0uLL;
                v59 = 1;
                v60 = 0.0;
                v185 = v210[2];
                v186 = xmmword_183E20E60;
                v61 = 0.0;
                v62 = 0uLL;
                v63 = v190.f64[0];
              }

              else
              {
                CA::Mat4Impl::mat4_get_unmatrix(v172, &v188, 1);
                CA::Mat4Impl::mat4_get_unmatrix(v165, &v201, 1);
                CA::mix(&v198, &v188, &v201, v52);
                v109 = *(&v194 + 1);
                v156 = vmulq_n_f64(vsubq_f64(v205, v192), *&v157);
                v197[0] = v156;
                v197[1] = vmulq_n_f64(vsubq_f64(v206, v193), *&v157);
                *&v197[2] = (v207 - *&v194) * *&v157;
                v110 = v196;
                v111 = v195;
                v112 = vmuld_lane_f64(v196, v209, 1);
                v113 = vaddvq_f64(vmulq_f64(vextq_s8(v208, v209, 8uLL), v195));
                v114 = v113 + *v208.i64 * *(&v194 + 1) + v112;
                v56 = v160;
                if (v114 < 0.0)
                {
                  v114 = -(v113 + v112 + *v208.i64 * *(&v194 + 1));
                  v109 = -*(&v194 + 1);
                  v111 = vnegq_f64(v195);
                  v110 = -v196;
                }

                v154 = vsubq_f64(v201, v188);
                v152 = vsubq_f64(v203, v190);
                v153 = vsubq_f64(v202, v189);
                v115 = vmlaq_f64(vmulq_n_f64(v209, v109), vzip2q_s64(v209, v208), v111);
                v116 = vsubq_f64(vmlaq_n_f64(vmulq_f64(v111, vzip1q_s64(v209, v208)), v208, v110), vextq_s8(v115, v115, 8uLL));
                v117.f64[0] = v111.f64[0];
                v117.f64[1] = v109;
                v118 = vmulq_f64(v117, v208);
                v111.f64[0] = v110;
                v119 = vmlaq_f64(vextq_s8(v118, v118, 8uLL), v209, v111);
                v120 = vsubq_f64(v119, vdupq_laneq_s64(v119, 1));
                v150 = v116;
                v151 = vsubq_f64(v204, v191);
                v121 = vmulq_f64(v116, v116);
                v149 = v120;
                v122 = vmlaq_f64(vaddq_f64(vdupq_laneq_s64(v121, 1), v121), v120, v120);
                v122.f64[0] = sqrt(v122.f64[0]);
                v155 = v122;
                v125 = atan2(v122.f64[0], v114);
                v126 = v125 + v125;
                if (v155.f64[0] == 0.0)
                {
                  v155 = 0u;
                  v128 = 1.0;
                }

                else
                {
                  v127 = vdivq_f64(v150, vdupq_lane_s64(*&v155.f64[0], 0));
                  v128 = v149.f64[0] / v155.f64[0];
                  if (v149.f64[0] / v155.f64[0] >= 0.0)
                  {
                    v155 = v127;
                  }

                  else
                  {
                    v155 = vnegq_f64(v127);
                    v128 = -v128;
                    v126 = -v126;
                  }
                }

                v153 = vmulq_n_f64(v153, *&v157);
                v154 = vmulq_n_f64(v154, *&v157);
                v151 = vmulq_n_f64(v151, *&v157);
                v152 = vmulq_n_f64(v152, *&v157);
                v63 = -(*&v157 * v126);
                v187 = v198;
                CA::Mat4Impl::mat4_set_unmatrix(&v179, &v198, v123, v124);
                v58 = v151;
                v62 = v152;
                v55 = v153.f64[0];
                v57 = v154;
                v59 = vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*(v197 + 8)), vceqzq_f64(*(&v197[1] + 8)))))) ^ 1;
                v61 = v128 + -1.0;
                v34 = v163;
                v31 = v51;
                v54 = v155;
                v60 = v156.f64[0];
              }

              if ((v59 & 1) == 0 || fabs(v54.f64[0]) >= 0.000001 || (v54.f64[0] = v61, v129 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL), vabsq_f64(v54))), (v129.i8[4] & 1) == 0) || (v129.i8[0] & 1) == 0 || v62.f64[0] != 0.0 || v62.f64[1] != 0.0)
              {
                v130 = v161;
                if ((*(v161 + 153) & 0x10) == 0)
                {
                  *(v161 + 156) = 3;
                }

                *(v130 + 38) = 4096;
              }

              if (fabs(v55 + -1.0) >= 0.000001 || fabs(v60) >= 0.000001)
              {
                *(v161 + 38) |= 0x400u;
              }

              v131 = v162;
              *v162 = v57;
              *(v131 + 1) = v58;
              v32 = &v187;
              v90 = v31;
              *(v131 + 4) = v63;
            }

            else
            {
              v101 = v32;
              CA::Mat4Impl::mat4_mix(&v179, v172, v165, v25, a11->f64[0]);
              v32 = v101;
              v90 = 0;
              v56 = v160;
              v34 = v163;
              LOBYTE(v31) = 0;
            }
          }

          else
          {
            v90 = 0;
            v96 = *(a6 + 5);
            v183 = *(a6 + 8);
            v184 = v96;
            v97 = *(a6 + 7);
            v185 = *(a6 + 12);
            v186 = v97;
            v98 = *(a6 + 2);
            v179 = *a6;
            v180 = v98;
            v99 = *(a6 + 6);
            v181 = *(a6 + 4);
            v182 = v99;
            v56 = v160;
          }

          if (a10)
          {
            v132 = *(a10 + 10);
            v192 = *(a10 + 8);
            v193 = v132;
            v133 = *(a10 + 14);
            v194 = *(a10 + 6);
            v195 = v133;
            v134 = *(a10 + 2);
            v188 = *a10;
            v189 = v134;
            v135 = *(a10 + 6);
            v190 = *(a10 + 4);
            v191 = v135;
            v136 = v31;
            v137 = v32;
            CA::Mat4Impl::mat4_pow(&v188, a12, v24, v25);
            CA::Mat4Impl::mat4_concat(&v179, v188.f64, v179.f64, v138);
            v32 = v137;
            LOBYTE(v31) = v136;
            v34 = v163;
          }

          v139 = v184;
          v21[4] = v183;
          v21[5] = v139;
          v140 = v186;
          v21[6] = v185;
          v21[7] = v140;
          v141 = v180;
          *v21 = v179;
          v21[1] = v141;
          v142 = v182;
          v21[2] = v181;
          v21[3] = v142;
LABEL_92:
          v91 = v161;
          goto LABEL_93;
        }
      }
    }

LABEL_33:
    LODWORD(v157) = a12;
    v158 = v21;
    if (v34)
    {
      v64 = v21;
      v65 = v32;
      v66 = v31;
      (*(*v18 + 20))(v18, v15, v64, a5, a6, v34, a8, a11);
      v32 = v65;
      LOBYTE(v31) = v66;
      v34 = v163;
      if (v66)
      {
        if (LOBYTE(a11[7].f64[0]) == 1 && a5 | a8)
        {
          v67 = v15;
          v68 = v162;
          v69 = v163;
          while (1)
          {
            v70 = *a6++;
            v71.f64[0] = v70;
            v72 = *v69++;
            v73.f64[0] = v72;
            if (a5)
            {
              v74 = *a5;
              a5 += 8;
              v75 = v74;
              if (!a8)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v75 = -(v73.f64[0] + v71.f64[0] * -2.0);
              if (!a8)
              {
LABEL_42:
                v77 = -(v71.f64[0] + v73.f64[0] * -2.0);
                goto LABEL_43;
              }
            }

            v76 = *a8;
            a8 += 8;
            v77 = v76;
LABEL_43:
            v71.f64[1] = a11[5].f64[0] * (v71.f64[0] - v75) + a11[5].f64[1] * (v73.f64[0] - v71.f64[0]);
            v73.f64[1] = a11[6].f64[0] * (v73.f64[0] - v71.f64[0]) + a11[6].f64[1] * (v77 - v73.f64[0]);
            *v68++ = vaddvq_f64(vmlaq_f64(vmulq_f64(a11[4], v73), v71, a11[3])) * a11->f64[1];
            v67 = (v67 - 1);
            if (!v67)
            {
              goto LABEL_50;
            }
          }
        }

        v80 = v15;
        v81 = v163;
        v82 = v162;
        do
        {
          v83 = *a6++;
          v84 = v83;
          v85 = *v81++;
          *v82++ = a11->f64[1] * (v85 - v84);
          v80 = (v80 - 1);
        }

        while (v80);
      }
    }

    else
    {
      v78 = v15;
      do
      {
        v79 = *a6++;
        v21->f64[0] = v79;
        v21 = (v21 + 8);
        v78 = (v78 - 1);
      }

      while (v78);
    }

LABEL_50:
    if (!a10)
    {
      v90 = 0;
      v56 = v160;
      v91 = v161;
      v21 = v158;
      goto LABEL_93;
    }

    v86 = v157;
    v21 = v158;
    v87 = v158;
    v88 = v15;
    v56 = v160;
    do
    {
      v89 = *a10++;
      *v87 = *v87 + v89 * v86;
      ++v87;
      v88 = (v88 - 1);
    }

    while (v88);
    v90 = 0;
    goto LABEL_92;
  }
}

double CA::Render::Animation::time_derivative(CA::Render::Animation *this, double a2, const double *a3)
{
  v4 = *(this + 5);
  v5 = 1.0;
  if (v4)
  {
    v6 = *(v4 + 32);
    v7 = *(v4 + 16);
  }

  else
  {
    v6 = INFINITY;
    v7 = 1.0;
  }

  v8 = *(this + 6);
  if (v8 && *(v8 + 16) == 4)
  {
    v5 = CA::Render::TimingFunction::evaluate_derivative_inverse(this, a3, *(v8 + 24), *(v8 + 40), a2, 0.001 / v6);
  }

  return v5 * v7 / v6;
}

double CA::Render::PropertyAnimation::interpolate_vector(CA::Render::PropertyAnimation *this, uint64_t a2, double *a3, double *a4, double *a5, double *a6, double *a7, float64x2_t *a8)
{
  if (LOBYTE(a8[7].f64[0]) == 1 && (a4 | a7) != 0)
  {
    return CA::Render::ValueInterpolator::mix_n<double>(a8, a2, a3, a4, a5, a6, a7);
  }

  for (; a2; --a2)
  {
    v9 = *a5++;
    v10 = v9;
    v11 = *a6++;
    result = v10 + a8->f64[0] * (v11 - v10);
    *a3++ = result;
  }

  return result;
}

void CA::Render::BasicAnimation0::apply(CA::Render::BasicAnimation0 *this, CA::Render::Layer **a2, double a3, int a4, char a5)
{
  v130 = *MEMORY[0x1E69E9840];
  keypath_object = *(this + 14);
  v11 = *(this + 15);
  v12 = *(this + 16);
  v13 = CA::Render::PropertyAnimation::apply_velocity_state(this, a2);
  v14 = v13;
  if ((a5 & 1) != 0 || !v13)
  {
    v15 = 0.0;
  }

  else
  {
    v15 = (*(*this + 128))(this, a3) * *(a2 + 2);
  }

  v16 = (this + 96);
  v17 = COERCE_VOID_((*(*this + 168))(this, a3));
  if (CA::Render::Layer::keypath_is_object(a2[5], this + 12, v18))
  {
    if (keypath_object)
    {
      if (v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      keypath_object = CA::Render::Layer::get_keypath_object(a2[5], this + 12, v19);
      if (v11)
      {
        goto LABEL_8;
      }
    }

    v11 = CA::Render::Layer::get_keypath_object(a2[2], this + 12, v19);
LABEL_8:
    *&v125 = 0;
    v123 = 0u;
    v124 = 0u;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v118.var0 = v17;
    *&v118.var1.var0.var0 = v15;
    v106.var0 = 0;
    CA::Render::mix_objects(&v106, keypath_object, v11, &v118);
    CA::Render::Layer::set_keypath_object(a2[5], this + 12, v106.var0);
    var0 = v106.var0;
    if (v106.var0)
    {
      if (atomic_fetch_add(v106.var0 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*var0 + 2))(var0);
      }
    }

    return;
  }

  if (!v12)
  {
    goto LABEL_22;
  }

  v23 = *v16;
  if (!*v16)
  {
    goto LABEL_22;
  }

  if (v23)
  {
    v24 = v23 >> 1;
  }

  else
  {
    if (!*v23)
    {
LABEL_22:
      v25 = 0;
      goto LABEL_23;
    }

    v24 = v23[1];
  }

  v25 = 1;
  if (v24 != 154 && v24 != 693 && v24 != 716)
  {
    goto LABEL_22;
  }

LABEL_23:
  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v118 = 0;
  v119 = 0u;
  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0;
  v107 = 0u;
  v90 = &v118;
  v89 = &v106;
  if (keypath_object && v11)
  {
    v26 = CA::Render::PropertyAnimation::animation_value(keypath_object, &v118, &v90, v20, v21);
LABEL_26:
    v29 = v26;
    keypath_value = CA::Render::PropertyAnimation::animation_value(v11, &v106, &v89, v27, v28);
LABEL_27:
    v31 = keypath_value;
    goto LABEL_28;
  }

  if (keypath_object && v12)
  {
    v29 = CA::Render::PropertyAnimation::animation_value(keypath_object, &v118, &v90, v20, v21);
    v36 = CA::Render::PropertyAnimation::animation_value(v12, &v106, &v89, v34, v35);
    v31 = v36;
    if (v25)
    {
      v38 = v89;
      if (v29 >= v36)
      {
        v39 = v36;
      }

      else
      {
        v39 = v29;
      }

      if (v39 == 6)
      {
        v63 = *(v90 + 2);
        v64 = vmlaq_laneq_f64(vmulq_n_f64(*v90, v89[2]), v63, *(v89 + 2), 1);
        v65 = vmlaq_laneq_f64(vmlaq_n_f64(*(v90 + 4), *v90, v89[4]), v63, *(v89 + 4), 1);
        *v89 = vmlaq_laneq_f64(vmulq_n_f64(*v90, *v89), v63, *v89, 1);
        *(v38 + 1) = v64;
        *(v38 + 2) = v65;
        goto LABEL_28;
      }

      if (v39 == 16)
      {
        v102 = *(v89 + 4);
        v103 = *(v89 + 5);
        v104 = *(v89 + 6);
        v105 = *(v89 + 7);
        *v99 = *v89;
        *&v99[16] = *(v89 + 1);
        v100 = *(v89 + 2);
        v101 = *(v89 + 3);
        v40 = *v90;
        v41 = *(v90 + 1);
        v42 = *(v90 + 3);
        v93 = *(v90 + 2);
        v94 = v42;
        v91 = v40;
        v92 = v41;
        v43 = *(v90 + 4);
        v44 = *(v90 + 5);
        v45 = *(v90 + 7);
        v97 = *(v90 + 6);
        v98 = v45;
        v95 = v43;
        v96 = v44;
LABEL_56:
        CA::Mat4Impl::mat4_concat(v99, v99, v91.f64, v37);
        *(v38 + 4) = v102;
        *(v38 + 5) = v103;
        *(v38 + 6) = v104;
        *(v38 + 7) = v105;
        *v38 = *v99;
        *(v38 + 1) = *&v99[16];
        *(v38 + 2) = v100;
        *(v38 + 3) = v101;
        goto LABEL_28;
      }
    }

    else if (v29 >= v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = v29;
    }

    if (v39)
    {
      v58 = v89;
      v57 = v90;
      do
      {
        v59 = *v57++;
        *v58 = *v58 + v59;
        ++v58;
        --v39;
      }

      while (v39);
    }

    goto LABEL_28;
  }

  if (v11 && v12)
  {
    v29 = CA::Render::PropertyAnimation::animation_value(v12, &v118, &v90, v20, v21);
    v48 = CA::Render::PropertyAnimation::animation_value(v11, &v106, &v89, v46, v47);
    v31 = v48;
    if (v25)
    {
      v38 = v90;
      if (v29 >= v48)
      {
        v50 = v48;
      }

      else
      {
        v50 = v29;
      }

      if (v50 == 6)
      {
        v67 = *v89;
        v66 = *(v89 + 2);
        v68 = *(v89 + 4);
        v69 = *v90;
        v70 = *(v90 + 2);
        *v99 = v69;
        *&v99[16] = v70;
        v71.f64[0] = v70.f64[1];
        v71.f64[1] = v70.f64[0];
        v72 = vdupq_lane_s64(*&v69.f64[1], 0);
        v72.f64[0] = v69.f64[0];
        v73 = *(v90 + 4);
        v74 = vmulq_f64(v71, v72);
        v75 = vsubq_f64(v74, vdupq_laneq_s64(v74, 1)).f64[0];
        if (v75 != 0.0)
        {
          v76 = 1.0 / v75;
          v77 = vmulq_n_f64(*&v99[8], v76);
          v78 = vmulq_n_f64(vextq_s8(v70, v69, 8uLL), v76);
          *v99 = v78.f64[0];
          *&v99[8] = vnegq_f64(v77);
          *&v99[24] = v78.f64[1];
          v79 = vmulq_f64(v73, v77);
          v80 = vmlsq_f64(vextq_s8(v79, v79, 8uLL), v78, v73);
          v69 = *v99;
          v70 = *&v99[16];
          v73 = v80;
        }

        *v90 = vmlaq_laneq_f64(vmulq_n_f64(v69, v67.f64[0]), v70, v67, 1);
        *(v38 + 1) = vmlaq_laneq_f64(vmulq_n_f64(v69, v66.f64[0]), v70, v66, 1);
        *(v38 + 2) = vmlaq_laneq_f64(vmlaq_n_f64(v73, v69, v68.f64[0]), v70, v68, 1);
        goto LABEL_28;
      }

      if (v50 == 16)
      {
        v102 = *(v89 + 4);
        v103 = *(v89 + 5);
        v104 = *(v89 + 6);
        v105 = *(v89 + 7);
        *v99 = *v89;
        *&v99[16] = *(v89 + 1);
        v100 = *(v89 + 2);
        v101 = *(v89 + 3);
        v51 = *v90;
        v52 = *(v90 + 1);
        v53 = *(v90 + 3);
        v93 = *(v90 + 2);
        v94 = v53;
        v91 = v51;
        v92 = v52;
        v54 = *(v90 + 4);
        v55 = *(v90 + 5);
        v56 = *(v90 + 7);
        v97 = *(v90 + 6);
        v98 = v56;
        v95 = v54;
        v96 = v55;
        CA::Mat4Impl::mat4_invert(&v91, &v91, v49);
        goto LABEL_56;
      }
    }

    else if (v29 >= v48)
    {
      v50 = v48;
    }

    else
    {
      v50 = v29;
    }

    if (v50)
    {
      v60 = v89;
      v61 = v90;
      do
      {
        v62 = *v60++;
        *v61 = v62 - *v61;
        ++v61;
        --v50;
      }

      while (v50);
    }

    goto LABEL_28;
  }

  if (keypath_object)
  {
    v29 = CA::Render::PropertyAnimation::animation_value(keypath_object, &v118, &v90, v20, v21);
    keypath_value = CA::Render::Layer::get_keypath_value(a2[2], this + 12, 0x18uLL, &v106, &v89);
    goto LABEL_27;
  }

  if (v11)
  {
    v26 = CA::Render::Layer::get_keypath_value(a2[5], this + 12, 0x18uLL, &v118, &v90);
    goto LABEL_26;
  }

  if (v12)
  {
    v29 = CA::Render::Layer::get_keypath_value(a2[5], this + 12, 0x18uLL, &v118, &v90);
    v83 = CA::Render::PropertyAnimation::animation_value(v12, &v106, &v89, v81, v82);
    v31 = v83;
    if (v25)
    {
      if (v29 >= v83)
      {
        v84 = v83;
      }

      else
      {
        v84 = v29;
      }

      {
        goto LABEL_28;
      }
    }

    else if (v29 >= v83)
    {
      v84 = v83;
    }

    else
    {
      v84 = v29;
    }

    if (v84)
    {
      v86 = v89;
      v85 = v90;
      do
      {
        v87 = *v85++;
        *v86 = *v86 + v87;
        ++v86;
        v84 = (v84 - 1);
      }

      while (v84);
    }

    goto LABEL_28;
  }

  v29 = 0;
  v31 = 0;
LABEL_28:
  if (v31 >= v29)
  {
    v32 = v29;
  }

  else
  {
    v32 = v31;
  }

  v33 = v90;
  if (v32)
  {
    *&v105 = 0;
    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    *&v99[16] = 0u;
    v100 = 0u;
    *v99 = v17;
    *&v99[8] = v15;
    LODWORD(v88) = a4;
    CA::Render::PropertyAnimation::set(this, a2[5], v14, v32, 0, v90, v89, 0, v90, v89, v99, v88);
    v33 = v90;
  }

  if (v33 != &v118)
  {
    free(v33);
  }

  if (v89 != &v106)
  {
    free(v89);
  }
}

char *CA::Render::PropertyAnimation::apply_velocity_state(CA::Render::PropertyAnimation *this, CA::Render::AnimationEvaluator *a2)
{
  v4 = *(a2 + 224);
  v5 = CA::Render::Animation::affects_velocity(this);
  v8 = v5;
  if (v4)
  {
    v9 = a2 + 48;
    v10 = *(this + 12);
    if (!v10)
    {
      goto LABEL_12;
    }

    if (v10)
    {
      v11 = v10 >> 1;
    }

    else
    {
      if (!*v10)
      {
        goto LABEL_12;
      }

      v11 = v10[1];
    }

    if (v11 == 716)
    {
      if (v5)
      {
        CA::Render::VelocityState::init_scale((a2 + 48), *(a2 + 5), v6, v7);
      }

      else
      {
        *(a2 + 50) |= 0x200u;
      }
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_12:
  if (v8)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

double CA::Render::BasicAnimation0::interpolate_vector(CA::Render::BasicAnimation0 *this, uint64_t a2, float64x2_t *a3, double *a4, double *a5, double *a6, double *a7, float64x2_t *a8)
{
  v8 = a5;
  v9 = a3;
  v10 = a2;
  if (a2 != 2)
  {
LABEL_5:
    result = CA::Render::PropertyAnimation::interpolate_vector(this, a2, a3->f64, a4, a5, a6, a7, a8);
    if ((*(this + 15) & 2) != 0 && v10)
    {
      do
      {
        v15 = *v8++;
        result = round(v9->f64[0] - v15) + v15;
        v9->f64[0] = result;
        v9 = (v9 + 8);
        --v10;
      }

      while (v10);
    }

    return result;
  }

  v12 = *(this + 17);
  v13 = *(this + 18);
  if (v12 == 0.0 && v13 == 0.0)
  {
    a2 = 2;
    goto LABEL_5;
  }

  v16 = a8->f64[0];
  v17 = *a5;
  v18 = *a6;

  *&result = *&CA::Render::point_interpolate(a3, 2, a3->f64, a4, v17, v18, v16, v12, v13);
  return result;
}

uint64_t CA::Render::PropertyAnimation::animation_value(CA::Render::PropertyAnimation *this, const Object *a2, const Object **a3, double *a4, double **a5)
{
  if (*(this + 12) != 62)
  {
    return 0;
  }

  v6 = a2;
  v8 = *(this + 4);
  v9 = a2;
  if (v8 < 0x19)
  {
LABEL_5:
    if (v9)
    {
      v6 = v9;
      result = v8;
    }

    else
    {
      result = 24;
    }

    if (!result)
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  if (a3)
  {
    v9 = malloc_type_malloc(8 * v8, 0x100004000313F17uLL);
    goto LABEL_5;
  }

  result = 24;
LABEL_12:
  for (i = 0; i != result; ++i)
  {
    *(&v6->var0 + i) = *(this + i + 3);
  }

LABEL_14:
  if (a3)
  {
    *a3 = v6;
  }

  return result;
}

void CA::Render::GroupAnimation::apply(CA::Render::GroupAnimation *this, CA::Render::AnimationEvaluator *a2, __n128 a3, int a4, unsigned __int8 a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = a4;
  v5 = *(this + 12);
  if (v5)
  {
    v7 = a3.n128_f64[0];
    v9 = *(this + 5);
    if (v9)
    {
      v10 = *(v9 + 32);
    }

    else
    {
      v10 = INFINITY;
    }

    v11 = *(a2 + 2);
    v12 = v10 * v11 * (*(*this + 128))(this, a3);
    *(a2 + 2) = v12;
    v13 = *(v5 + 16);
    if (v13)
    {
      v14 = 0;
      v15 = v10 * v7;
      do
      {
        v16 = *(v5 + 24 + 8 * v14);
        if (*(v16 + 13))
        {
          v18 = 0;
          v17 = v15;
          if (CA::Render::Animation::map_time(v16, &v17, &v19, 0, &v18))
          {
            (*(*v16 + 120))(v16, a2, v19, (a5 | v18) & 1, v17);
          }

          v13 = *(v5 + 16);
        }

        ++v14;
      }

      while (v14 < v13);
    }

    *(a2 + 2) = v11;
  }
}

void **CA::Render::GradientLayer::copy@<X0>(CA::Render::GradientLayer *this@<X0>, void ***a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x90uLL, 0xDEEC3011uLL);
  v5 = result;
  if (result)
  {
    *(result + 2) = 1;
    *(result + 3) = 20;
    ++dword_1ED4EAA88;
    *result = &unk_1EF204CF8;
    *(result + 6) = 1;
    *(result + 7) = 18;
    ++dword_1ED4EAA80;
    result[2] = &unk_1EF1FBE88;
    result[4] = *(this + 4);
    *(result + 10) = *(this + 10);
    v6 = *(this + 11);
    result[6] = 0;
    v7 = result + 6;
    *(result + 11) = v6;
    result[7] = 0;
    result[8] = 0;
    *(result + 7) = *(this + 7) & 0xFFFFFF00 | 0x12;
    CA::Render::InterpolatedFunction::allocate_storage((result + 2));
    if (*v7)
    {
      memcpy(*v7, *(this + 6), 4 * v5[4] * *(v5 + 10));
      v8 = v5[7];
      if (v8)
      {
        v9 = *(this + 7);
        if (v9)
        {
          memcpy(v8, v9, 4 * v5[4]);
        }
      }
    }

    v10 = v5[8];
    if (v10)
    {
      v11 = *(this + 8);
      if (v11)
      {
        v12 = v5[4];
        if (v12)
        {
          memcpy(v10, v11, 32 * v12 - 32);
        }
      }
    }

    v5[2] = &unk_1EF1FBF20;
    *(v5 + 9) = *(this + 72);
    *(v5 + 11) = *(this + 88);
    *(v5 + 26) = *(this + 26);
    *(v5 + 27) = *(this + 27);
    v13 = *(this + 14);
    if (v13)
    {
      v14 = v13 + 2;
      if (!atomic_fetch_add(v13 + 2, 1u))
      {
        v13 = 0;
        atomic_fetch_add(v14, 0xFFFFFFFF);
      }
    }

    v5[14] = v13;
    v15 = *(this + 15);
    if (v15)
    {
      v16 = v15 + 2;
      if (!atomic_fetch_add(v15 + 2, 1u))
      {
        v15 = 0;
        atomic_fetch_add(v16, 0xFFFFFFFF);
      }
    }

    v17 = *(this + 16);
    v5[15] = v15;
    v5[16] = v17;
    if (v17)
    {
      CFRetain(v17);
    }

    result = *(this + 17);
    v5[17] = result;
    if (result)
    {
      result = CFRetain(result);
    }
  }

  *a2 = v5;
  return result;
}

void sub_183AB96C4(_Unwind_Exception *exception_object, const CA::Render::Object *a2)
{
  --dword_1ED4EAA80;
  *(v2 + 16) = &unk_1EF1F6D08;
  if ((*(v2 + 28) & 0x80000000) != 0)
  {
    CA::Render::Encoder::ObjectCache::invalidate(v3, a2);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *CA::Render::BackdropLayer::copy@<X0>(CA::Render::BackdropLayer *this@<X0>, void *a2@<X8>)
{
  if (x_malloc_get_zone::once != -1)
  {
    dispatch_once_f(&x_malloc_get_zone::once, 0, malloc_zone_init);
  }

  result = malloc_type_zone_calloc(malloc_zone, 1uLL, 0x90uLL, 0xDEEC3011uLL);
  if (result)
  {
    result[2] = 1;
    result[3] = 3;
    ++dword_1ED4EAA44;
    *result = &unk_1EF1FA150;
    v5 = *(this + 3);
    *(result + 2) = *(this + 2);
    if (v5)
    {
      v6 = (v5 + 8);
      if (!atomic_fetch_add((v5 + 8), 1u))
      {
        v5 = 0;
        atomic_fetch_add(v6, 0xFFFFFFFF);
      }
    }

    *(result + 3) = v5;
    *(result + 4) = *(this + 4);
    result[10] = *(this + 10);
    *(result + 3) = *(this + 3);
    *(result + 4) = *(this + 4);
    *(result + 10) = *(this + 10);
    result[22] = *(this + 22);
    *(result + 6) = *(this + 6);
    *(result + 7) = *(this + 7);
    *(result + 128) = *(this + 128);
    v7 = *(this + 17);
    if (v7)
    {
      v8 = (v7 + 8);
      if (!atomic_fetch_add((v7 + 8), 1u))
      {
        v7 = 0;
        atomic_fetch_add(v8, 0xFFFFFFFF);
      }
    }

    *(result + 17) = v7;
    result[3] |= *(this + 3) & 0xFFFFFF00;
  }

  *a2 = result;
  return result;
}

unint64_t CA::Shape::subtract(CA::Shape *this, const CA::Bounds *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (this)
  {
    v3 = this == 1;
  }

  else
  {
    v3 = *(this + 1) == 6;
  }

  v4 = v3;
  if ((v4 & 1) == 0 && *(a2 + 2) && *(a2 + 3))
  {
    memset(v8, 0, sizeof(v8));
    CA::Shape::operator=(v8, a2);
    return CA::Shape::subtract(this, v8, v5, v6);
  }

  else
  {

    return CA::Shape::ref(this, a2);
  }
}

void CA::Render::Updater::add_background_filters_(uint64_t ***a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 136);
  if (!v6)
  {
    return;
  }

  v11 = *(v6 + 88);
  if (!v11 || (*(v11 + 13) & 1) == 0)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v12 = 0;
  v41 = *(v11 + 24);
  if (v41 != 533 && v41 != 669)
  {
    v43 = (a2 + 72);
    *(a2 + 72) |= 0x20C00000uLL;
    v44 = CA::Render::Filter::compositing_dod(v41) - 5;
    v12 = v44 < 0xFFFFFFFE;
    if (v41 > 548)
    {
      if ((v41 - 695) <= 0x3F && ((1 << (v41 + 73)) & 0x8036800000000007) != 0)
      {
        goto LABEL_78;
      }

      if ((v41 - 549) <= 0x11 && ((1 << (v41 - 37)) & 0x3E041) != 0)
      {
        goto LABEL_78;
      }

      if ((v41 - 620) <= 0x30 && ((1 << (v41 - 108)) & 0x1148000000021) != 0)
      {
        goto LABEL_78;
      }
    }

    else
    {
      if (v41 <= 292)
      {
        if ((v41 - 179) > 0x3D || ((1 << (v41 + 77)) & 0x2000000004001EE3) == 0)
        {
          v46 = (v41 - 99) > 0x3B || ((1 << (v41 - 99)) & 0x800000000000151) == 0;
          if (v46 && v41 != 60)
          {
            goto LABEL_106;
          }
        }

LABEL_78:
        if (!*(a4 + 116) && v44 > 0xFFFFFFFD)
        {
          goto LABEL_111;
        }

        v51 = *(a2 + 48);
        if (v51)
        {
          *(v51 + 24) |= 0x4000uLL;
        }

        if (v41 > 523)
        {
          v53 = (v41 - 664) > 0x21 || ((1 << (v41 + 104)) & 0x300000011) == 0;
          if (v53 && v41 != 758 && v41 != 524)
          {
            goto LABEL_111;
          }
        }

        else
        {
          v52 = (v41 - 158) > 0x1F || ((1 << (v41 + 98)) & 0xD8000001) == 0;
          if (v52 && v41 != 99 && v41 != 520)
          {
            goto LABEL_111;
          }
        }

        v54 = *(a3 + 40);
        if ((v54 & 0x800000000000000) == 0 && (*(a2 + 89) & 4) == 0)
        {
          v55 = *(a2 + 56);
          if (v55)
          {
            if ((v54 & 0x40000000000) != 0 || (*(v55 + 48) & 8) != 0)
            {
              goto LABEL_111;
            }
          }

          else if ((v54 & 0x40000000000) != 0)
          {
            goto LABEL_111;
          }

          v57 = 0x200000000;
          goto LABEL_110;
        }

LABEL_111:
        *(a2 + 89) |= 2u;
        if (a6)
        {
          v58 = *(v11 + 24);
          if (v58 != 158 && v58 != 669)
          {
            v59 = *(a6 + 56);
            if (v59)
            {
              CA::Shape::unref(v59);
              *(a6 + 56) = 0;
            }
          }
        }

        goto LABEL_5;
      }

      v50 = (v41 - 475) > 0x32 || ((1 << (v41 + 37)) & 0x6202000801C03) == 0;
      if (!v50 || v41 == 293 || v41 == 307)
      {
        goto LABEL_78;
      }
    }

LABEL_106:
    v56 = *(a2 + 48);
    if (v56)
    {
      v43 = (v56 + 24);
      v57 = 0x8000;
LABEL_110:
      *v43 |= v57;
      goto LABEL_111;
    }

    goto LABEL_111;
  }

LABEL_5:
  v60 = a6;
  v13 = *(a3 + 136);
  if (v13)
  {
    v14 = v13[13];
    if (v14)
    {
      if (!*v13 || ((*(**v13 + 176))(*v13) & 1) == 0)
      {
        v15 = *(v14 + 16);
        if (v15)
        {
          v16 = -v15;
          v17 = v15 - 1;
          do
          {
            v18 = *(v14 + 24 + 8 * v17);
            if ((*(v18 + 12) & 0x40100) == 0x100)
            {
              v19 = x_heap_malloc_small_(**a1, 0x38uLL);
              if (v19)
              {
                v20 = **a1;
                *(v19 + 16) = 1;
                *(v19 + 18) = 0;
                *v19 = &unk_1EF1F8248;
                v21 = *(a2 + 56);
                *(v19 + 24) = a2 + 8;
                *(v19 + 32) = v21;
                *(v19 + 40) = v18;
                *(v19 + 48) = 1;
                v22 = x_heap_malloc_small_(v20, 0x28uLL);
                if (v22)
                {
                  v23 = *(v19 + 24);
                  v24 = *v23;
                  v25 = v23[1];
                  *(v22 + 32) = *(v23 + 4);
                  *v22 = v24;
                  *(v22 + 16) = v25;
                }

                *(v19 + 24) = v22;
                v26 = *(v19 + 32);
                if (v26)
                {
                  v27 = (v26 + 8);
                  if (!atomic_fetch_add(v27, 1u))
                  {
                    atomic_fetch_add(v27, 0xFFFFFFFF);
                  }
                }

                v28 = *(v19 + 40);
                if (v28)
                {
                  v29 = (v28 + 8);
                  if (!atomic_fetch_add(v29, 1u))
                  {
                    atomic_fetch_add(v29, 0xFFFFFFFF);
                  }
                }
              }

              *(v19 + 8) = *a2;
              *a2 = v19;
              if ((*(a2 + 64) & 8) != 0)
              {
                *(v18 + 20) = *(a1 + 2);
              }

              *(a2 + 89) |= 3u;
              *(a2 + 72) |= 0x20C00000uLL;
              v12 = 1;
            }

            --v17;
          }

          while (!__CFADD__(v16++, 1));
        }
      }
    }
  }

  if (v60 && v12)
  {
    CA::Render::Updater::LayerShapes::union_bounds(v60, (v60 + 88), 1);
    v32 = *(v60 + 56);
    if (v32)
    {
      CA::Shape::unref(v32);
      *(v60 + 56) = 1;
    }

    if (a5)
    {
      v33 = *(v60 + 104);
      if (v33 >= *(v60 + 112))
      {
        v33 = *(v60 + 112);
      }

      if (v33 > 0.0)
      {
        v34 = *(a2 + 56);
        if (v34)
        {
          if ((*(v34 + 48) & 8) == 0)
          {
            v35 = *a1;
            v36 = *(v60 + 104);
            v37 = vceqzq_f64(v36);
            if ((vorrq_s8(vdupq_laneq_s64(v37, 1), v37).u64[0] & 0x8000000000000000) != 0 || (v38 = vceqq_f64(v36, v36), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v38), 1), v38).u64[0] & 0x8000000000000000) != 0))
            {
              v62[0] = 0;
              v62[1] = 0;
            }

            else
            {
              v39 = *(v60 + 88);
              v40 = vcvtmq_s64_f64(vmaxnmq_f64(v39, vdupq_n_s64(0xC1BFFFFFFF000000)));
              *v62 = vuzp1q_s32(v40, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v39, v36), vdupq_n_s64(0x41C0000000000000uLL))), v40));
            }

            CA::shape_union(v35 + 8, v62, v31);
            *(a5 + 72) |= 4uLL;
          }
        }
      }
    }
  }
}

uint64_t CA::Render::Updater::prepare_layer(uint64_t a1, uint64_t a2, uint64_t a3, const int *a4, void *a5, double a6, int32x4_t a7)
{
  v1162 = a2;
  v1206 = *MEMORY[0x1E69E9840];
  if (*&a3 == 0.0)
  {
    return 0;
  }

  v7 = a4;
  v8 = *&a3;
  v9 = a1;
  v1156 = a5;
  v10 = *(a3 + 32);
  v11 = *a1;
  v12 = *(*a1 + 1376);
  if (v12)
  {
    v1149 = 0;
    v13 = 0;
LABEL_19:
    v17 = 268435516;
    goto LABEL_20;
  }

  v13 = *(*&v10 + 152);
  if (!v13)
  {
    v1149 = 0;
    goto LABEL_19;
  }

  v14 = 13;
  if (v13[11].i32[0] == *(a1 + 8))
  {
    v14 = 14;
  }

  v15 = v13[v14];
  v1149 = (*&v13[13] >> 53) & 7;
  _ZF = (*&v15 & 0x1800000000) == 0 || (v12 & 0x20000000000) == 0;
  if (_ZF)
  {
    v17 = *(v1162 + 64) & 8 | *&v15 | *(v1162 + 64) & (v15.i32[0] >> 1) & 0x20;
  }

  else
  {
    v17 = *(v1162 + 64) & 8 | *&v15 | *(v1162 + 64) & (v15.i32[0] >> 1) & 0x20 | 4;
  }

  if ((v12 & 0x200000) != 0 && !*(a3 + 224) && (*(a3 + 24) & 0x40) != 0)
  {
    v17 |= 0xCuLL;
  }

LABEL_20:
  v18 = *(a3 + 24);
  v19 = v18 & 0x800000000;
  v1160.f64[0] = v10;
  *&v1159.f64[0] = v18;
  if ((v18 & 0x400000000) != 0)
  {
    os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
    v20 = *(*&v8 + 152);
    if (!v20)
    {
      __assert_rtn("flattened_cache_get_flatten_info", "render-flatten-cache.cpp", 809, "node->flatten_entry != nullptr");
    }

    v21 = *(v20 + 168);
    v1148 = v21;
    v22 = *(v20 + 200);
    if (v22)
    {
      v1155 = [*v22 protectionOptions];
    }

    else
    {
      v1155 = 0;
    }

    v25 = *(v20 + 136);
    v1150.f64[0] = *(v20 + 208);
    v23 = *(v20 + 252);
    LODWORD(v21) = *(v20 + 232);
    v1152 = v21;
    v1153 = v25;
    os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
  }

  else
  {
    v23 = 0.0;
    v1155 = 0;
    v1150.f64[0] = 0.0;
    if (v19)
    {
      *(a1 + 40) = 0;
      *(a1 + 32) = 0;
      *(a1 + 48) = 1;
      v17 |= 0x1000003CuLL;
      *(v11 + 304) |= 0x10000000uLL;
    }

    v24.i32[1] = 0;
    v24.i64[1] = 0;
    v1152 = 0u;
    v1153 = 0u;
    v1148 = 0u;
  }

  *(v1162 + 80) = v17;
  v26 = *(*&v8 + 24);
  if ((v26 & 0x4000000) != 0)
  {
    v27 = v17 | 0x3C;
  }

  else
  {
    v27 = v17;
  }

  if ((v26 & 0x4000000) != 0)
  {
    v28 = 0;
  }

  else
  {
    v28 = v13;
  }

  if (byte_1ED4E9869)
  {
    goto LABEL_1958;
  }

  if (initialized[0] != -1)
  {
    dispatch_once_f(initialized, 0, init_debug);
  }

  if (*&dword_1ED4E9748)
  {
LABEL_1958:
    v27 |= 0x1000003CuLL;
  }

  v29 = *v9;
  if (*(v9 + 56))
  {
    v30 = v29[113];
    if (v30)
    {
      v31 = *(*&v8 + 32);
      v32 = 0x9DDFEA08EB382D69 * ((8 * (v31 & 0x1FFFFFFF) + 8) ^ HIDWORD(v31));
      v33 = 0x9DDFEA08EB382D69 * (HIDWORD(v31) ^ (v32 >> 47) ^ v32);
      v34 = 0x9DDFEA08EB382D69 * (v33 ^ (v33 >> 47));
      *v24.i8 = vcnt_s8(v30);
      v24.i16[0] = vaddlv_u8(*v24.i8);
      if (v24.u32[0] > 1uLL)
      {
        v35 = v34;
        if (v34 >= *&v30)
        {
          v35 = v34 % *&v30;
        }
      }

      else
      {
        v35 = v34 & (*&v30 - 1);
      }

      v36 = v29[112][v35];
      if (v36)
      {
        for (i = *v36; i; i = *i)
        {
          v38 = i[1];
          if (v34 == v38)
          {
            if (i[2] == v31)
            {
              *(*&v8 + 116) = 0;
              break;
            }
          }

          else
          {
            if (v24.u32[0] > 1uLL)
            {
              if (v38 >= *&v30)
              {
                v38 %= *&v30;
              }
            }

            else
            {
              v38 &= *&v30 - 1;
            }

            if (v38 != v35)
            {
              break;
            }
          }
        }
      }
    }
  }

  ++*(v29 + 200);
  v1163 = v9;
  v1157 = v7;
  v1158 = v28;
  v1161.f64[0] = v8;
  if ((v27 & 0x3C) == 0)
  {
    v49 = *&v1160.f64[0];
    if (*(*&v1160.f64[0] + 136))
    {
      CA::Render::Updater::add_background_filters_(v9, v1162, *&v1160.f64[0], *&v8, 0, 0);
    }

    v50 = *(*&v8 + 24);
    if ((v50 & 0x20) != 0)
    {
      CA::Render::LayerNode::depth_sort_sublayers(*&v8);
      v50 = *(*&v8 + 24);
    }

    if ((v50 & 0x10) != 0)
    {
      goto LABEL_344;
    }

    if (v28)
    {
      v51 = v28[16].i32[0];
      v52 = v28[16].i32[1];
      if (v51 <= v52)
      {
        v53 = v28[16].i32[1];
      }

      else
      {
        v53 = v28[16].i32[0];
      }

      v24.i32[0] = 1073741822;
      a7.i32[0] = v53;
      v54 = vdupq_lane_s32(*&vcgtq_s32(a7, v24), 0);
      v55 = v28[15];
      v56.i64[0] = v55.i32[0];
      v56.i64[1] = v55.i32[1];
      v57 = vbslq_s8(v54, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v56));
      v58 = v51;
      if (v53 > 1073741822)
      {
        v58 = 1.79769313e308;
      }

      v1199[0] = v57;
      if (v53 <= 1073741822)
      {
        v59 = v52;
      }

      else
      {
        v59 = 1.79769313e308;
      }

      *v1199[1].i64 = v58;
      *&v1199[1].i64[1] = v59;
      CA::Render::Updater::LayerShapes::union_bounds(v7, v1199, 0);
    }

    v60 = *(*&v8 + 208);
    if (v60)
    {
      if (*(v7 + 56))
      {
        CA::shape_union((v7 + 56), v60, v49);
      }

      if ((*(v1162 + 89) & 0x40) == 0)
      {
        CA::Render::Update::fullfill_backdrops(*v9, *(*&v8 + 208));
        CA::Render::Update::add_opaque_shape(*v9, *(*&v8 + 208), v61);
      }
    }

    v62 = (v7 + 64);
    if (!*(v7 + 64) || (v64 = (*&v1161.f64[0] + 224), (v63 = *(*&v1161.f64[0] + 224)) == 0))
    {
LABEL_328:
      v8 = v1161.f64[0];
      if (*(v7 + 72))
      {
        v195 = *(*&v1161.f64[0] + 232);
        if (v195)
        {
          CA::shape_union((v7 + 72), v195, v49);
        }
      }

      v196 = *(v7 + 80);
      if (v196)
      {
        v197 = *(*&v1161.f64[0] + 168);
        v198 = *(*&v1161.f64[0] + 172);
        if (v197 <= v198)
        {
          v199 = *(*&v1161.f64[0] + 172);
        }

        else
        {
          v199 = *(*&v1161.f64[0] + 168);
        }

        v24.i32[0] = 1073741822;
        a7.i32[0] = v199;
        v200 = vdupq_lane_s32(*&vcgtq_s32(a7, v24), 0);
        v201 = *(*&v1161.f64[0] + 160);
        v202.i64[0] = v201;
        v202.i64[1] = SHIDWORD(v201);
        v203 = vbslq_s8(v200, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v202));
        v204 = v197;
        v205 = v198;
        if (v199 > 1073741822)
        {
          v204 = 1.79769313e308;
          v205 = 1.79769313e308;
        }

        v1199[0] = v203;
        *v1199[1].i64 = v204;
        *&v1199[1].i64[1] = v205;
        v206 = *(*&v1161.f64[0] + 56);
        if (v206)
        {
          CA::Mat4Impl::mat4_apply_to_rect(v206, v1199, v49);
          v207 = v1199[0];
        }

        else
        {
          v207 = vaddq_f64(v203, *(*&v1161.f64[0] + 64));
        }

        v208 = vceqzq_f64(v1199[1]);
        v209 = vorrq_s8(vdupq_laneq_s64(v208, 1), v208).u64[0];
        v210 = 0uLL;
        if ((v209 & 0x8000000000000000) == 0)
        {
          v211 = vceqq_f64(v1199[1], v1199[1]);
          if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v211), 1), v211).u64[0] & 0x8000000000000000) == 0)
          {
            v212 = vcvtmq_s64_f64(vmaxnmq_f64(v207, vdupq_n_s64(0xC1BFFFFFFF000000)));
            v210 = vuzp1q_s32(v212, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v207, v1199[1]), vdupq_n_s64(0x41C0000000000000uLL))), v212));
          }
        }

        CA::BoundsImpl::Union(v196, *v210.i8, *&vextq_s8(v210, v210, 8uLL));
      }

LABEL_344:
      if ((v27 & 2) != 0)
      {
        if (v28)
        {
          if (*&v28[2] == *&v1160.f64[0])
          {
            *&v28[13] &= ~2uLL;
            if ((*(v1162 + 64) & 2) == 0)
            {
              v213 = *v9;
              CA::Render::Context::invalidate(*(v9 + 64), v28 + 15, v49);
              CA::Render::Update::invalidate_backdrops(v213, &v28[15], 0, 0xFFFFFFFF);
            }
          }
        }
      }

      v214 = v27 | 0x20;
      if ((v27 & 3) == 0)
      {
        v214 = v27;
      }

      *v1156 |= (2 * v214) & 0x15480000000 | v214 & 0x407C15583C06020;
      v215 = *(v1162 + 48);
      if (v215)
      {
        *(v215 + 24) |= *(*&v8 + 24) & 0x14010481400;
      }

      if (v28)
      {
        v216 = v28[13];
        if (v216.i16[0] < 0)
        {
          *(*v9 + 344) = (*(*v9 + 212) * *(*v9 + 208));
        }

        if ((*&v216 & 0x100000000) != 0)
        {
          CA::shape_union((*v9 + 48), &v28[15], v49);
        }
      }

      return 0;
    }

    v66 = (v7 + 72);
    v65 = *(v7 + 72);
    if (!v65)
    {
      CA::Render::Updater::LayerShapes::union_visible_shape(v7, *(*&v1161.f64[0] + 224), v49);
      v28 = v1158;
LABEL_327:
      CA::Render::Update::add_visible_shape(*v9, *v64, v177);
      goto LABEL_328;
    }

    if (!v1158 || !*(*&v1161.f64[0] + 232) || (*(v1158[13].i16 + 1) & 0x780) == 0)
    {
LABEL_322:
      v192 = CA::Shape::subtract(v63, v65, v49, a4);
      v28 = v1158;
      if (*v62)
      {
        CA::shape_union(v62, v192, v191);
        v193 = *v62;
        if ((*v62 & 1) == 0 && *(v193 + 1) >= 257)
        {
          v1199[0] = 0uLL;
          CA::Shape::get_bounds(v193, v1199);
          CA::Shape::unref(*v62);
          *v62 = CA::Shape::new_shape(v1199, v194);
        }
      }

      CA::Shape::unref(v192);
      v7 = v1157;
      goto LABEL_327;
    }

    v67 = CA::Shape::intersect(*(v7 + 72), *(*&v1161.f64[0] + 232));
    v68 = v67;
    if (v67)
    {
      if (v67 == 1)
      {
LABEL_321:
        CA::Shape::unref(v68);
        v63 = *v64;
        v65 = *v66;
        v9 = v1163;
        goto LABEL_322;
      }
    }

    else if (*(v67 + 4) == 6)
    {
      goto LABEL_321;
    }

    v186 = CA::Shape::dilate(v67, 1, 1);
    CA::Render::Updater::LayerShapes::union_visible_shape(v1157, v186, v187);
    CA::shape_union(v64, v186, v188);
    CA::shape_subtract(v66, v186, v189, v190);
    CA::Shape::unref(v186);
    *&v1158[13] |= 0x40uLL;
    goto LABEL_321;
  }

  v1186 = v8;
  v1187 = *&v1160.f64[0];
  v1188 = v27;
  v1191 = *(v1162 + 89) & 0x4C;
  v39 = *(*&v8 + 24);
  if ((v39 & 0x40) == 0)
  {
    v27 &= 0xFFFFFFFFFFF87FFFLL;
    v1188.i64[0] = v27;
  }

  *(*&v8 + 24) = v39 & 0xFFFFFEBFEFA20BEFLL;
  v40 = *(v9 + 8);
  v41 = *(v9 + 64);
  *(v41 + 648) = v40;
  v1147.i32[0] = *(*&v8 + 112);
  if (v28)
  {
    if ((v27 & 0x10000000) != 0)
    {
      CA::Render::Update::invalidate_backdrops(v29, &v28[15], *(*&v8 + 256), v1147.u32[0]);
      v29 = *v9;
      v41 = *(v9 + 64);
      v40 = *(v9 + 8);
    }

    CA::Render::Updater::update_handle(v29, v28, v41, v40);
  }

  v42 = *(*&v8 + 216);
  if (v42)
  {
    CA::Shape::unref(v42);
    *(*&v8 + 216) = 0;
  }

  v43 = *(*&v8 + 224);
  v44 = v1160.f64[0];
  if (v43)
  {
    CA::Shape::unref(v43);
    *(*&v8 + 224) = 0;
  }

  v45 = *(*&v8 + 232);
  if (v45)
  {
    CA::Shape::unref(v45);
    *(*&v8 + 232) = 0;
  }

  if ((*(*&v44 + 42) & 0x110) != 0)
  {
    v1188.i64[1] = 0x8000000000;
  }

  is_2d_affine = *(*&v8 + 208);
  if (is_2d_affine)
  {
    CA::Shape::unref(is_2d_affine);
    *(*&v8 + 208) = 0;
  }

  v47 = *v1162;
  v1182 = *v1162;
  v48 = *(*&v8 + 56);
  v1154 = v19;
  if (v48)
  {
    CA::Transform::set(v1199, v48, 1);
    if ((v1201 & 0x10) == 0)
    {
      goto LABEL_111;
    }
  }

  else
  {
    v69 = *(*&v8 + 80);
    if (v69 == 0.0)
    {
      v1185 = *(v1162 + 40);
      v1184 = *(v1162 + 24);
      v1183 = *(v1162 + 8);
      v76 = v1185;
      v80 = vdup_n_s32(v1185);
      v81 = vceqz_s32(vand_s8(v80, 0x800000004));
      v82 = vdup_lane_s32(v81, 1);
      v83.i64[0] = v82.i32[0];
      v83.i64[1] = v82.i32[1];
      v84 = vbslq_s8(v83, *(*&v8 + 64), vmulq_n_f64(*(*&v8 + 64), *&v1184));
      v85 = vdup_lane_s32(v81, 0);
      v86 = vdupq_lane_s64(v84.i64[0], 0);
      *v86.i64 = -*&v84.i64[1];
      v83.i64[0] = v85.i32[0];
      v83.i64[1] = v85.i32[1];
      v87 = vbslq_s8(v83, v84, v86);
      v88 = vceqz_s32(vand_s8(v80, 0x100000002));
      v83.i64[0] = v88.i32[0];
      v83.i64[1] = v88.i32[1];
      v75 = vaddq_f64(vbslq_s8(v83, v87, vnegq_f64(v87)), v1183);
      v1183 = v75;
      if (!v19)
      {
        goto LABEL_124;
      }

      goto LABEL_117;
    }

    v1199[0] = xmmword_183E20E00;
    v1199[1] = 0uLL;
    v1199[2] = xmmword_183E20E60;
    memset(&v1199[3], 0, 32);
    v1199[5] = xmmword_183E20E00;
    v70 = *(*&v8 + 64);
    *(&v1200[1] + 1) = 0x3FF0000000000000;
    v1200[0] = v70;
    *&v1200[1] = v69;
    __asm { FMOV            V0.2D, #1.0 }

    v1200[2] = _Q0;
    LOBYTE(v1201) = 16;
  }

  if (!CA::Mat4Impl::mat4_is_affine(v1199, v48) && (*(*&v44 + 45) & 0x10) == 0 && !CA::Mat4Impl::mat4_is_front_facing(v1199, v74))
  {
    *(*&v8 + 24) |= 0x10uLL;
  }

LABEL_111:
  CA::Transform::concat(v1199, v1162 + 8);
  if ((v1201 & 0x10) != 0)
  {
    MEMORY[0x1EEE9AC00](is_2d_affine);
    v1128 = 0;
    *&v1135[24] = 0u;
    v1126 = &unk_1EF1F82D0;
    v1129 = v1199[0];
    v1130 = v1199[1];
    v1131 = v1199[2];
    v1132 = v1199[3];
    v1133 = v1199[4];
    *v1134 = v1199[5];
    *&v1134[16] = v1200[0];
    *v1135 = v1200[1];
    *&v1135[16] = v1200[2];
    v1135[32] = v77 & 0x1F;
    is_2d_affine = CA::Mat4Impl::mat4_is_2d_affine(v1199, v78);
    v75 = 0uLL;
    v76 = 0;
    *&v1135[40] = is_2d_affine;
    v1127 = v47;
    v9 = v1163;
    v1182 = &v1126;
    v1183 = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    v1184 = _Q0;
    v19 = v1154;
    v47 = &v1126;
    v1185 = 0;
    if (!v1154)
    {
      goto LABEL_124;
    }
  }

  else
  {
    v75 = v1200[0];
    v1183 = v1200[0];
    v1184 = v1200[2];
    v76 = v1201 & 0xF;
    v1185 = v1201 & 0xF;
    if (!v19)
    {
      goto LABEL_124;
    }
  }

LABEL_117:
  if ((v76 & 0xF) != 0 || (v89 = vmovn_s64(vceqzq_f64(v75)), (v89.i8[0] & 1) == 0) || (v89.i8[4] & 1) == 0)
  {
    v1201 = 0;
    memset(v1200, 0, sizeof(v1200));
    memset(v1199, 0, sizeof(v1199));
    CA::Transform::set(v1199, &v1183);
    MEMORY[0x1EEE9AC00](v90);
    v1128 = 0;
    memset(&v1135[24], 0, 24);
    v1126 = &unk_1EF1F82D0;
    v1129 = v1199[0];
    v1130 = v1199[1];
    v1131 = v1199[2];
    v1132 = v1199[3];
    v75 = v1199[5];
    v1133 = v1199[4];
    *v1134 = v1199[5];
    *&v1134[16] = v1200[0];
    *v1135 = v1200[1];
    *&v1135[16] = v1200[2];
    v1135[32] = v1201 & 0x1F;
    is_2d_affine = ((v1201 & 0x10) == 0 || CA::Mat4Impl::mat4_is_2d_affine(v1199, v91));
    v1135[40] = is_2d_affine;
    v1127 = v47;
    v1182 = &v1126;
    v1183 = 0uLL;
    __asm { FMOV            V0.2D, #1.0 }

    v1184 = _Q0;
    v1185 = v76 & 0xF0;
    v9 = v1163;
  }

LABEL_124:
  v93 = *(*&v44 + 136);
  v94 = *&v44;
  if (v93)
  {
    v95 = *(v93 + 112);
    v94 = *&v44;
    if (v95)
    {
      MEMORY[0x1EEE9AC00](is_2d_affine);
      memset(&v1135[8], 0, 40);
      memset(&v1134[8], 0, 24);
      os_unfair_lock_lock(v95 + 4);
      CA::Render::MeshTransform::update_locked(v95, 1);
      os_unfair_lock_unlock(v95 + 4);
      v94 = v1187;
      *&v1134[24] = 0;
      v1134[26] = 0;
      *v1135 = &v1183;
      *&v1135[8] = v95;
      *&v1135[16] = *(v1187 + 72);
      *&v1135[32] = *(v1187 + 88);
      *&v1134[8] = &unk_1EF1F81E0;
      *&v1134[16] = v1182;
      v1182 = &v1134[8];
    }
  }

  v96 = *(v1162 + 88);
  if (v96 >= *(*&v8 + 116))
  {
    LOBYTE(v96) = *(*&v8 + 116);
  }

  v1190 = v96;
  v97.i32[1] = 0;
  v97.i64[1] = 0;
  v1166 = 0u;
  v1167 = 0u;
  v1165 = 0u;
  v1168 = 0;
  v1172 = (*&v8 + 160);
  if ((v96 - 1) <= 0xFDu)
  {
    if ((*(v94 + 48) & 4) == 0)
    {
      goto LABEL_141;
    }

    if ((*(*&v8 + 24) & 0x80) != 0)
    {
      goto LABEL_141;
    }

    v98 = *v9;
    if ((*(*v9 + 292) & 4) != 0)
    {
      goto LABEL_141;
    }

    v99 = v98[45];
    if (!v99)
    {
      v99 = x_heap_malloc_small_(*v98, 0x10uLL);
      v100 = *v9;
      if (v99)
      {
        v101 = *v100;
        *v99 = 0;
        v99[1] = v101;
      }

      v100[45] = v99;
    }

    v102 = (MEMORY[0x1EEE9AC00])(v99);
    *&v1135[32] = 0;
    *&v1135[40] = 0;
    *&v1135[24] = v102;
    v1168 = &v1135[24];
  }

  if ((v1188.i8[2] & 0x10) != 0 || v96 != 0xFF || *(*&v8 + 144))
  {
LABEL_141:
    v103 = 0;
    goto LABEL_142;
  }

  v103 = 1;
LABEL_142:
  v104 = ((*(*v9 + 1376) >> 21) & 1);
  v1169 = v103;
  v1170 = v104;
  v1171 = v104;
  if ((*&v1159.f64[0] & 0x400000000) != 0)
  {
    if (v1153.i32[2] <= v1153.i32[3])
    {
      v105 = v1153.i32[3];
    }

    else
    {
      v105 = v1153.i32[2];
    }

    v97.i32[0] = 1073741822;
    v75.i32[0] = v105;
    v106.i64[0] = v1153.i32[0];
    v106.i64[1] = v1153.i32[1];
    v107 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v75, v97), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v106));
    v108 = v1153.i32[2];
    if (v105 > 1073741822)
    {
      v108 = 1.79769313e308;
    }

    v1199[0] = v107;
    if (v105 <= 1073741822)
    {
      v109 = v1153.i32[3];
    }

    else
    {
      v109 = 1.79769313e308;
    }

    *v1199[1].i64 = v108;
    *&v1199[1].i64[1] = v109;
    CA::Rect::apply_transform(v1199[0].i64, &v1183);
    CA::Render::Updater::LayerShapes::union_bounds(&v1165, v1199, 1);
  }

  if (v28 && (v110 = v28[3]) != 0 && (*(v110 + 292) & 0x10) != 0)
  {
    v134 = CA::Render::Context::root_layer_handle(v110);
    if (v134)
    {
      v135 = *(v134 + 2);
    }

    else
    {
      v135 = 0;
    }

    CA::Render::Updater::prepare_layer_mask(v9, &v1182, v7, &v1165);
    if (v135 == *&v44)
    {
      v1143 = v1174;
      v1144 = v1173;
      v1173 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v1174 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      v1153.i32[0] = 1;
      goto LABEL_157;
    }
  }

  else
  {
    CA::Render::Updater::prepare_layer_mask(v9, &v1182, v7, &v1165);
  }

  v1153.i32[0] = 0;
  v1143 = 0u;
  v1144 = 0u;
LABEL_157:
  v1146 = 0u;
  if ((*(*&v8 + 27) & 2) == 0 && (v111 = *(v1187 + 104)) != 0 && (CA::Render::Updater::prepare_layer_contents(v9, &v1182, *(v1187 + 104), &v1165), *(v111 + 12) == 25))
  {
    v112 = v1182;
    v1199[0] = v1165;
    v1199[1] = v1166;
    v1146 = v1166;
    memset(&v1199[2], 0, 56);
    if (v1182)
    {
      do
      {
        (*(*v112 + 3))(v112, v1199, 0);
        v112 = v112[1];
      }

      while (v112);
      v1146 = v1199[1];
    }

    v1145.i32[0] = 1;
  }

  else
  {
    v1145.i32[0] = 0;
  }

  v113 = v1187;
  v114 = *(v1187 + 24);
  v115 = *(v1187 + 136);
  if (v115)
  {
    v116 = *(v115 + 80);
  }

  else
  {
    v116 = 0;
  }

  v117.n128_u32[0] = *(v1187 + 28);
  v119 = *(v1187 + 20) == 0.0 && *(v1187 + 16) == 0.0;
  v120 = v119 && v114 == 0.0;
  if ((v120 & 1) == 0)
  {
    v121 = v116 == 0;
LABEL_183:
    v114 = 1.0;
    v124 = v117.n128_f32[0] == 1.0;
    if (v117.n128_f32[0] == 1.0 && !v121)
    {
      v126 = *(v116 + 128);
      v124 = v126 && (*(v126 + 13) & 0x10) != 0 && *(v116 + 96) <= *(v116 + 80) && *(v116 + 104) <= *(v116 + 88);
    }

    if (v117.n128_f32[0] == 1.0)
    {
      v125 = v120;
    }

    else
    {
      v125 = 0;
    }

    if (!v115)
    {
      v133 = *(v1187 + 88);
      v1199[0] = *(v1187 + 72);
      v1199[1] = v133;
      v123 = 1;
      goto LABEL_239;
    }

    v123 = 1;
    goto LABEL_195;
  }

  v121 = v116 == 0;
  if (v117.n128_f32[0] != 0.0 || v116 != 0)
  {
    goto LABEL_183;
  }

  if (!v115)
  {
    goto LABEL_284;
  }

  v123 = 0;
  v124 = 0;
  v125 = 1;
LABEL_195:
  v117.n128_u32[0] = *(v115 + 240);
  if (v117.n128_f32[0] > 0.0)
  {
    v127 = 0;
    v117.n128_u32[0] = *(v115 + 244);
    if (v117.n128_f32[0] != 0.0)
    {
      goto LABEL_204;
    }

    v117.n128_u32[0] = *(v115 + 248);
    if (v117.n128_f32[0] != 0.0)
    {
      goto LABEL_204;
    }

    v117.n128_u32[0] = *(v115 + 252);
    if (v117.n128_f32[0] != 0.0)
    {
      goto LABEL_204;
    }

    v117.n128_u32[0] = *(v115 + 256);
    if (v117.n128_f32[0] != 0.0 || *(v115 + 128) != 0)
    {
      v114 = 1.0;
      v127 = v117.n128_f32[0] == 1.0;
LABEL_204:
      ++v123;
      v125 &= v127;
      v129 = 1;
      goto LABEL_206;
    }
  }

  v129 = 0;
LABEL_206:
  v130 = *v115;
  if (!*v115)
  {
    goto LABEL_233;
  }

  v1199[0].i8[0] = 0;
  v131 = (*(*v130 + 160))(v130);
  v125 &= v131 ^ 1;
  v124 |= (v131 & v1199[0].i8[0]);
  v123 += v131;
  v132 = v130[12];
  if (v132 <= 7)
  {
    if (v132 == 3)
    {
      v138 = *(v1187 + 136);
      if (v138)
      {
        v138 = *v138;
        if (v138)
        {
          if (*(v138 + 12) != 3)
          {
            v138 = 0;
          }
        }
      }

      if ((*(v138 + 13) & 5) == 0)
      {
        goto LABEL_232;
      }

      v139 = v1191 | 0x10;
      v1191 |= 0x10u;
      v136 = (*(v138 + 6) >> 7) & 0x20 | v139 & 0xFFFFFFDF;
      goto LABEL_231;
    }

    if (v132 == 6)
    {
      LOWORD(v136) = v1191 | 0x80;
LABEL_231:
      v1191 = v136;
    }
  }

  else if (v132 == 8)
  {
    *(*v9 + 1376) |= 0x10000000000uLL;
    v1191 |= 2u;
    v1188.i64[1] |= 4uLL;
    *(*&v1186 + 24) |= 0x1000uLL;
  }

  else
  {
    if (v132 != 19)
    {
      if (v132 == 50)
      {
        v1191 |= 0x102u;
        *(*&v1186 + 24) |= 0x1000uLL;
      }

      goto LABEL_232;
    }

    v137 = v1191 & 0xFDFF | ((*(**(v1187 + 136) + 16) != 0) << 9);
    v1191 = v137;
    if (*(*v9 + 447) == 1)
    {
      LOWORD(v136) = v137 | 2;
      goto LABEL_231;
    }
  }

LABEL_232:
  v113 = v1187;
LABEL_233:
  if (v123)
  {
    v140 = *(v113 + 88);
    v1199[0] = *(v113 + 72);
    v1199[1] = v140;
    if (v129)
    {
      v141 = *(v113 + 136);
      if (v141)
      {
        v142 = *(v141 + 236);
        if (v142 > 0.0)
        {
          CA::BoundsImpl::inset(v1199, -v142, -v142);
          v124 = 0;
        }
      }

      CA::Rect::apply_transform(v1199[0].i64, &v1183);
      goto LABEL_249;
    }

LABEL_239:
    CA::Rect::apply_transform(v1199[0].i64, &v1183);
    if (v1169)
    {
      if (v1169)
      {
        if (v1169 == 1)
        {
          goto LABEL_249;
        }
      }

      else if (*(v1169 + 4) == 6)
      {
        goto LABEL_249;
      }

      v143 = vceqzq_f64(v1199[1]);
      if ((vorrq_s8(vdupq_laneq_s64(v143, 1), v143).u64[0] & 0x8000000000000000) != 0 || (v144 = vceqq_f64(v1199[1], v1199[1]), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v144), 1), v144).u64[0] & 0x8000000000000000) != 0))
      {
        v1193 = 0uLL;
      }

      else
      {
        v145 = vcvtmq_s64_f64(vmaxnmq_f64(v1199[0], vdupq_n_s64(0xC1BFFFFFFF000000)));
        v1193 = vuzp1q_s32(v145, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1199[0], v1199[1]), vdupq_n_s64(0x41C0000000000000uLL))), v145));
      }

      if (CA::Shape::contains(v1169, &v1193))
      {
LABEL_283:
        v113 = v1187;
        goto LABEL_284;
      }
    }

LABEL_249:
    v146 = 549453824;
    if (v125)
    {
      v146 = 0x800000;
    }

    v1188.i64[1] |= v146;
    if (v123 != 1)
    {
      v147 = v1168;
      if (v1168)
      {
        *(v1168 + 16) = 1;
        v148 = v147[1];
        if (v148)
        {
          CA::GenericRectTree<CA::Rect>::Pool::delete_node(*v147, v148);
          v147[1] = 0;
        }
      }
    }

    if (v1170)
    {
      if (v1170)
      {
        v149 = v1170 == 1;
      }

      else
      {
        v149 = *(v1170 + 4) == 6;
      }

      v151 = v149;
      v150 = v151 ^ 1;
    }

    else
    {
      v150 = 0;
    }

    CA::Render::Updater::LayerShapes::union_bounds(&v1165, v1199, (v1190 != 0));
    if (v1169)
    {
      v153 = v124;
    }

    else
    {
      v153 = 0;
    }

    if (v153 == 1)
    {
      v154 = *(v1187 + 136);
      if (v154 && (*(v154 + 232) > 0.0 || *(v154 + 72)))
      {
        CA::Render::Updater::corner_clipped_layer_bounds(&v1193, v1187);
        v1199[0] = v1193;
        v1199[1] = v1194;
        CA::Rect::apply_transform(v1199[0].i64, &v1183);
      }

      CA::Render::Updater::union_opaque_rect(v9, &v1165, v152, v1199[0], v1199[1]);
      if (*&v1171 == 0.0)
      {
        v155 = 0;
      }

      else
      {
        v155 = v125;
      }

      if (v155 == 1)
      {
        v117.n128_f64[0] = *&v1199[1].i64[1] * *v1199[1].i64;
        v114 = 0.0;
        if (!((*&v1199[1].i64[1] * *v1199[1].i64 <= 4096.0) | v150 & 1))
        {
          v156 = *(v1187 + 136);
          if ((!v156 || !*(v156 + 96)) && (*(*(v9 + 64) + 15) & 4) == 0)
          {
            for (j = v1182; j; j = j[1])
            {
              (*(*j + 5))(j, v1199, v117);
            }

            CA::BoundsImpl::intersect(v1199, v1173, v1174);
            v1193 = 0uLL;
            CA::Bounds::set_interior(&v1193, v158, v1199[0], v1199[1]);
            CA::shape_union(&v1171, &v1193, v159);
          }
        }
      }
    }

    goto LABEL_283;
  }

LABEL_284:
  v160 = *(v113 + 136);
  v161 = 0.0;
  if (!v160 || (v162 = *v160) == 0)
  {
    v1151 = 0;
    v165 = 0;
    goto LABEL_400;
  }

  if (*(v162 + 12) != 48)
  {
    v1151 = 0;
    goto LABEL_369;
  }

  v163 = *(v162 + 136);
  if (v163 == 6)
  {
    v164 = *v9;
    if ((*(v162 + 64) & 1) == 0)
    {
      v163 = 6;
      goto LABEL_306;
    }
  }

  else
  {
    if (v163 != 8)
    {
      v164 = *v9;
      goto LABEL_306;
    }

    v164 = *v9;
    if (*(v162 + 132) != 1)
    {
      v163 = 8;
      goto LABEL_306;
    }
  }

  if ((*(v164 + 1381) & 0x80) != 0)
  {
    v1188.i64[0] |= 0x10000002uLL;
  }

  v1201 = 0;
  v1199[0] = xmmword_183E20E00;
  v1199[1] = 0u;
  v1199[2] = xmmword_183E20E60;
  memset(&v1199[3], 0, 32);
  v1199[5] = xmmword_183E20E00;
  v1200[0] = 0u;
  v1200[1] = xmmword_183E20E60;
  __asm { FMOV            V0.2D, #1.0 }

  v1200[2] = _Q0;
  v167 = CA::Transform::concat(v1199, &v1183);
  for (k = v1182; k; k = k[1])
  {
    (*(*k + 7))(k, v1199, v167);
  }

  v169 = vcvt_f32_f64(v1199[0]);
  v170 = vcvt_f32_f64(v1199[2]);
  v171 = vcvtq_f64_f32(vext_s8(v169, v170, 4uLL));
  v172 = vcvtq_f64_f32(__PAIR64__(v170.u32[1], v169.u32[0]));
  v173 = vmulq_f64(vzip2q_s64(v172, v171), vzip1q_s64(v172, v171));
  v174 = vsubq_f64(v173, vdupq_laneq_s64(v173, 1)).f64[0];
  if (v174 == 0.0)
  {
    _Q0 = vcvt_hight_f32_f64(v169, v1199[2]);
    _D2 = vext_s8(v170, v169, 4uLL);
  }

  else
  {
    *&v171.f64[0] = vcvt_f32_f64(vmulq_n_f64(v171, 1.0 / v174));
    _Q0 = vnegq_f32(vextq_s8(v171, v171, 0xCuLL));
    _D2 = vcvt_f32_f64(vmulq_n_f64(v172, 1.0 / v174));
  }

  v164 = *v9;
  _S4 = *(*v9 + 1188);
  _S5 = *(*v9 + 1192);
  __asm
  {
    FMLA            S1, S4, V2.S[1]
    FMLA            S1, S5, V0.S[2]; float
    FMLA            S3, S4, V0.S[1]
  }

  v183 = atan2f(_S3 + (_D2.f32[0] * _S5), _S1);
  *(*&v1161.f64[0] + 272) = v183;
  v1188.i64[1] |= 0x2000000uLL;
  v163 = *(v162 + 136);
LABEL_306:
  v161 = 0.0;
  if (!CA::Render::Updater::should_track_layer_headroom(*&v1186, v164[70]))
  {
    goto LABEL_316;
  }

  if (v163 == 8)
  {
    v184 = *(v162 + 40);
    if (v184 <= *(v162 + 76))
    {
      v184 = *(v162 + 76);
    }
  }

  else
  {
    if (v163 != 6)
    {
      v161 = 1.0;
      goto LABEL_316;
    }

    v184 = *(v162 + 60);
  }

  if (v184 >= 0.0)
  {
    if (v163 != 8)
    {
      v161 = *(v162 + 60);
LABEL_318:
      v185 = *(v162 + 60);
      goto LABEL_364;
    }

    if (*(v162 + 40) <= *(v162 + 76))
    {
      v161 = *(v162 + 76);
    }

    else
    {
      v161 = *(v162 + 40);
    }

LABEL_362:
    v185 = *(v162 + 40);
    if (v185 <= *(v162 + 76))
    {
      v185 = *(v162 + 76);
    }

    goto LABEL_364;
  }

LABEL_316:
  if (v163 == 8)
  {
    goto LABEL_362;
  }

  v185 = 1.0;
  if (v163 == 6)
  {
    goto LABEL_318;
  }

LABEL_364:
  v1151 = 4 * (v185 > 1.0);
  CA::Render::SDFLayer::sdf_padding(v162);
  MEMORY[0x1EEE9AC00](v218);
  memset(&v1135[8], 0, 48);
  if (v219 < 1.0)
  {
    v219 = 1.0;
  }

  v220 = 0;
  if (*(v162 + 136) == 5)
  {
    v220 = *(v162 + 28);
  }

  *&v1135[32] = &v1183;
  *&v1135[40] = v219;
  *&v1135[44] = v220;
  *&v1135[8] = &unk_1EF1F8470;
  *&v1135[16] = v1182;
  v1182 = &v1135[8];
  v1188.i64[1] |= 0x20C00000uLL;
LABEL_369:
  if (v1168)
  {
    if ((v1168[2] & 1) == 0)
    {
      if ((*(*v162 + 208))(v162, v1187))
      {
        v221 = v1168;
        *(v1168 + 16) = 1;
        v222 = v221[1];
        if (v222)
        {
          CA::GenericRectTree<CA::Rect>::Pool::delete_node(*v221, v222);
          v221[1] = 0;
        }
      }
    }
  }

  memset(v1199, 0, 48);
  v223 = (*(*v162 + 176))(v162);
  v165 = v223;
  if (!v223)
  {
    v1193 = 0u;
    v1194 = 0u;
    *buf = 0u;
    v1203 = 0u;
    if (!(*(*v162 + 184))(v162, v1187, &v1193, buf))
    {
      goto LABEL_397;
    }

    v228 = (*(*v162 + 200))(v162);
    CA::Rect::apply_transform(v1193.f64, &v1183);
    CA::Render::Updater::LayerShapes::union_bounds(&v1165, &v1193, v228);
    if (v1203.f64[0] != 0.0 && v1169)
    {
      CA::Rect::apply_transform(buf, &v1183);
      CA::Render::Updater::union_opaque_rect(v9, &v1165, v229, *buf, v1203);
    }

    if (!v228)
    {
      goto LABEL_397;
    }

    goto LABEL_396;
  }

  if ((*(*v162 + 192))(v162, v1187, v1199))
  {
    v1193 = v1199[0];
    v1194 = vsubq_f64(*(&v1199[1] + 8), v1199[0]);
    CA::Rect::apply_transform(v1193.f64, &v1183);
    v225 = v1193;
    v224 = v1194;
    v1199[0] = v1193;
    *(&v1199[1] + 8) = vaddq_f64(v1194, v1193);
    v1193 = 0u;
    v1194 = 0u;
    v226 = *&v224.i64[1];
    if (*v224.i64 >= *&v224.i64[1])
    {
      v227 = *&v224.i64[1];
    }

    else
    {
      v227 = *v224.i64;
    }

    if (v227 > 0.0)
    {
      if (*v224.i64 > *&v224.i64[1])
      {
        v226 = *v224.i64;
      }

      if (v226 >= 1.79769313e308)
      {
        v1193 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
        v224 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      }

      else
      {
        v1193 = v225;
      }

      v1194 = v224;
    }

    CA::Render::Updater::LayerShapes::union_bounds(&v1165, &v1193, 1);
    if (*&v1167 > *v1199[1].i64)
    {
      *&v1167 = v1199[1].i64[0];
    }

    if (*(&v1167 + 1) < *&v1199[2].i64[1])
    {
      *(&v1167 + 1) = v1199[2].i64[1];
    }

LABEL_396:
    v1188.i64[1] |= 0x20C00000uLL;
  }

LABEL_397:
  if ((*(*v162 + 168))(v162, v1187))
  {
    v1188.i64[1] |= 0x800000000uLL;
  }

  v113 = v1187;
LABEL_400:
  v230 = v1161.f64[0];
  valid_occlusion = CA::Render::Layer::get_valid_occlusion(v113, v117.n128_f32[0], v114);
  if (valid_occlusion)
  {
    *(*&v230 + 24) |= 0x30000000000uLL;
  }

  v236.n128_f64[0] = v161;
  if (v161 > 1.001)
  {
    v1188.i64[1] |= 0x800000004uLL;
  }

  if ((*&v1159.f64[0] & 0x400000000) != 0)
  {
    v237 = ((v1155 & 7) << 47) | v1188.i64[1] | *&v1150.f64[0];
    if (((v1188.i64[1] | *&v1150.f64[0]) & 0x1000000000) != 0)
    {
      v236.n128_u32[0] = *(*v9 + 1184);
      if (v236.n128_f32[0] <= v23)
      {
        v236.n128_f32[0] = v23;
      }

      *(*v9 + 1184) = v236.n128_u32[0];
    }

    goto LABEL_411;
  }

  if (v19)
  {
    v237 = v1188.i64[1];
LABEL_411:
    v1188.i64[1] = v237 | 4;
  }

  v238 = v1187;
  if (*(v1187 + 37))
  {
    v239 = *(v1187 + 136);
    if (!v239 || (v236 = vmvnq_s8(vceqzq_f32(*(v239 + 200))), v236.n128_u64[0] = vmovn_s32(v236), v236.n128_u16[0] = vmaxv_u16(v236.n128_u64[0]), (v236.n128_u8[0] & 1) != 0))
    {
      v240 = *(v1187 + 48);
      if ((v240 & 0x80) != 0)
      {
        v242 = &CA::RectTraits<double>::infinity;
        goto LABEL_443;
      }

      if ((v240 & 0x100) != 0)
      {
        v241 = (v1187 + 72);
        goto LABEL_422;
      }

      if (v239)
      {
        valid_occlusion = *(v239 + 120);
        if (valid_occlusion)
        {
          v241 = CA::Render::Path::bounding_rect(valid_occlusion);
          v238 = v1187;
          v239 = *(v1187 + 136);
LABEL_422:
          v243 = *v241;
          v244 = *(v241 + 1);
          v1199[1] = v244;
          if (v239)
          {
            v245 = (*(v239 + 228) * -2.8);
          }

          else
          {
            v245 = -8.39999962;
          }

          if (*v244.i64 <= *&v244.i64[1])
          {
            v246 = *&v244.i64[1];
          }

          else
          {
            v246 = *v244.i64;
          }

          if (v246 < 1.79769313e308)
          {
            v247 = *v244.i64 >= *&v244.i64[1] ? *&v244.i64[1] : *v244.i64;
            if (v247 > 0.0)
            {
              v243 = vaddq_f64(v243, vdupq_lane_s64(*&v245, 0));
              v248 = v245 * -2.0;
              *v1199[1].i64 = v248 + *v244.i64;
              *&v1199[1].i64[1] = v248 + *&v244.i64[1];
              if (v248 + *v244.i64 <= 0.0 || v248 + *&v244.i64[1] <= 0.0)
              {
                v1199[1] = 0uLL;
              }
            }
          }

          if (v239)
          {
            v249 = vcvtq_f64_f32(*(v239 + 220));
          }

          else
          {
            v249 = xmmword_183E20FC0;
          }

          v1199[0] = vaddq_f64(v243, v249);
          CA::Rect::apply_transform(v1199[0].i64, &v1183);
          v251 = *(v238 + 136);
          if (v251)
          {
            v252 = *(v251 + 96);
            if (v252)
            {
              if (*(v252 + 16))
              {
                MEMORY[0x1EEE9AC00](v250);
                v236 = v1199[0];
                *&v1135[16] = v1199[0];
                *&v1135[32] = v1199[1];
                *&v1134[24] = &unk_1EF1F84D8;
                *v1135 = v1182;
                *&v1135[8] = 0;
                v1182 = &v1134[24];
                goto LABEL_444;
              }
            }
          }

          v242 = v1199;
LABEL_443:
          valid_occlusion = CA::Render::Updater::LayerShapes::union_bounds(&v1165, v242, 1);
LABEL_444:
          v1188.i64[1] |= 0x20C00000uLL;
        }
      }
    }
  }

  v253 = v1187;
  v254 = *(v1187 + 136);
  if (v254)
  {
    v236.n128_u32[0] = *(v254 + 344);
    if (v236.n128_f32[0] != 0.0)
    {
      v236 = vmvnq_s8(vceqzq_f32(*(v254 + 324)));
      v236.n128_u64[0] = vmovn_s32(v236);
      v236.n128_u16[0] = vmaxv_u16(v236.n128_u64[0]);
      if ((v236.n128_u8[0] & 1) != 0 && (*(v1187 + 49) & 8) != 0)
      {
        v255 = *(v1187 + 72);
        v256 = *(v1187 + 88);
        v1199[0] = v255;
        v1199[1] = v256;
        if (*v256.i64 <= *&v256.i64[1])
        {
          v257 = *&v256.i64[1];
        }

        else
        {
          v257 = *v256.i64;
        }

        if (v257 < 1.79769313e308)
        {
          v258 = *v256.i64 >= *&v256.i64[1] ? *&v256.i64[1] : *v256.i64;
          if (v258 > 0.0)
          {
            *&v259 = -*(v254 + 320);
            v1199[0] = vaddq_f64(v255, vdupq_lane_s64(v259, 0));
            *v1199[1].i64 = *&v259 * -2.0 + *v256.i64;
            *&v1199[1].i64[1] = *&v259 * -2.0 + *&v256.i64[1];
            if (*v1199[1].i64 <= 0.0 || *&v259 * -2.0 + *&v256.i64[1] <= 0.0)
            {
              v1199[1] = 0uLL;
            }
          }
        }

        CA::Rect::apply_transform(v1199[0].i64, &v1183);
        v261 = *(v254 + 96);
        if (v261 && *(v261 + 16))
        {
          MEMORY[0x1EEE9AC00](v260);
          v236 = v1199[0];
          *&v1135[16] = v1199[0];
          *&v1135[32] = v1199[1];
          *&v1134[24] = &unk_1EF1F84D8;
          *v1135 = v1182;
          *&v1135[8] = 0;
          v1182 = &v1134[24];
        }

        else
        {
          valid_occlusion = CA::Render::Updater::LayerShapes::union_bounds(&v1165, v1199, 1);
          v253 = v1187;
        }

        v1188.i64[1] |= 0x20C00000uLL;
      }
    }
  }

  v262 = v1182;
  if (v165)
  {
    v263 = v1158;
    goto LABEL_466;
  }

  if ((*(v253 + 46) & 0x10) != 0)
  {
    v236.n128_u32[0] = v1184;
    v1199[0].i64[0] = v1184;
    v1199[0].i64[1] = v1184;
    if (v1182)
    {
      v272 = v1182;
      do
      {
        valid_occlusion = (*(*v272 + 6))(v272, v1199);
        v272 = v272[1];
      }

      while (v272);
      v253 = v1187;
    }

    v273 = *(v253 + 136);
    if (v273)
    {
      v236.n128_u32[0] = *(v273 + 308);
    }

    else
    {
      v236.n128_u8[0] = *(v253 + 39);
      v236.n128_f32[0] = v236.n128_u32[0];
    }

    v308 = v1199[0].i64[0];
    if (*v1199[0].i64 <= *&v1199[0].i64[1])
    {
      v308 = v1199[0].i64[1];
    }

    v236.n128_f64[0] = *&v308 / v236.n128_f32[0];
    v236.n128_f32[0] = v236.n128_f64[0];
    if (fabsf(v236.n128_f32[0] + -1.0) > 0.001)
    {
      valid_occlusion = (MEMORY[0x1EEE9AC00])(valid_occlusion);
      v236.n128_f32[0] = v236.n128_f32[0] + 1.0;
      *&v1135[40] = 0;
      *&v1135[44] = v236.n128_f32[0];
      *&v1135[24] = &unk_1EF1F83A0;
      *&v1135[32] = v1182;
      v1182 = &v1135[24];
    }

    v1191 |= 4u;
  }

  if ((*&v1159.f64[0] & 0xC00000000) != 0)
  {
    v1191 |= 4u;
  }

  v309 = *(v253 + 40);
  v263 = v1158;
  if ((v309 & 0x400000000000000) != 0)
  {
    if (!(v309 & 0x10000000000000 | v1154))
    {
      goto LABEL_569;
    }

    goto LABEL_568;
  }

  if (v1154)
  {
LABEL_568:
    *(*&v1186 + 24) |= 0x1000uLL;
  }

LABEL_569:
  v310 = *(v253 + 136);
  if (!*(v253 + 37))
  {
    if (!v310)
    {
      goto LABEL_466;
    }

    goto LABEL_575;
  }

  if (v310)
  {
    v236 = vmvnq_s8(vceqzq_f32(*(v310 + 200)));
    v236.n128_u64[0] = vmovn_s32(v236);
    if ((vmaxv_u16(v236.n128_u64[0]) & 1) != 0 && !*(v310 + 120))
    {
      v311 = (*(v253 + 49) & 1) == 0;
LABEL_576:
      v236.n128_u32[0] = *(v310 + 344);
      v312 = v236.n128_f32[0] != 0.0 && (v236 = vmvnq_s8(vceqzq_f32(*(v310 + 324))), v236.n128_u64[0] = vmovn_s32(v236), v236.n128_u16[0] = vmaxv_u16(v236.n128_u64[0]), (v236.n128_u8[0] & 1) != 0) && (*(v253 + 49) & 8) == 0;
      if (!v311 && !v312)
      {
        goto LABEL_584;
      }

      goto LABEL_583;
    }

LABEL_575:
    v311 = 0;
    goto LABEL_576;
  }

  if (*(v253 + 49))
  {
    goto LABEL_466;
  }

LABEL_583:
  v236.n128_f64[0] = MEMORY[0x1EEE9AC00](valid_occlusion);
  *&v1135[8] = 0;
  *&v1135[40] = 0;
  *&v1135[16] = &v1183;
  *&v1135[24] = v313;
  *&v1135[28] = v236.n128_u64[0];
  *&v1135[36] = v314;
  *&v1134[24] = &unk_1EF1F8408;
  *v1135 = v1182;
  v1182 = &v1134[24];
  v1188.i64[1] |= 0x20C00000uLL;
  if (v315)
  {
    goto LABEL_466;
  }

LABEL_584:
  v316 = *(v310 + 96);
  if (v316)
  {
    v317 = *(v316 + 16);
    if (v317)
    {
      v318 = v316 + 24;
      v319 = -v317;
      v320 = v317 - 1;
      while (1)
      {
        v321 = *(v318 + 8 * v320);
        v322 = *(v321 + 12);
        if ((v322 & 0x40100) == 0x100 && ((v322 & 0x20000) == 0 || *(*&v1186 + 88) || (*(*v1163 + 1377) & 0x10) == 0))
        {
          break;
        }

LABEL_597:
        --v320;
        _CF = __CFADD__(v319++, 1);
        if (_CF)
        {
          v253 = v1187;
          v9 = v1163;
          v7 = v1157;
          v263 = v1158;
          goto LABEL_466;
        }
      }

      MEMORY[0x1EEE9AC00](valid_occlusion);
      v236 = 0uLL;
      *&v1135[32] = 0u;
      *v1135 = 0u;
      *&v1134[24] = &unk_1EF1F8248;
      v233 = v1187;
      *&v1135[16] = &v1183;
      *&v1135[24] = v1187;
      *&v1135[32] = v321;
      valid_occlusion = *(v321 + 48);
      if (valid_occlusion && (valid_occlusion = (*(*valid_occlusion + 8))(valid_occlusion, v321), !valid_occlusion))
      {
        if (*&v1135[32])
        {
LABEL_595:
          *v1135 = v1182;
          v1182 = &v1134[24];
          if ((*(v1162 + 64) & 8) != 0)
          {
            *(v321 + 20) = v1163[2];
          }

          goto LABEL_597;
        }
      }

      else
      {
        *&v1135[32] = 0;
      }

      v1135[10] = 1;
      goto LABEL_595;
    }
  }

LABEL_466:
  v264 = *&v1186;
  v265 = *(*&v1186 + 24);
  if ((*(v253 + 49) & 0x40) != 0)
  {
    *&v265 |= 0x400000uLL;
    *(*&v1186 + 24) = v265;
  }

  if ((v265.i8[0] & 0x10) == 0 && (*&v265 & 0x40000000000) == 0 && !*(*&v1161.f64[0] + 120) && !v1190)
  {
    v266 = *(v253 + 136);
    if (v266 && (v267 = *(v266 + 104)) != 0 && (v268 = *(v267 + 16), v268))
    {
      if (*(*(v267 + 24) + 13))
      {
        goto LABEL_495;
      }

      v269 = 0;
      v270 = v267 + 32;
      while (v268 - 1 != v269)
      {
        v271 = *(v270 + 8 * v269++);
        if (*(v271 + 13))
        {
          goto LABEL_1094;
        }
      }

      v269 = v268;
LABEL_1094:
      if ((*&v265 & 0x80000000000) != 0 || v269 < v268)
      {
        goto LABEL_495;
      }
    }

    else if ((*&v265 & 0x80000000000) != 0)
    {
      goto LABEL_495;
    }

    if ((*(v9 + 48) & 1) == 0)
    {
      if (!v266 || (v274 = *(v266 + 88)) == 0 || (*(v274 + 13) & 1) == 0 || (*(v253 + 45) & 4) != 0 || (valid_occlusion = CA::Render::Filter::compositing_dod(*(v274 + 24)), (valid_occlusion - 5) >= 0xFFFFFFFE))
      {
        *&v265 |= 0x10uLL;
        v264[3] = v265;
      }
    }
  }

LABEL_495:
  if ((v265.i8[0] & 0x10) != 0)
  {
    v236 = 0uLL;
    v1175 = 0u;
    v1174 = 0u;
    v1173 = 0u;
  }

  else if (*(*v9 + 1376))
  {
    v236.n128_u64[0] = v1174.i64[0];
    if (*v1174.i64 >= *&v1174.i64[1])
    {
      v236.n128_u64[0] = v1174.u64[1];
    }

    if (v236.n128_f64[0] <= 0.0 && (v1191 & 4) == 0)
    {
      v264[3] = (*&v265 | 0x10);
    }
  }

  for (m = v1182; m != v262; m = m[1])
  {
    valid_occlusion = (*(*m + 3))(m, &v1165, (v1191 >> 2) & 1, v236);
  }

  v276 = v1160.f64[0];
  if (v1166.f64[0] == 0.0)
  {
    v296 = *&v1186;
    *(*&v1186 + 160) = 0;
    v296[21] = 0;
    if (!v262)
    {
      goto LABEL_512;
    }

    goto LABEL_511;
  }

  v1199[0] = v1165;
  v1199[1] = v1166;
  CA::Rect::unapply_transform(v1199[0].i64, &v1183);
  v277 = vceqzq_f64(v1199[1]);
  v278 = vorrq_s8(vdupq_laneq_s64(v277, 1), v277).u64[0];
  v279 = 0uLL;
  if ((v278 & 0x8000000000000000) == 0)
  {
    v280 = vceqq_f64(v1199[1], v1199[1]);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v280), 1), v280).u64[0] & 0x8000000000000000) == 0)
    {
      v281 = vcvtmq_s64_f64(vmaxnmq_f64(v1199[0], vdupq_n_s64(0xC1BFFFFFFF000000)));
      v279 = vuzp1q_s32(v281, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1199[0], v1199[1]), vdupq_n_s64(0x41C0000000000000uLL))), v281));
    }
  }

  for (*(*&v1186 + 160) = v279; v262; v262 = v262[1])
  {
LABEL_511:
    valid_occlusion = (*(*v262 + 3))(v262, &v1165, (v1191 >> 2) & 1);
  }

LABEL_512:
  v282 = v1182;
  if (!v1182 || (*(v1182 + 17) & 1) == 0)
  {
    MEMORY[0x1EEE9AC00](valid_occlusion);
    *&v1135[32] = v282;
    *&v1135[40] = 65792;
    *&v1135[24] = &unk_1EF1F8338;
    v1182 = &v1135[24];
    v282 = &v1135[24];
  }

  v283 = v1161.f64[0];
  v284 = v1165;
  v285 = v1166;
  v286 = vceqzq_f64(v1166);
  v287 = vorrq_s8(vdupq_laneq_s64(v286, 1), v286).u64[0];
  v288 = 0uLL;
  if ((v287 & 0x8000000000000000) == 0)
  {
    v289 = vceqq_f64(v1166, v1166);
    if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v289), 1), v289).u64[0] & 0x8000000000000000) == 0)
    {
      v290 = vcvtmq_s64_f64(vmaxnmq_f64(v1165, vdupq_n_s64(0xC1BFFFFFFF000000)));
      v288 = vuzp1q_s32(v290, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1165, v1166), vdupq_n_s64(0x41C0000000000000uLL))), v290));
    }
  }

  *(*&v1161.f64[0] + 192) = v288;
  if ((*(*&v283 + 28) & 0x20) != 0)
  {
    v1191 |= 0xAu;
  }

  if ((*&v1159.f64[0] & 0x400000000) != 0 || (v291 = (*&v1186 + 96), v292 = *(*&v1186 + 104), v292 == (*&v1186 + 96)))
  {
    v295 = v1163;
    if (v1170)
    {
      v232 = v1171;
      if (*&v1171 != 0.0)
      {
        CA::shape_subtract(&v1170, v1171, v233, v234);
      }
    }

    goto LABEL_625;
  }

  v293 = *&v1171;
  *buf = v1170;
  v294 = *(*v1163 + 1376);
  if ((v294 & 0x200000) != 0)
  {
    v1170 = 1;
    v1171 = 1;
  }

  if ((v294 & 1) != 0 && (*(*&v1186 + 24) & 0x18) != 0)
  {
    v295 = v1163;
    if ((v294 & 0x200000) == 0)
    {
      goto LABEL_625;
    }

    goto LABEL_620;
  }

  v1193.f64[0] = 0.0;
  v1150.f64[0] = v293;
  v1140 = v285;
  v1141 = v284;
  if (!v1169 || (v1188.i8[2] & 0x10) != 0)
  {
    LODWORD(v1142) = 1;
  }

  else
  {
    LODWORD(v1142) = 0;
    *&v1193.f64[0] = v1169;
    v1169 = 1;
  }

  v297 = 0;
  v298 = v1188.i32[2];
  v1188.i64[1] &= 0xFFFFFFFFFE3FFFFFLL;
  v1159 = vdupq_n_s64(0x100000uLL);
  v299 = 1;
  v300 = v1163;
  do
  {
    v301 = v292;
    v292 = v292[1];
    CA::Render::Updater::prepare_layer(v300, &v1182, v301, &v1165, &v1188.u64[1]);
    if (*(v300 + 50) == 1 && (v1188.i32[0] & 0x20000) != 0)
    {
      v1188.i64[0] |= 8uLL;
    }

    v297 |= (*&v1189 & 0x28000) != 0;
    if ((v297 & 1) == 0)
    {
      v299 &= (v1189 & 0x800000) == 0;
    }

    if (v1169 && !(v1188.i64[0] & 0x100000 | v1169 & 1) && *(v1169 + 4) >= 65)
    {
      CA::Shape::unref(v1169);
      v1169 = 1;
      v1188 = vorrq_s8(v1188, v1159);
    }
  }

  while (v292 != v291);
  v302 = v298 & 0x1C00000;
  v303 = v1182;
  if (v1182 != v282)
  {
    do
    {
      v304 = v303[1];
      (**v303)(v303);
      v303 = v304;
    }

    while (v304 != v282);
  }

  v1182 = v282;
  v305 = v1188.i64[1];
  v295 = v1163;
  v283 = v1161.f64[0];
  v293 = v1150.f64[0];
  if ((v302 & ~v1188.i64[1]) == 0)
  {
    v263 = v1158;
    goto LABEL_613;
  }

  v263 = v1158;
  v306 = v1140;
  v307 = v1141;
  if (!v1169)
  {
    goto LABEL_612;
  }

  if (v1169)
  {
    if (v1169 == 1)
    {
LABEL_612:
      v305 |= v302;
      v1188.i64[1] = v305;
      goto LABEL_613;
    }
  }

  else if (*(v1169 + 4) == 6)
  {
    goto LABEL_612;
  }

  v323 = vclezq_f64(v1140);
  if ((vorrq_s8(vdupq_laneq_s64(v323, 1), v323).u64[0] & 0x8000000000000000) == 0)
  {
    v324 = vclezq_f64(v1174);
    if ((vorrq_s8(vdupq_laneq_s64(v324, 1), v324).u64[0] & 0x8000000000000000) != 0)
    {
      v306 = 0uLL;
    }

    else
    {
      v325 = vmaxnmq_f64(v1141, v1173);
      v326 = vsubq_f64(vminnmq_f64(vaddq_f64(v1141, v1140), vaddq_f64(v1173, v1174)), v325);
      v327 = vclezq_f64(v326);
      v328 = vdupq_laneq_s64(v327, 1);
      v329 = vorrq_s8(v328, v327);
      v328.i64[0] = -1;
      v330 = vdupq_lane_s64(vcgtq_s64(v329, v328).i64[0], 0);
      v307 = vbslq_s8(v330, v325, v1141);
      v306 = vandq_s8(v326, v330);
    }
  }

  v331 = vceqzq_f64(v306);
  if ((vorrq_s8(vdupq_laneq_s64(v331, 1), v331).u64[0] & 0x8000000000000000) != 0 || (v332 = vceqq_f64(v306, v306), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v332), 1), v332).u64[0] & 0x8000000000000000) != 0))
  {
    v1199[0] = 0uLL;
  }

  else
  {
    v333 = vcvtmq_s64_f64(vmaxnmq_f64(v307, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v1199[0] = vuzp1q_s32(v333, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v307, v306), vdupq_n_s64(0x41C0000000000000uLL))), v333));
  }

  if ((CA::Shape::contains(v1169, v1199) & 1) == 0)
  {
    goto LABEL_612;
  }

LABEL_613:
  if (!(v299 & 1 | ((v297 & 1) == 0)))
  {
    v1188.i64[1] = v305 | 0x20C00000;
  }

  v334 = *&v1186;
  v7 = v1157;
  v276 = v1160.f64[0];
  if ((v1142 & 1) == 0)
  {
    v335 = v1169;
    *(*&v1186 + 216) = v1169;
    CA::shape_union(&v1193, v335, v233);
    v1169 = *&v1193.f64[0];
    v334 = *&v1186;
  }

  if ((v334[3].i8[0] & 0x20) != 0)
  {
    CA::Render::LayerNode::depth_sort_sublayers(v334);
  }

  if ((*(*v295 + 1376) & 0x200000) != 0)
  {
LABEL_620:
    CA::shape_union(&v1171, *&v293, v233);
    CA::shape_subtract(buf, v1171, v336, v337);
    v339 = *buf;
    if (v1170)
    {
      CA::shape_union(&v1170, *buf, v338);
      if ((v1170 & 1) == 0 && *(v1170 + 4) >= 257)
      {
        v1199[0] = 0uLL;
        CA::Shape::get_bounds(v1170, v1199);
        CA::Shape::unref(v1170);
        v1170 = CA::Shape::new_shape(v1199, v340);
      }
    }

    CA::Shape::unref(v339);
    CA::Shape::unref(*&v293);
  }

LABEL_625:
  if (v1153.i32[0])
  {
    v1173 = v1144;
    v1174 = v1143;
  }

  if (v1170 && *&v1171 != 0.0)
  {
    v342 = CA::Shape::subtract(v1171, &v1175);
    if (v1170)
    {
      CA::shape_union(&v1170, v342, v341);
      if ((v1170 & 1) == 0 && *(v1170 + 4) >= 257)
      {
        v1199[0] = 0uLL;
        CA::Shape::get_bounds(v1170, v1199);
        CA::Shape::unref(v1170);
        v1170 = CA::Shape::new_shape(v1199, v343);
      }
    }

    CA::Shape::unref(v342);
    v345 = *(*&v276 + 136);
    if (v345 && *(v345 + 240) > 0.0 && (*(v345 + 244) != 0.0 || *(v345 + 248) != 0.0 || *(v345 + 252) != 0.0 || *(v345 + 256) != 0.0 || *(v345 + 128)))
    {
      CA::Render::Updater::LayerShapes::union_visible_shape(&v1165, v1171, v344);
    }
  }

  if ((*(*&v283 + 27) & 2) == 0 && (byte_1ED4E9880 & 1) == 0)
  {
    v1044 = *(v1187 + 104);
    if (v1044)
    {
      if (*(v1044 + 12) == 25 && *(v1044 + 529) == 1)
      {
        v1045 = *v295;
        v1159 = *(*v295 + 200);
        v1193 = 0uLL;
        v1150 = v1165;
        v1144 = v1166;
        CA::Bounds::set_exterior(&v1193, v232, v1165, v1166);
        if (CA::BoundsImpl::intersect(&v1193, *&v1159.f64[0], *&vextq_s8(v1159, v1159, 8uLL)))
        {
          v1047 = (HIDWORD(v1159.f64[1]) * LODWORD(v1159.f64[1])) * 0.95 < (HIDWORD(v1193.f64[1]) * LODWORD(v1193.f64[1]));
        }

        else
        {
          v1047 = 0;
        }

        v1095 = *(v1045 + 568);
        memset(buf, 0, sizeof(buf));
        CA::Bounds::set_exterior(buf, v1046, v1150, v1144);
        v1096 = CA::Shape::intersect(v1095, buf);
        v1097 = CA::Shape::area(v1096);
        v1099 = *&buf[8];
        v1098 = *&buf[12];
        v1100 = *&buf[12] * *&buf[8];
        v1101 = (*&buf[12] * *&buf[8]) * 0.2;
        if (byte_1ED4E9881 == 1)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v1121 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v1150.f64[0]) = v1101 > v1097;
            v1141.f64[0] = *(v1044 + 536);
            LODWORD(v1142) = *buf;
            LODWORD(v1143.f64[0]) = *&buf[4];
            v1122 = HIDWORD(v1159.f64[1]) * LODWORD(v1159.f64[1]);
            LODWORD(v1144.f64[0]) = HIDWORD(v1193.f64[1]) * LODWORD(v1193.f64[1]);
            v1123 = ((HIDWORD(v1193.f64[1]) * LODWORD(v1193.f64[1])) / (HIDWORD(v1159.f64[1]) * LODWORD(v1159.f64[1])));
            v1124 = CA::Shape::area(v1095);
            v1125 = CA::Shape::area(v1096);
            v1199[0].i32[0] = 134222336;
            *(v1199[0].i64 + 4) = *&v1141.f64[0];
            v1199[0].i16[6] = 1024;
            *(&v1199[0].i32[3] + 2) = v1142;
            v1199[1].i16[1] = 1024;
            v1199[1].i32[1] = LODWORD(v1143.f64[0]);
            v1199[1].i16[4] = 1024;
            *(&v1199[1].i32[2] + 2) = v1099;
            v1199[1].i16[7] = 1024;
            v1199[2].i32[0] = v1098;
            v1199[2].i16[2] = 1024;
            *(&v1199[2].i32[1] + 2) = v1100;
            v1199[2].i16[5] = 1024;
            v1199[2].i32[3] = LODWORD(v1159.f64[0]);
            v1199[3].i16[0] = 1024;
            *(v1199[3].i32 + 2) = HIDWORD(v1159.f64[0]);
            v1199[3].i16[3] = 1024;
            *(&v1199[3].i32[3] + 2) = HIDWORD(v1159.f64[1]);
            v1199[3].i32[2] = LODWORD(v1159.f64[1]);
            v1199[3].i16[6] = 1024;
            v1199[4].i16[1] = 1024;
            v1199[4].i32[1] = v1122;
            v1199[4].i16[4] = 2048;
            *(&v1199[4].i64[1] + 2) = v1123;
            v1199[5].i16[1] = 1024;
            v1199[5].i32[1] = LODWORD(v1144.f64[0]);
            v1199[5].i16[4] = 1024;
            *(&v1199[5].i32[2] + 2) = v1047;
            v1199[5].i16[7] = 2048;
            *&v1200[0] = v1124;
            WORD4(v1200[0]) = 2048;
            *(v1200 + 10) = (v1125 / v1100);
            WORD1(v1200[1]) = 2048;
            *(&v1200[1] + 4) = v1125;
            WORD6(v1200[1]) = 1024;
            *(&v1200[1] + 14) = LODWORD(v1150.f64[0]);
            _os_log_impl(&dword_183AA6000, v1121, OS_LOG_TYPE_DEFAULT, "IQ Preferred Latency %f: \n  self_bounds %i %i %i %i (area=%i)\n  update_bounds %i %i %i %i (area=%i)\n  intersection %.2f%% (area=%i)\n  is_full_screen %i\n\n  visible_shape_above area %ld\n  intersection %.2f%% (area=%ld)\n  unoccluded %i", v1199, 0x82u);
          }
        }

        CA::Shape::unref(v1096);
        v1102 = v1101 > v1097 && v1047;
        if (v1102 && *(*v1163 + 152) == 0.0)
        {
          *(*v1163 + 152) = *(v1044 + 536);
          v1103 = 1;
        }

        else
        {
          v1103 = 0;
        }

        if (v1158)
        {
          v1104 = v1103 ^ 1;
          if (!*&v1158[3])
          {
            v1104 = 1;
          }

          if ((v1104 & 1) == 0)
          {
            v1105 = atomic_load((*(*(v1044 + 16) + 24) + 8));
            if ((v1105 & 0x1000000000000) != 0)
            {
              v1106 = v1158[3];
              v1107 = atomic_load((*&v1106 + 228));
              if (!v1107)
              {
                v1108 = *(*&v1106 + 256) ? 0 : getpid();
                v1107 = 0;
                atomic_compare_exchange_strong((*&v1106 + 228), &v1107, v1108);
                if (!v1107)
                {
                  v1107 = v1108;
                }
              }

              *(*v1163 + 1384) = v1107;
            }
          }
        }

        v1114 = *(*(v1044 + 16) + 24);
        v1115 = atomic_load((v1114 + 8));
        if ((v1115 & 0x10000000000000) != 0)
        {
          v1116 = 0;
        }

        else
        {
          v1116 = v1103;
        }

        if (v1116 == 1)
        {
          atomic_fetch_or((v1114 + 8), 0x10000000000000uLL);
        }

        else
        {
          if ((v1115 & 0x10000000000000) != 0)
          {
            v1117 = v1103;
          }

          else
          {
            v1117 = 1;
          }

          if ((v1117 & 1) == 0)
          {
            atomic_fetch_and((v1114 + 8), 0xFFEFFFFFFFFFFFFFLL);
          }
        }

        v1188.i64[1] |= 4uLL;
        v295 = v1163;
        v7 = v1157;
        v263 = v1158;
        v283 = v1161.f64[0];
        v276 = v1160.f64[0];
      }
    }
  }

  v346 = *(*&v283 + 120);
  if (v346)
  {
    v1159 = v1174;
    v1150 = v1173;
    v1173 = *(v7 + 88);
    v1174 = *(v7 + 104);
    v1144 = v1175;
    v1175 = *(v7 + 120);
    v1188.i64[1] |= 0x20C00000uLL;
    v1198[0] = 0;
    v1196 = 0u;
    v1197 = 0u;
    v1194 = 0u;
    v1195 = 0u;
    v1193 = 0u;
    *&v1198[1] = v1173;
    *&v1198[3] = v1174;
    *&v1198[5] = v1175;
    v347 = v1162;
    v348 = *(v1162 + 80);
    CA::Render::Updater::prepare_layer(v295, v1162, *(*&v1186 + 136), &v1193, &v1188.u64[1]);
    v349 = *(v347 + 80);
    *(v347 + 80) = v348;
    v352 = CA::Render::Transition::subclass(v346, v350, v351);
    if (v352)
    {
      v354 = v352;
      v355 = *(v1187 + 72);
      v356 = *(v1187 + 88);
      *buf = v355;
      v1203 = v356;
      v357 = *(*&v1186 + 56);
      if (v357)
      {
        CA::Mat4Impl::mat4_apply_to_rect(v357, buf, v353);
      }

      else
      {
        *buf = vaddq_f64(*(*&v1186 + 64), v355);
      }

      v1179[0] = v1193;
      v1179[1] = v1194;
      v1176 = v1165;
      v1177 = v1166;
      v359 = *v1162;
      if (*v1162)
      {
        v360 = 0;
        do
        {
          v361 = v360;
          v360 = v359;
          v359 = v359[1];
          v360[1] = v361;
        }

        while (v359);
        v362 = 0;
        do
        {
          (*(*v360 + 9))(v360, v1179);
          (*(*v360 + 9))(v360, &v1176);
          v363 = v360[1];
          v360[1] = v362;
          v362 = v360;
          v360 = v363;
        }

        while (v363);
      }

      v364 = v1162;
      CA::Rect::unapply_transform(v1179, v1162 + 8);
      CA::Rect::unapply_transform(v1176.i64, v364 + 8);
      v1201 = 0;
      memset(v1200, 0, sizeof(v1200));
      memset(v1199, 0, sizeof(v1199));
      v365 = CA::Transform::set(v1199, v364 + 8);
      ((*v354)[2])(v1192, v354, v346, buf, v1199, v1179, &v1176, v365);
      v1165 = v1192[0];
      v1166 = v1192[1];
      if (v1169)
      {
        CA::Shape::unref(v1169);
        v1169 = 1;
      }

      v366 = *v1162;
      v7 = v1157;
      if (*v1162)
      {
        do
        {
          (*(*v366 + 3))(v366, &v1165, (v1191 >> 2) & 1);
          v366 = v366[1];
        }

        while (v366);
      }
    }

    else
    {
      CA::Render::Updater::LayerShapes::union_bounds(&v1165, &v1193, 1);
    }

    if (v1170)
    {
      v367 = vceqzq_f64(v1166);
      if ((vorrq_s8(vdupq_laneq_s64(v367, 1), v367).u64[0] & 0x8000000000000000) != 0 || (v368 = vceqq_f64(v1166, v1166), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v368), 1), v368).u64[0] & 0x8000000000000000) != 0))
      {
        v1199[0] = 0uLL;
      }

      else
      {
        v369 = vcvtmq_s64_f64(vmaxnmq_f64(v1165, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v1199[0] = vuzp1q_s32(v369, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1165, v1166), vdupq_n_s64(0x41C0000000000000uLL))), v369));
      }

      CA::shape_union(&v1170, v1199, v358);
    }

    if (v1172)
    {
      *v1172 = xmmword_183E21120;
    }

    if (!v1169)
    {
      goto LABEL_666;
    }

    if (v1169)
    {
      if (v1169 == 1)
      {
LABEL_666:
        if ((v1188.i8[0] & 0x18) != 0)
        {
          *(v346 + 19) = v295[2];
        }

        if ((v349 & 0x18) != 0)
        {
          *(v346 + 17) = v295[2];
        }

        v1173 = v1150;
        v1174 = v1159;
        v1175 = v1144;
        goto LABEL_671;
      }
    }

    else if (*(v1169 + 4) == 6)
    {
      goto LABEL_666;
    }

    CA::Shape::unref(v1169);
    v1169 = 1;
    goto LABEL_666;
  }

LABEL_671:
  v370 = v1187;
  v371 = *(v1187 + 136);
  v372 = v1161.f64[0];
  if (v371)
  {
    v373 = *(v371 + 96);
    if (v373)
    {
      if ((v1191 & 0x20) == 0)
      {
        v1041 = *(v373 + 16);
        if (v1041)
        {
          if ((v1188.i32[2] & 0x800000) == 0)
          {
            v1042 = 8 * v1041;
            v1043 = v373 + 24;
            while ((*(*v1043 + 12) & 0x40100) != 0x100 || *(*v1043 + 24) == 111)
            {
              v1043 += 8;
              v1042 -= 8;
              if (!v1042)
              {
                goto LABEL_673;
              }
            }
          }

          v1188.i64[1] |= 0x20C00000uLL;
        }
      }
    }
  }

LABEL_673:
  if ((*(*v295 + 1376) & 0x18000000000) == 0x8000000000)
  {
    v1191 |= 2u;
  }

  v374 = *&v1186;
  if (v371)
  {
    CA::Render::Updater::add_background_filters_(v295, v1162, v1187, *&v1186, &v1182, &v1165);
    v374 = *&v1186;
  }

  v375 = v374[3];
  if ((v375.i8[0] & 0x10) == 0 && (v1191 & 4) == 0)
  {
    v376 = v1166.f64[0];
    if (v1166.f64[0] >= v1166.f64[1])
    {
      v376 = v1166.f64[1];
    }

    if (v376 <= 0.0 || (v377 = vclezq_f64(v1174), (vorrq_s8(vdupq_laneq_s64(v377, 1), v377).u64[0] & 0x8000000000000000) != 0) || (v378 = vclezq_f64(v1166), (vorrq_s8(vdupq_laneq_s64(v378, 1), v378).u64[0] & 0x8000000000000000) != 0) || (v379 = vclezq_f64(vsubq_f64(vminnmq_f64(vaddq_f64(v1173, v1174), vaddq_f64(v1165, v1166)), vmaxnmq_f64(v1173, v1165))), (vorrq_s8(vdupq_laneq_s64(v379, 1), v379).u64[0] & 0x8000000000000000) != 0))
    {
      *&v375 |= 0x10uLL;
      v374[3] = v375;
    }
  }

  v380 = *(*&v276 + 136);
  if (v380)
  {
    v381 = *(v380 + 96);
    if (v381)
    {
      v382 = *(v381 + 16);
      float_key = 1.0;
      if (v382)
      {
        v384 = 8 * v382;
        v385 = (v381 + 24);
        while (1)
        {
          v386 = *v385;
          v387 = *(*v385 + 24);
          if (((v387 - 215) < 2 || v387 == 516) && (*(v386 + 12) & 0x40100) == 0x100)
          {
            break;
          }

          ++v385;
          v384 -= 8;
          if (!v384)
          {
            float_key = 1.0;
            goto LABEL_703;
          }
        }

        v388 = *(v386 + 40);
        int_key = CA::Render::KeyValueArray::get_int_key(v388, 320, 0);
        v390 = 0x4000000000000;
        if (!int_key)
        {
          v390 = 0x800000000;
        }

        v391 = v390 | v1188.i64[1];
        v1188.i64[1] |= v390;
        float_key = 1.0;
        if (!int_key)
        {
          float_key = CA::Render::KeyValueArray::get_float_key(v388, 325, 1.0);
        }

        if ((*(*v295 + 1381) & 2) != 0)
        {
          v1188.i64[1] = v391 | 0x10000000;
          v7 = v1157;
          if (v263)
          {
            v263[9].i32[1] = v295[2];
          }
        }

        else
        {
          v7 = v1157;
        }
      }

LABEL_703:
      v392 = !CA::Render::Updater::should_track_layer_headroom(v374, *(*v295 + 560)) || float_key <= 1.0;
      if (!v392)
      {
        if (v161 <= float_key)
        {
          v161 = float_key;
        }

        v1151 |= 0x10u;
        v1188.i64[1] |= 4uLL;
      }
    }
  }

  v393 = *(*&v276 + 104);
  if (v393 && *(v393 + 12) == 25)
  {
    if ((*(*v295 + 1376) & 1) == 0)
    {
      CA::Render::ImageQueue::set_visible(*(*&v276 + 104), (v375.i8[0] & 0x10) == 0);
    }

    if ((v375.i8[0] & 0x10) != 0)
    {
      CA::Render::ImageQueue::did_composite(v393);
    }

    if ((*(*v295 + 1376) & 1) == 0)
    {
      v395 = vceqzq_f64(v1166);
      v394 = vorrq_s8(vdupq_laneq_s64(v395, 1), v395).u64[0];
      v395.i64[1] = 0;
      if ((v394 & 0x8000000000000000) == 0)
      {
        v396 = vceqq_f64(v1166, v1166);
        if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v396), 1), v396).u64[0] & 0x8000000000000000) == 0)
        {
          v397 = vcvtmq_s64_f64(vmaxnmq_f64(v1165, vdupq_n_s64(0xC1BFFFFFFF000000)));
          v395 = vuzp1q_s32(v397, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1165, v1166), vdupq_n_s64(0x41C0000000000000uLL))), v397));
        }
      }

      *(*(*(v393 + 16) + 24) + 64) = v395.i32[3] * v395.i32[2];
    }
  }

  v398 = *&v1186;
  v399 = *(*&v1186 + 24);
  if ((v399.i8[0] & 0x10) != 0)
  {
    *(*&v372 + 176) = 0;
    *(*&v372 + 184) = 0;
    if ((v399.i8[0] & 0x40) != 0 && *&v398[32])
    {
      v408 = *(*&v372 + 256);
      *(v408 + 64) = 0;
      *(v408 + 72) = 0;
      *(v408 + 153) = 1;
    }

    goto LABEL_1285;
  }

  v400 = vdupq_n_s64(0xC1BFFFFFFF000000);
  v401 = vbslq_s8(vcgtq_f64(v400, v1165), v400, v1165);
  v402 = vsubq_f64(vdupq_n_s64(0x41C0000000000000uLL), v401);
  v403 = vbslq_s8(vcgtq_f64(v1166, v402), v402, v1166);
  v1165 = v401;
  v1166 = v403;
  v404 = vceqzq_f64(v403);
  if ((vorrq_s8(vdupq_laneq_s64(v404, 1), v404).u64[0] & 0x8000000000000000) != 0 || (v405 = vceqq_f64(v403, v403), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v405), 1), v405).u64[0] & 0x8000000000000000) != 0))
  {
    v1164 = 0uLL;
    v407 = 0uLL;
  }

  else
  {
    v406 = vcvtmq_s64_f64(vmaxnmq_f64(v401, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v407 = vuzp1q_s32(v406, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v401, v403), vdupq_n_s64(0x41C0000000000000uLL))), v406));
    v1164 = v407;
  }

  v409 = *(v1187 + 40);
  if ((v409 & 0x2000000000000000) != 0 && (v409 & 0xF00) != 0)
  {
    v410.i64[0] = v407.i32[0];
    v410.i64[1] = v407.i32[1];
    v411 = vcvtq_f64_s64(v410);
    v410.i64[0] = v407.i32[2];
    v410.i64[1] = v407.i32[3];
    if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(v401, v411), vceqq_f64(v403, vcvtq_f64_s64(v410)))))) & 1) != 0 && (v399.i16[0] & 0x100) == 0 && (*(*v295 + 292) & 8) == 0)
    {
      v412 = v407.i32[2];
      if (v407.i32[2] <= v407.i32[3])
      {
        v413 = v407.i32[3];
      }

      else
      {
        v413 = v407.i32[2];
      }

      if (v407.i32[2] >= v407.i32[3])
      {
        v412 = v407.i32[3];
      }

      if (v413 <= 1073741822 && v412 >= 1)
      {
        v1164 = vaddq_s32(v407, xmmword_183E20FD0);
        v414 = vclez_s32(*&vextq_s8(v1164, v1164, 8uLL));
        if (vorr_s8(v414, vdup_lane_s32(v414, 1)).u8[0])
        {
          v1164.i64[1] = 0;
        }
      }
    }
  }

  v415 = vorrq_s8(vcltzq_f64(v403), vclezq_f64(v1174));
  v416 = vorrq_s8(vdupq_laneq_s64(v415, 1), v415);
  if (v416.i64[0] < 0)
  {
    v418 = 0;
  }

  else
  {
    v416 = v1173;
    v417 = vandq_s8(vcgeq_f64(vaddq_f64(v1173, v1174), vaddq_f64(v401, v403)), vcgeq_f64(v401, v1173));
    v418 = vandq_s8(vdupq_laneq_s64(v417, 1), v417).u64[0] >> 63;
  }

  if ((v1191 & 0x10) == 0)
  {
    goto LABEL_1170;
  }

  v419 = *(*&v1186 + 256);
  if (v419 == 0.0)
  {
    v1191 &= 0xFFCFu;
    goto LABEL_1170;
  }

  os_unfair_lock_lock((*&v419 + 52));
  v420 = *(*&v419 + 56);
  os_unfair_lock_lock((v420 + 40));
  v423 = **(v1187 + 136);
  if (*(v423 + 12) != 3)
  {
    v423 = 0;
  }

  if (!(((*(v423 + 13) & 4) == 0) | v418 & 1))
  {
    v424 = vceqzq_f64(v1174);
    v425 = vorrq_s8(vdupq_laneq_s64(v424, 1), v424).u64[0];
    v426 = 0uLL;
    if ((v425 & 0x8000000000000000) == 0)
    {
      v427 = vceqq_f64(v1174, v1174);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v427), 1), v427).u64[0] & 0x8000000000000000) == 0)
      {
        v428 = vcvtmq_s64_f64(vmaxnmq_f64(v1173, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v426 = vuzp1q_s32(v428, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1173, v1174), vdupq_n_s64(0x41C0000000000000uLL))), v428));
      }
    }

    v429 = vclez_s32(v1164.u64[1]);
    if ((vpmax_u32(v429, v429).u32[0] & 0x80000000) == 0)
    {
      v430 = vextq_s8(v426, v426, 8uLL).u64[0];
      v431 = vclez_s32(v430);
      if ((vpmax_u32(v431, v431).u32[0] & 0x80000000) != 0 || (v432 = vadd_s32(*v426.i8, v430), *v426.i8 = vmax_s32(*v1164.i8, *v426.i8), v433 = vsub_s32(vmin_s32(vadd_s32(*v1164.i8, v1164.u64[1]), v432), *v426.i8), v434 = vclez_s32(v433), (vpmax_u32(v434, v434).u32[0] & 0x80000000) != 0))
      {
        v1164.i64[1] = 0;
      }

      else
      {
        v426.u64[1] = v433;
        v1164 = v426;
      }
    }
  }

  v435 = v1164;
  v436 = *v295;
  v437 = vextq_s8(v435, v435, 8uLL).u64[0];
  v438 = vclez_s32(v437);
  if ((vpmax_u32(v438, v438).u32[0] & 0x80000000) == 0)
  {
    v439 = v436[26];
    v440 = vclez_s32(v439);
    if ((vpmax_u32(v440, v440).u32[0] & 0x80000000) != 0 || (v441 = v436[25], v442 = vadd_s32(*v1164.i8, v437), *v443.i8 = vmax_s32(*v1164.i8, v441), v444 = vsub_s32(vmin_s32(v442, vadd_s32(v441, v439)), *v443.i8), v445 = vclez_s32(v444), (vpmax_u32(v445, v445).u32[0] & 0x80000000) != 0))
    {
      v435.i64[1] = 0;
    }

    else
    {
      v443.u64[1] = v444;
      v435 = v443;
    }
  }

  LODWORD(v1159.f64[0]) = v295[2];
  v1140.f64[0] = v1186;
  v446 = *(*(*&v1186 + 32) + 136);
  if (v446)
  {
    v447 = *v446;
    if (*v446 && *(*&v447 + 12) != 3)
    {
      v447 = 0.0;
    }
  }

  else
  {
    v447 = 0.0;
  }

  v1178 = v435;
  v1141.f64[0] = v447;
  if ((*(*&v447 + 12) & 0x1400) == 0x1000)
  {
    v1178 = 0uLL;
  }

  *&v1143.f64[0] = v418;
  v448 = *(v420 + 56);
  v1144 = v435;
  if (v448)
  {
    if (v448 != LODWORD(v1159.f64[0]))
    {
      goto LABEL_1151;
    }

    CA::shape_union((v420 + 544), &v1178, v422);
    v452 = v1140.f64[0];
    v453 = v1141.f64[0];
  }

  else
  {
    if (v446 && (BYTE1(xmmword_1ED4E97EC) & 1) == 0 && (v454 = *(v446 + 12)) != 0)
    {
      v455 = *(v420 + 624);
      v452 = v1140.f64[0];
      v453 = v1141.f64[0];
      if (v455 != v454)
      {
        if (v455 && atomic_fetch_add(v455 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v455 + 16))(v455);
        }

        v456 = v454 + 2;
        if (!atomic_fetch_add(v454 + 2, 1u))
        {
          v454 = 0;
          atomic_fetch_add(v456, 0xFFFFFFFF);
        }

        *(v420 + 624) = v454;
      }
    }

    else
    {
      v457 = *(v420 + 624);
      v452 = v1140.f64[0];
      v453 = v1141.f64[0];
      if (v457)
      {
        if (atomic_fetch_add(v457 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v457 + 16))(v457);
        }

        *(v420 + 624) = 0;
      }
    }

    v458 = *(v420 + 544);
    if (v458)
    {
      CA::Shape::unref(v458);
    }

    *(v420 + 56) = LODWORD(v1159.f64[0]);
    *(v420 + 64) = *(*&v453 + 32);
    *(v420 + 544) = CA::Shape::new_shape(&v1178, v421);
    *(v420 + 676) = 2139095039;
    *(v420 + 684) = 0;
    *(v420 + 689) = 0;
  }

  v459 = v1144;
  if ((*(*&v453 + 14) & 0x10) != 0)
  {
    v460 = *(v420 + 624);
    if (v460)
    {
      if (atomic_fetch_add(v460 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v460 + 16))(v460);
        v459 = v1144;
      }

      *(v420 + 624) = 0;
    }
  }

  v461 = *(*(*&v452 + 32) + 136);
  v1150.f64[0] = v419;
  v1142 = v436;
  if (!v461)
  {
    v464 = *(v420 + 624);
    if (!v464)
    {
      goto LABEL_1058;
    }

    v463 = (v420 + 624);
LABEL_1055:
    if (atomic_fetch_add(v464 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v464 + 16))(v464);
      v459 = v1144;
    }

    *v463 = 0;
    goto LABEL_1058;
  }

  v462 = *(v461 + 96);
  v463 = (v420 + 624);
  v464 = *(v420 + 624);
  if (!v462)
  {
    if (!v464)
    {
      goto LABEL_1058;
    }

    goto LABEL_1055;
  }

  if (!v464)
  {
LABEL_1058:
    v470.i32[1] = 0;
    v470.i64[1] = 0;
    v1138 = 0u;
    v1139 = 0u;
    goto LABEL_1059;
  }

  v465 = *(v462 + 16);
  v466 = v464[4];
  if (v465 >= v466)
  {
    v467 = v466;
  }

  else
  {
    v467 = v465;
  }

  if (!v467)
  {
    v470.i32[1] = 0;
    v470.i64[1] = 0;
    v1138 = 0u;
    v1139 = 0u;
LABEL_2040:
    if (atomic_fetch_add(v464 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v464 + 16))(v464);
      v459 = v1144;
    }

    *v463 = 0;
    goto LABEL_1059;
  }

  v468 = 0;
  v469 = v462 + 24;
  v470.i32[1] = 0;
  v470.i64[1] = 0;
  v1138 = 0u;
  v1139 = 0u;
  while (1)
  {
    v471 = *(v469 + 8 * v468);
    v472 = *&(*v463)[2 * v468 + 6];
    v473 = *(v471 + 24);
    if (v473 != *(v472 + 24) || ((*(v471 + 13) ^ *(v472 + 13)) & 1) != 0)
    {
      break;
    }

    v474 = *(v471 + 40);
    v475 = *(v472 + 40);
    if (!(v474 | v475))
    {
      goto LABEL_861;
    }

    if ((v474 != 0) != (v475 != 0))
    {
      goto LABEL_1957;
    }

    if (v473 > 214)
    {
      if (v473 > 496)
      {
        if (v473 > 626)
        {
          if (v473 == 627)
          {
            v504 = CA::Render::KeyValueArray::get_float_key(*(v471 + 40), 358, 1.0);
            v505 = CA::Render::KeyValueArray::get_float_key(v475, 358, 1.0);
            v506 = CA::Render::KeyValueArray::get_int_key(v474, 359, 1);
            v507 = CA::Render::KeyValueArray::get_int_key(v475, 359, 1);
            if (v504 != v505 || v506 != v507)
            {
              goto LABEL_1955;
            }

            goto LABEL_930;
          }

          if (v473 != 679)
          {
            if (v473 != 737)
            {
              goto LABEL_1957;
            }

            goto LABEL_867;
          }

LABEL_869:
          v477 = CA::Render::KeyValueArray::get_float_key(*(v471 + 40), 325, 0.5);
          v478 = 0.5;
          goto LABEL_870;
        }

        if (v473 != 497)
        {
          if (v473 != 516)
          {
            if (v473 != 540)
            {
              goto LABEL_1957;
            }

            v477 = CA::Render::KeyValueArray::get_float_key(*(v471 + 40), 325, 0.0);
            v478 = 0.0;
            goto LABEL_870;
          }

          goto LABEL_862;
        }

        goto LABEL_861;
      }

      if (v473 <= 303)
      {
        if ((v473 - 215) >= 2)
        {
          if (v473 != 280)
          {
            goto LABEL_1957;
          }

          v476 = CA::Render::KeyValueArray::get_float_key(v474, 400, 0.0);
          *v470.i64 = CA::Render::KeyValueArray::get_float_key(v475, 400, 0.0);
          if (v476 != *v470.i64)
          {
            goto LABEL_1955;
          }

          CA::Render::KeyValueArray::get_rect_key(v1199, v474, 0x165, 0, 0);
          v470 = v1199[0];
          v1138 = v1199[1];
          v1139 = v1199[0];
          goto LABEL_930;
        }

LABEL_862:
        v492 = CA::Render::KeyValueArray::get_float_key(v474, 325, 0.0);
        *v470.i64 = CA::Render::KeyValueArray::get_float_key(v475, 325, 0.0);
        if (v492 != *v470.i64)
        {
          goto LABEL_1955;
        }

        v477 = CA::Render::KeyValueArray::get_float_key(v474, 416, 1.0);
        v478 = 1.0;
        v493 = v475;
        v494 = 416;
        goto LABEL_871;
      }

      if (v473 == 304)
      {
        if (!v474)
        {
          goto LABEL_914;
        }

        v501 = *(v474 + 16);
        if (!v501)
        {
          goto LABEL_914;
        }

        v502 = 0;
        while (1)
        {
          v503 = *(v474 + 24 + 8 * v502);
          if (*(v503 + 16) == 363)
          {
            break;
          }

          if (v501 == ++v502)
          {
            goto LABEL_914;
          }
        }

        if ((v502 & 0x80000000) == 0)
        {
          v526 = *(v503 + 24);
        }

        else
        {
LABEL_914:
          v526 = 0;
        }

        if (!v475)
        {
          goto LABEL_923;
        }

        v527 = *(v475 + 16);
        if (!v527)
        {
          goto LABEL_923;
        }

        v528 = 0;
        while (1)
        {
          v529 = *(v475 + 24 + 8 * v528);
          if (*(v529 + 16) == 363)
          {
            break;
          }

          if (v527 == ++v528)
          {
            goto LABEL_923;
          }
        }

        if ((v528 & 0x80000000) == 0)
        {
          v530 = *(v529 + 24);
        }

        else
        {
LABEL_923:
          v530 = 0;
        }

        if (v526 != v530)
        {
          goto LABEL_1955;
        }

        v531 = CA::Render::KeyValueArray::get_float_key(v474, 325, 0.0);
        *v470.i64 = CA::Render::KeyValueArray::get_float_key(v475, 325, 0.0);
        if (v531 != *v470.i64)
        {
          goto LABEL_1955;
        }

        v532 = CA::Render::KeyValueArray::get_float_key(v474, 397, 0.0);
        *v470.i64 = CA::Render::KeyValueArray::get_float_key(v475, 397, 0.0);
        if (v532 != *v470.i64)
        {
          goto LABEL_1955;
        }

        LODWORD(v1137) = CA::Render::KeyValueArray::get_color_key(v474, 321, 0);
        color_key = CA::Render::KeyValueArray::get_color_key(v475, 321, 0);
        if (v1137 != color_key)
        {
          goto LABEL_1955;
        }

        v485 = CA::Render::KeyValueArray::get_color_key(v474, 322, 0);
        v519 = CA::Render::KeyValueArray::get_color_key(v475, 322, 0);
        goto LABEL_929;
      }

      if (v473 == 495)
      {
        v495 = CA::Render::KeyValueArray::get_float_key(*(v471 + 40), 325, 0.0);
        *v470.i64 = CA::Render::KeyValueArray::get_float_key(v475, 325, 0.0);
        if (v495 != *v470.i64)
        {
          goto LABEL_1955;
        }

        if (v474 && (v497 = *(v474 + 16), v497))
        {
          v498 = 0;
          v499 = (v474 + 24);
          v419 = v1150.f64[0];
          while (1)
          {
            v500 = *&v499[2 * v498];
            if (*(v500 + 16) == 436)
            {
              break;
            }

            if (v497 == ++v498)
            {
              goto LABEL_978;
            }
          }

          if ((v498 & 0x80000000) == 0)
          {
            v523 = *(v500 + 24);
            goto LABEL_979;
          }

LABEL_978:
          v523 = 0;
        }

        else
        {
          v523 = 0;
          v419 = v1150.f64[0];
        }

LABEL_979:
        if (v475)
        {
          v549 = *(v475 + 16);
          if (v549)
          {
            v550 = 0;
            while (1)
            {
              v551 = *(v475 + 24 + 8 * v550);
              if (*(v551 + 16) == 436)
              {
                break;
              }

              if (v549 == ++v550)
              {
                goto LABEL_1049;
              }
            }

LABEL_1047:
            if ((v550 & 0x80000000) == 0)
            {
              v575 = *(v551 + 24);
LABEL_1050:
              if (!CA::Render::curves_equal(v523, v575, v496))
              {
                goto LABEL_1956;
              }

LABEL_931:
              v459 = v1144;
              goto LABEL_932;
            }
          }
        }

LABEL_1049:
        v575 = 0;
        goto LABEL_1050;
      }

      if (v473 != 496)
      {
        goto LABEL_1957;
      }

      v479 = CA::Render::KeyValueArray::get_float_key(*(v471 + 40), 325, 0.0);
      *v470.i64 = CA::Render::KeyValueArray::get_float_key(v475, 325, 0.0);
      if (v479 != *v470.i64)
      {
        goto LABEL_1955;
      }

      v459 = v1144;
      if (v474 && (v480 = *(v474 + 16), v480))
      {
        v481 = 0;
        v482 = (v474 + 24);
        v419 = v1150.f64[0];
        while (1)
        {
          v483 = *&v482[2 * v481];
          if (*(v483 + 16) == 363)
          {
            break;
          }

          if (v480 == ++v481)
          {
            goto LABEL_987;
          }
        }

        if ((v481 & 0x80000000) == 0)
        {
          v524 = *(v483 + 24);
          goto LABEL_988;
        }

LABEL_987:
        v524 = 0;
      }

      else
      {
        v524 = 0;
        v419 = v1150.f64[0];
      }

      if (!v475)
      {
        goto LABEL_996;
      }

      v552 = *(v475 + 16);
      if (!v552)
      {
        goto LABEL_996;
      }

LABEL_988:
      v553 = 0;
      while (1)
      {
        v554 = *(v475 + 24 + 8 * v553);
        if (*(v554 + 16) == 363)
        {
          break;
        }

        if (v552 == ++v553)
        {
          goto LABEL_996;
        }
      }

      if ((v553 & 0x80000000) == 0)
      {
        v555 = *(v554 + 24);
      }

      else
      {
LABEL_996:
        v555 = 0;
      }

      if (v524 != v555)
      {
        break;
      }
    }

    else
    {
      if (v473 <= 109)
      {
        if (v473 > 103)
        {
          if (v473 != 104 && v473 != 106)
          {
            if (v473 != 109)
            {
              goto LABEL_1957;
            }

            v484 = CA::Render::KeyValueArray::get_float_key(*(v471 + 40), 326, 0.0);
            *v470.i64 = CA::Render::KeyValueArray::get_float_key(v475, 326, 0.0);
            if (v484 != *v470.i64)
            {
LABEL_1955:
              v419 = v1150.f64[0];
LABEL_1956:
              v459 = v1144;
              break;
            }

            v485 = CA::Render::KeyValueArray::get_int_key(v474, 384, 0);
            v486 = v475;
            v487 = 384;
LABEL_902:
            v519 = CA::Render::KeyValueArray::get_int_key(v486, v487, 0);
LABEL_929:
            if (v485 != v519)
            {
              goto LABEL_1955;
            }

LABEL_930:
            v419 = v1150.f64[0];
            goto LABEL_931;
          }

LABEL_864:
          v477 = CA::Render::KeyValueArray::get_float_key(*(v471 + 40), 325, 1.0);
          v478 = 1.0;
LABEL_870:
          v493 = v475;
          v494 = 325;
LABEL_871:
          *v470.i64 = CA::Render::KeyValueArray::get_float_key(v493, v494, v478);
          if (v477 != *v470.i64)
          {
            goto LABEL_1955;
          }

          goto LABEL_930;
        }

        if (v473 != 57)
        {
          if (v473 != 96)
          {
            if (v473 != 97)
            {
              goto LABEL_1957;
            }

LABEL_867:
            v419 = v1150.f64[0];
            if (v471 != v472)
            {
              break;
            }

            goto LABEL_932;
          }

          v1136 = v469;
          v1199[0] = 0uLL;
          vec2_key = CA::Render::KeyValueArray::get_vec2_key(v474, 401, v1199);
          v511 = v510;
          v1193 = 0uLL;
          *v470.i64 = CA::Render::KeyValueArray::get_vec2_key(v475, 401, &v1193);
          if (vec2_key != *v470.i64 || v511 != *v451.i64)
          {
            goto LABEL_2029;
          }

          memset(buf, 0, sizeof(buf));
          v512 = CA::Render::KeyValueArray::get_vec2_key(v474, 382, buf);
          v514 = v513;
          v1179[0] = 0uLL;
          *v470.i64 = CA::Render::KeyValueArray::get_vec2_key(v475, 382, v1179);
          if (v512 != *v470.i64 || v514 != *v451.i64)
          {
            goto LABEL_2029;
          }

          v1176 = 0uLL;
          v516 = CA::Render::KeyValueArray::get_vec2_key(v474, 344, &v1176);
          v518 = v517;
          v1192[0] = 0uLL;
          *v470.i64 = CA::Render::KeyValueArray::get_vec2_key(v475, 344, v1192);
          if (v516 != *v470.i64)
          {
            goto LABEL_2029;
          }

          v469 = v1136;
          if (v518 != *v451.i64)
          {
            goto LABEL_1955;
          }

          goto LABEL_930;
        }

LABEL_861:
        v419 = v1150.f64[0];
        goto LABEL_932;
      }

      if (v473 > 116)
      {
        if (v473 > 176)
        {
          if (v473 != 177)
          {
            if (v473 != 202)
            {
LABEL_1957:
              v419 = v1150.f64[0];
              break;
            }

            goto LABEL_867;
          }

          if (!v474)
          {
            goto LABEL_936;
          }

          v520 = *(v474 + 16);
          if (!v520)
          {
            goto LABEL_936;
          }

          v521 = 0;
          while (1)
          {
            v522 = *(v474 + 24 + 8 * v521);
            if (*(v522 + 16) == 402)
            {
              break;
            }

            if (v520 == ++v521)
            {
              goto LABEL_936;
            }
          }

          if ((v521 & 0x80000000) == 0)
          {
            v534 = *(v522 + 24);
          }

          else
          {
LABEL_936:
            v534 = 0;
          }

          if (!v475)
          {
            goto LABEL_945;
          }

          v535 = *(v475 + 16);
          if (!v535)
          {
            goto LABEL_945;
          }

          v536 = 0;
          while (1)
          {
            v537 = *(v475 + 24 + 8 * v536);
            if (*(v537 + 16) == 402)
            {
              break;
            }

            if (v535 == ++v536)
            {
              goto LABEL_945;
            }
          }

          if ((v536 & 0x80000000) == 0)
          {
            v538 = *(v537 + 24);
          }

          else
          {
LABEL_945:
            v538 = 0;
          }

          if (!CA::Render::curves_equal(v534, v538, v450))
          {
            goto LABEL_1955;
          }

          if (!v474)
          {
            goto LABEL_1001;
          }

          v540 = *(v474 + 16);
          if (!v540)
          {
            goto LABEL_1001;
          }

          v541 = 0;
          while (1)
          {
            v542 = *(v474 + 24 + 8 * v541);
            if (*(v542 + 16) == 383)
            {
              break;
            }

            if (v540 == ++v541)
            {
              goto LABEL_1001;
            }
          }

          if ((v541 & 0x80000000) == 0)
          {
            v556 = *(v542 + 24);
          }

          else
          {
LABEL_1001:
            v556 = 0;
          }

          if (!v475)
          {
            goto LABEL_1010;
          }

          v557 = *(v475 + 16);
          if (!v557)
          {
            goto LABEL_1010;
          }

          v558 = 0;
          while (1)
          {
            v559 = *(v475 + 24 + 8 * v558);
            if (*(v559 + 16) == 383)
            {
              break;
            }

            if (v557 == ++v558)
            {
              goto LABEL_1010;
            }
          }

          if ((v558 & 0x80000000) == 0)
          {
            v560 = *(v559 + 24);
          }

          else
          {
LABEL_1010:
            v560 = 0;
          }

          if (!CA::Render::curves_equal(v556, v560, v539))
          {
            goto LABEL_1955;
          }

          if (!v474)
          {
            goto LABEL_1020;
          }

          v562 = *(v474 + 16);
          if (!v562)
          {
            goto LABEL_1020;
          }

          v563 = 0;
          while (1)
          {
            v564 = *(v474 + 24 + 8 * v563);
            if (*(v564 + 16) == 345)
            {
              break;
            }

            if (v562 == ++v563)
            {
              goto LABEL_1020;
            }
          }

          if ((v563 & 0x80000000) == 0)
          {
            v565 = *(v564 + 24);
          }

          else
          {
LABEL_1020:
            v565 = 0;
          }

          if (!v475)
          {
            goto LABEL_1029;
          }

          v566 = *(v475 + 16);
          if (!v566)
          {
            goto LABEL_1029;
          }

          v567 = 0;
          while (1)
          {
            v568 = *(v475 + 24 + 8 * v567);
            if (*(v568 + 16) == 345)
            {
              break;
            }

            if (v566 == ++v567)
            {
              goto LABEL_1029;
            }
          }

          if ((v567 & 0x80000000) == 0)
          {
            v569 = *(v568 + 24);
          }

          else
          {
LABEL_1029:
            v569 = 0;
          }

          if (!CA::Render::curves_equal(v565, v569, v561))
          {
            goto LABEL_1955;
          }

          if (v474 && (v570 = *(v474 + 16), v570))
          {
            v571 = 0;
            v572 = (v474 + 24);
            v419 = v1150.f64[0];
            while (1)
            {
              v573 = *&v572[2 * v571];
              if (*(v573 + 16) == 324)
              {
                break;
              }

              if (v570 == ++v571)
              {
                goto LABEL_1040;
              }
            }

            if ((v571 & 0x80000000) == 0)
            {
              v523 = *(v573 + 24);
              goto LABEL_1041;
            }

LABEL_1040:
            v523 = 0;
          }

          else
          {
            v523 = 0;
            v419 = v1150.f64[0];
          }

LABEL_1041:
          if (v475)
          {
            v574 = *(v475 + 16);
            if (v574)
            {
              v550 = 0;
              while (1)
              {
                v551 = *(v475 + 24 + 8 * v550);
                if (*(v551 + 16) == 324)
                {
                  goto LABEL_1047;
                }

                if (v574 == ++v550)
                {
                  goto LABEL_1049;
                }
              }
            }
          }

          goto LABEL_1049;
        }

        if (v473 == 117)
        {
          goto LABEL_864;
        }

        if (v473 != 125)
        {
          goto LABEL_1957;
        }

        goto LABEL_869;
      }

      if (v473 == 110)
      {
        goto LABEL_861;
      }

      v1137 = *(v472 + 40);
      if (v473 == 111)
      {
        v485 = CA::Render::KeyValueArray::get_int_key(v474, 410, 0);
        v486 = v1137;
        v487 = 410;
        goto LABEL_902;
      }

      if (v473 != 113)
      {
        goto LABEL_1957;
      }

      v1136 = v469;
      if (v474)
      {
        v488 = *(v474 + 16);
        v489 = v1137;
        if (!v488)
        {
          goto LABEL_955;
        }

        v490 = 0;
        while (1)
        {
          v491 = *(v474 + 24 + 8 * v490);
          if (*(v491 + 16) == 364)
          {
            break;
          }

          if (v488 == ++v490)
          {
            goto LABEL_955;
          }
        }

        if ((v490 & 0x80000000) != 0)
        {
LABEL_955:
          v525 = 0;
        }

        else
        {
          v525 = *(v491 + 24);
        }
      }

      else
      {
        v525 = 0;
        v489 = v1137;
      }

      if (!v489)
      {
        goto LABEL_964;
      }

      v543 = *(v489 + 4);
      if (!v543)
      {
        goto LABEL_964;
      }

      v544 = 0;
      while (1)
      {
        v545 = *(v489 + v544 + 3);
        if (*(v545 + 16) == 364)
        {
          break;
        }

        if (v543 == ++v544)
        {
          goto LABEL_964;
        }
      }

      if ((v544 & 0x80000000) == 0)
      {
        v546 = *(v545 + 24);
      }

      else
      {
LABEL_964:
        v546 = 0;
      }

      v547 = CA::Render::KeyValueArray::get_int_key(v474, 398, 0) != 0;
      if (v547 == (CA::Render::KeyValueArray::get_int_key(v1137, 398, 0) == 0) || v525 == 0)
      {
LABEL_2029:
        v419 = v1150.f64[0];
LABEL_2030:
        v459 = v1144;
        v469 = v1136;
        break;
      }

      v419 = v1150.f64[0];
      if (*(v525 + 12) != 62 || !v546 || *(v546 + 12) != 62 || *(v525 + 16) != 20 || *(v546 + 16) != 20 || memcmp((v525 + 24), (v546 + 24), 0xA0uLL))
      {
        goto LABEL_2030;
      }

      v459 = v1144;
      v469 = v1136;
    }

LABEL_932:
    v468 = (v468 + 1);
    if (v468 == v467)
    {
      v468 = v467;
      break;
    }
  }

  _CF = BYTE14(xmmword_1ED4E982C) != 1 || v468 >= v467;
  if (!_CF)
  {
    v1111 = *(v469 + 8 * v468);
    v1112 = *&(*v463)[2 * v468 + 6];
    memset(v1199, 0, 24);
    X::Stream::printf(v1199, "\nFilter A:");
    X::Stream::printf(v1199, "\n%*s", 2, "");
    (*(*v1111 + 40))(v1111, v1199, 1, 0);
    X::Stream::printf(v1199, "\nFilter B:");
    X::Stream::printf(v1199, "\n%*s", 2, "");
    (*(*v1112 + 40))(v1112, v1199, 1, 0);
    if (x_log_get_render(void)::once[0] != -1)
    {
      dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
    }

    v1113 = x_log_get_render(void)::log;
    if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
    {
      v1118 = x_stream_get(v1199);
      LODWORD(v1193.f64[0]) = 136315138;
      *(v1193.f64 + 4) = v1118;
      _os_log_error_impl(&dword_183AA6000, v1113, OS_LOG_TYPE_ERROR, "Filter merging failed:%s", &v1193, 0xCu);
    }

    if (v1199[0].i64[0])
    {
      free(v1199[0].i64[0]);
    }

    v419 = v1150.f64[0];
    v452 = v1140.f64[0];
    v459 = v1144;
  }

  v464 = *v463;
  if (!v468)
  {
    v453 = v1141.f64[0];
    if (!v464)
    {
      goto LABEL_1059;
    }

    goto LABEL_2040;
  }

  v1090 = v464[4];
  if (v468 == v1090)
  {
    v453 = v1141.f64[0];
    goto LABEL_1059;
  }

  if (v1090 >= v468)
  {
    v1091 = CA::Render::Array::new_array(v468, v464 + 6, 1, v464[3] >> 8);
    v459 = v1144;
    v1092 = v1091;
    v464 = *v463;
    *v463 = v1092;
    v453 = v1141.f64[0];
    if (v464)
    {
      goto LABEL_2046;
    }
  }

  else
  {
    *v463 = 0;
    v453 = v1141.f64[0];
LABEL_2046:
    if (atomic_fetch_add(v464 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v464 + 16))(v464);
      v459 = v1144;
    }
  }

LABEL_1059:
  v577 = *(v420 + 72);
  v576 = *(v420 + 80);
  v578 = v576 - v577;
  _ZF = v576 == v577;
  v579 = 0xAAAAAAAAAAAAAAABLL * ((v576 - v577) >> 6);
  if (_ZF)
  {
LABEL_1067:
    X::small_vector_base<CA::Render::BackdropGroup::Item>::resize(v420 + 72, v579 + 1);
    v581 = *(v420 + 72);
    if (*(v420 + 80) - v581 <= v578)
    {
      __assert_rtn("operator[]", "x-small-vector.h", 91, "pos < size () && Out of bounds access");
    }

    v577 = v581 + v578;
    *v577 = *(*&v419 + 24);
    v470 = *(*&v419 + 32);
    *(v577 + 8) = v470;
    *(v420 + 12) |= 0x400u;
    v459 = v1144;
  }

  else
  {
    if (v579 <= 1)
    {
      v580 = 1;
    }

    else
    {
      v580 = v579;
    }

    while (*v577 != *(*&v419 + 24) || *(*&v419 + 32) != *(v577 + 8) || *(v577 + 16) != *(*&v419 + 40))
    {
      v577 += 192;
      if (!--v580)
      {
        goto LABEL_1067;
      }
    }
  }

  v582 = *(*(*&v452 + 32) + 136);
  if (v582)
  {
    v583 = *(*&v453 + 12);
    if ((v583 & 0x200) != 0)
    {
      v585 = *(v582 + 96);
      if (v585 && (v586 = *(v585 + 16), v586))
      {
        v587 = v585 + 24;
        v588 = 8 * v586 - 8;
        do
        {
          if ((*(*v587 + 12) & 0x40100) == 0x100)
          {
            v589 = CAAtomIndexInArray(25, CA::Render::Filter::is_one_to_one(void)const::atoms, *(*v587 + 24));
            v459 = v1144;
            v584 = v589 != -1;
          }

          else
          {
            v584 = 1;
          }

          if (!v584)
          {
            break;
          }

          v587 += 8;
          v590 = v588;
          v588 -= 8;
        }

        while (v590);
        v419 = v1150.f64[0];
        v452 = v1140.f64[0];
      }

      else
      {
        LOBYTE(v584) = 1;
      }
    }

    else
    {
      LOBYTE(v584) = 0;
    }
  }

  else
  {
    v583 = *(*&v453 + 12);
    v584 = (v583 >> 9) & 1;
  }

  *(v420 + 689) |= (v583 & 0x400) >> 10;
  v295 = v1163;
  if ((*(*&v453 + 13) & 0x40) == 0)
  {
    goto LABEL_1104;
  }

  LOBYTE(v584) = 0;
  if (v452 == 0.0 || *(v420 + 632))
  {
    goto LABEL_1104;
  }

  v591 = v452;
  while (2)
  {
    v592 = *(*(*&v591 + 32) + 136);
    if (!v592)
    {
      *(v420 + 632) = 0;
LABEL_1091:
      v591 = *(*&v591 + 88);
      if (v591 == 0.0)
      {
        LOBYTE(v584) = 0;
        goto LABEL_1104;
      }

      continue;
    }

    break;
  }

  v593 = *(v592 + 112);
  *(v420 + 632) = v593;
  if (!v593)
  {
    goto LABEL_1091;
  }

  v594 = (v593 + 8);
  if (!atomic_fetch_add(v594, 1u))
  {
    atomic_fetch_add(v594, 0xFFFFFFFF);
  }

  v595 = *(*&v591 + 32);
  *(v420 + 640) = *(v595 + 72);
  v596 = *(v595 + 88);
  *(v420 + 656) = v596;
  v597 = *(v595 + 136);
  if (v597)
  {
    LODWORD(v596) = *(v597 + 308);
  }

  else
  {
    LOBYTE(v596) = *(v595 + 39);
    *&v596 = v596;
  }

  *v470.i64 = CA::BoundsImpl::scale((v420 + 640), *&v596, *&v596);
  LOBYTE(v584) = 0;
  v459 = v1144;
LABEL_1104:
  *(v577 + 24) = v452;
  if (SLODWORD(v459.f64[1]) <= SHIDWORD(v459.f64[1]))
  {
    v598 = HIDWORD(v459.f64[1]);
  }

  else
  {
    v598 = LODWORD(v459.f64[1]);
  }

  v470.i32[0] = 1073741822;
  v451.i32[0] = v598;
  *(v577 + 184) = LODWORD(v1159.f64[0]);
  v599.i64[0] = SLODWORD(v459.f64[0]);
  v599.i64[1] = SHIDWORD(v459.f64[0]);
  v600 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v451, v470), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v599));
  v601 = SLODWORD(v459.f64[1]);
  v602 = SHIDWORD(v459.f64[1]);
  v603 = v1138;
  *(v577 + 64) = v1139;
  *(v577 + 80) = v603;
  if (v598 > 1073741822)
  {
    v601 = 1.79769313e308;
    v602 = 1.79769313e308;
  }

  *(v577 + 96) = v600;
  *(v577 + 112) = v601;
  *(v577 + 120) = v602;
  if ((*(*&v453 + 12) & 0x1400) == 0x1000)
  {
    *(v577 + 32) = 0u;
    *(v577 + 48) = 0u;
  }

  else
  {
    (*(**&v453 + 184))(COERCE_FLOAT64_T(*&v453), *(*&v452 + 32), v577 + 32, 0);
  }

  v604 = *(*&v452 + 32);
  v605 = *(v604 + 16);
  *(v577 + 176) = *(v604 + 32);
  *(v577 + 160) = v605;
  *(v577 + 180) = v584;
  v606 = *(*&v452 + 32);
  v607 = *(v606 + 136);
  if (v607)
  {
    v608 = *(v607 + 96);
    if (v608)
    {
      v609 = *(v608 + 16);
      if (v609)
      {
        v610 = 8 * v609;
        v611 = v608 + 24;
        do
        {
          if (*(*v611 + 24) == 283)
          {
            v612 = *(*v611 + 40);
            glass_filter_shadow_blur_radius = CA::Render::get_glass_filter_shadow_blur_radius(v612, v449);
            glass_filter_bleed_blur_radius = CA::Render::get_glass_filter_bleed_blur_radius(v612, v614);
            v616 = CA::Render::KeyValueArray::get_float_key(v612, 356, 30.0);
            v617 = *(v420 + 680);
            if (v617 < glass_filter_shadow_blur_radius)
            {
              v617 = glass_filter_shadow_blur_radius;
            }

            if (v617 < glass_filter_bleed_blur_radius)
            {
              v617 = glass_filter_bleed_blur_radius;
            }

            if (v617 < v616)
            {
              v617 = v616;
            }

            *(v420 + 680) = v617;
            if (CA::Render::KeyValueArray::get_float_key(v612, 428, 1.0) <= 0.0 && CA::Render::KeyValueArray::get_float_key(v612, 343, 1.0) <= 0.0 && CA::Render::KeyValueArray::get_float_key(v612, 351, 1.0) == 1.0 && CA::Render::KeyValueArray::get_float_key(v612, 353, 0.1) == 1.0 && CA::Render::KeyValueArray::get_float_key(v612, 354, 0.1) == 1.0 && CA::Render::KeyValueArray::get_float_key(v612, 355, 0.4) == 1.0)
            {
              *(v420 + 684) = 1;
            }

            else
            {
              v618 = *(v420 + 676);
              if (v618 > glass_filter_shadow_blur_radius)
              {
                v618 = glass_filter_shadow_blur_radius;
              }

              if (v618 <= glass_filter_bleed_blur_radius)
              {
                v619 = v618;
              }

              else
              {
                v619 = glass_filter_bleed_blur_radius;
              }

              *(v420 + 676) = v619;
              v620 = CA::Render::KeyValueArray::get_float_key(v612, 354, 0.4);
              if (v619 <= v620)
              {
                v616 = v619;
              }

              else
              {
                v616 = v620;
              }
            }

            *(v420 + 676) = v616;
            v419 = v1150.f64[0];
            v621 = *(*&v1150.f64[0] + 56);
            if (*(v621 + 60) != LODWORD(v1159.f64[0]))
            {
              *(v621 + 60) = LODWORD(v1159.f64[0]);
              ++*(v1142 + 202);
            }
          }

          v611 += 8;
          v610 -= 8;
        }

        while (v610);
      }
    }
  }

  v7 = v1157;
  v372 = v1161.f64[0];
  if (*(v606 + 72) == *(v577 + 64) && *(v606 + 80) == *(v577 + 72) && *(v606 + 88) == *(v577 + 80) && *(v606 + 96) == *(v577 + 88))
  {
    if (BYTE11(xmmword_1ED4E97DC) == 1)
    {
      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v1109 = x_log_get_render(void)::log;
      v1110 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT);
      v295 = v1163;
      v7 = v1157;
      v372 = v1161.f64[0];
      if (v1110)
      {
        v1199[0].i16[0] = 0;
        _os_log_impl(&dword_183AA6000, v1109, OS_LOG_TYPE_DEFAULT, "Filter merging aborted: layer.bounds == blur.inputBounds\n", v1199, 2u);
      }
    }

    v622 = *(v420 + 624);
    v419 = v1150.f64[0];
    if (v622)
    {
      if (atomic_fetch_add(v622 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v622 + 16))(v622);
      }

      *(v420 + 624) = 0;
    }
  }

LABEL_1151:
  if ((*(*v295 + 1377) & 8) != 0)
  {
    v623 = *(v420 + 48);
    if (v623)
    {
      v1188.i64[1] |= *(v623 + 16) << 47;
    }
  }

  v624 = v1164.i32[0];
  v276 = v1160.f64[0];
  LOBYTE(v418) = LOBYTE(v1143.f64[0]);
  if (*(*&v419 + 64) == v1164.i64[0] && (v625 = *(*&v419 + 72), *(*&v419 + 72) == v1164.i64[1]))
  {
    if ((LOBYTE(v1143.f64[0]) & 1) == 0 && (v1188.i8[3] & 0x10) != 0)
    {
      *(v420 + 12) |= 0x400u;
    }
  }

  else
  {
    v626 = *(v1187 + 136);
    if (v626)
    {
      v627 = *v626;
      if (*v626)
      {
        memset(v1199, 0, 32);
        (*(*v627 + 184))(v627);
        *&v1193.f64[0] = &unk_1EF1FBD80;
        *&v1193.f64[1] = 1;
        *&v1194.f64[0] = v1199;
        CA::Render::LayerNode::MapGeometry::map(&v1193, *&v372, 0);
        v628 = vceqzq_f64(v1199[1]);
        if ((vorrq_s8(vdupq_laneq_s64(v628, 1), v628).u64[0] & 0x8000000000000000) != 0)
        {
          v631 = 0uLL;
        }

        else
        {
          v629 = vceqq_f64(v1199[1], v1199[1]);
          v630 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v629), 1), v629).u64[0];
          v631 = 0uLL;
          if ((v630 & 0x8000000000000000) == 0)
          {
            v632 = vcvtmq_s64_f64(vmaxnmq_f64(v1199[0], vdupq_n_s64(0xC1BFFFFFFF000000)));
            v631 = vuzp1q_s32(v632, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1199[0], v1199[1]), vdupq_n_s64(0x41C0000000000000uLL))), v632));
          }
        }

        *(*&v419 + 80) = v631;
        v624 = v1164.i32[0];
        LOBYTE(v418) = LOBYTE(v1143.f64[0]);
      }
    }

    v633 = v1164.i32[1];
    *(*&v419 + 64) = v624;
    *(*&v419 + 68) = v633;
    v634 = v1164.i32[2];
    *(*&v419 + 72) = v1164.i64[1];
    *(v420 + 12) |= 0x400u;
    *(v295 + 50) = 1;
    v625 = v634;
  }

  v635 = v1164.i32[3];
  if (v625 < v1164.i32[3])
  {
    v635 = v625;
  }

  *(*&v419 + 153) = v635 < 1;
  os_unfair_lock_unlock((v420 + 40));
  os_unfair_lock_unlock((*&v419 + 52));
  v263 = v1158;
LABEL_1170:
  if ((v418 & 1) == 0)
  {
    v636 = v1174;
    v637 = vceqzq_f64(v1174);
    v638 = vorrq_s8(vdupq_laneq_s64(v637, 1), v637);
    v639 = 0uLL;
    if ((v638.i64[0] & 0x8000000000000000) == 0)
    {
      v640 = vceqq_f64(v1174, v1174);
      v638 = vornq_s8(vdupq_laneq_s64(vmvnq_s8(v640), 1), v640);
      if ((v638.i64[0] & 0x8000000000000000) == 0)
      {
        v416 = vdupq_n_s64(0x41C0000000000000uLL);
        v638 = vcvtmq_s64_f64(vmaxnmq_f64(v1173, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v636 = vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1173, v1174), v416)), v638);
        v639 = vuzp1q_s32(v638, v636);
      }
    }

    if ((*(*&v276 + 13) & 4) != 0)
    {
      v1159 = v639;
      if (v1164.i32[2] <= v1164.i32[3])
      {
        v1076 = v1164.i32[3];
      }

      else
      {
        v1076 = v1164.i32[2];
      }

      v636.i32[0] = 1073741822;
      v638.i32[0] = v1076;
      v1077.i64[0] = v1164.i32[0];
      v1077.i64[1] = v1164.i32[1];
      v1078 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v638, v636), 0), vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v1077));
      v1079 = v1164.i32[2];
      v1080 = v1164.i32[3];
      if (v1076 > 1073741822)
      {
        v1079 = 1.79769313e308;
        v1080 = 1.79769313e308;
      }

      v1193 = v1078;
      v1194.f64[0] = v1079;
      v1194.f64[1] = v1080;
      v1081 = *(*&v276 + 88);
      v1082 = *(*&v276 + 96);
      if (v1081 >= v1082)
      {
        v1083 = *(*&v276 + 96);
      }

      else
      {
        v1083 = *(*&v276 + 88);
      }

      if (v1083 > 0.0)
      {
        v1199[0] = *(*&v1160.f64[0] + 72);
        *v1199[1].i64 = v1081;
        *&v1199[1].i64[1] = v1082;
        CA::Rect::apply_transform(v1199[0].i64, v1162 + 8);
        CA::BoundsImpl::intersect(&v1193, v1199[0], v1199[1]);
        v1078 = v1193;
      }

      memset(buf, 0, sizeof(buf));
      CA::Bounds::set_exterior(buf, v232, v1078, v1194);
      CA::BoundsImpl::intersect(&v1164, *&v1159.f64[0], *&vextq_s8(v1159, v1159, 8uLL));
      v1085 = *&buf[8];
      v1084 = *&buf[12];
      if ((*&buf[12] * *&buf[8]) * 0.9 >= (v1164.i32[3] * v1164.i32[2]))
      {
        if (BYTE4(xmmword_1ED4E982C) == 1)
        {
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v1119 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_INFO))
          {
            v1120 = v1158;
            if (v1158)
            {
              v1120 = v1158[11].i32[1];
            }

            v1199[0].i32[0] = 67112192;
            v1199[0].i32[1] = v1120;
            v1199[0].i16[4] = 1024;
            *(&v1199[0].i32[2] + 2) = *buf;
            v1199[0].i16[7] = 1024;
            v1199[1].i32[0] = *&buf[4];
            v1199[1].i16[2] = 1024;
            *(&v1199[1].i32[1] + 2) = v1085;
            v1199[1].i16[5] = 1024;
            v1199[1].i32[3] = v1084;
            v1199[2].i16[0] = 1024;
            *(v1199[2].i32 + 2) = v1164.i32[0];
            v1199[2].i16[3] = 1024;
            v1199[2].i32[2] = v1164.i32[1];
            v1199[2].i16[6] = 1024;
            *(&v1199[2].i32[3] + 2) = v1164.i32[2];
            v1199[3].i16[1] = 1024;
            v1199[3].i32[1] = v1164.i32[3];
            v1199[3].i16[4] = 1024;
            *(&v1199[3].i32[2] + 2) = LODWORD(v1159.f64[0]);
            v1199[3].i16[7] = 1024;
            v1199[4].i32[0] = HIDWORD(v1159.f64[0]);
            v1199[4].i16[2] = 1024;
            *(&v1199[4].i32[1] + 2) = LODWORD(v1159.f64[1]);
            v1199[4].i16[5] = 1024;
            v1199[4].i32[3] = HIDWORD(v1159.f64[1]);
            _os_log_impl(&dword_183AA6000, v1119, OS_LOG_TYPE_INFO, "Slot <%d> [%d %d %d %d] clipped to[%d %d %d %d] by [%d %d %d %d]", v1199, 0x50u);
          }
        }

        *(*&v1161.f64[0] + 24) |= 0x40000uLL;
      }

      v295 = v1163;
      v7 = v1157;
      v263 = v1158;
      v372 = v1161.f64[0];
      v276 = v1160.f64[0];
    }

    else
    {
      v641 = vclez_s32(v1164.u64[1]);
      if ((vpmax_u32(v641, v641).u32[0] & 0x80000000) == 0)
      {
        v642 = vextq_s8(v639, v639, 8uLL).u64[0];
        v643 = vclez_s32(v642);
        if ((vpmax_u32(v643, v643).u32[0] & 0x80000000) != 0 || (*v416.i8 = vadd_s32(*v1164.i8, v1164.u64[1]), *v644.i8 = vmax_s32(*v1164.i8, *v639.i8), v645 = vsub_s32(vmin_s32(*v416.i8, vadd_s32(*v639.i8, v642)), *v644.i8), v646 = vclez_s32(v645), (vpmax_u32(v646, v646).u32[0] & 0x80000000) != 0))
        {
          v1164.i64[1] = 0;
        }

        else
        {
          v644.u64[1] = v645;
          v1164 = v644;
        }
      }
    }
  }

  if (v1153.i32[0])
  {
    v1049.i64[1] = *&v1166.f64[1];
    v1199[0] = v1165;
    v1199[1] = v1166;
    v1048 = *(*&v276 + 88);
    v1049.i64[0] = *(*&v276 + 96);
    if (v1048 >= *v1049.i64)
    {
      v1050 = *(*&v276 + 96);
    }

    else
    {
      v1050 = *(*&v276 + 88);
    }

    if (v1050 > 0.0)
    {
      v1193 = *(*&v276 + 72);
      v1194.f64[0] = v1048;
      *&v1194.f64[1] = v1049.i64[0];
      CA::Rect::apply_transform(v1193.f64, v1162 + 8);
      CA::BoundsImpl::intersect(v1199, v1193, v1194);
    }

    v1051 = *v295;
    if (*(*v295 + 216) || *(v1051 + 55) || *(v1051 + 56) || *(v1051 + 57))
    {
      v1052 = v1051[27];
      v1049.i64[0] = v1051[28];
      v1053 = v1049.i32[1];
      v1054.i64[0] = v1052;
      v1054.i64[1] = SHIDWORD(v1052);
      v1055 = v1054;
      v1054.i64[0] = v1049.i32[0];
      v1054.i64[1] = v1049.i32[1];
      v1056 = v1054;
      if (v1049.i32[0] > v1049.i32[1])
      {
        v1053 = v1051[28];
      }

      v1049.i32[0] = v1053;
      v416.i32[0] = 1073741822;
      v1159 = vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL);
      v1057 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v1049, v416), 0), v1159, vcvtq_f64_s64(v1055));
      v1058 = vcvtq_f64_s64(v1056);
      v1059 = vdup_n_s32(v1053 > 1073741822);
      v1060.i64[0] = v1059.u32[0];
      v1060.i64[1] = v1059.u32[1];
      v1153 = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      if (CA::BoundsImpl::contains(v1057, vbslq_s8(vcltzq_s64(vshlq_n_s64(v1060, 0x3FuLL)), v1153, v1058), v1199[0], v1199[1]))
      {
        v1063 = v1051[25];
        v1061.i64[0] = v1051[26];
        v1064.i64[0] = v1063;
        v1064.i64[1] = SHIDWORD(v1063);
        v1065 = vcvtq_f64_s64(v1064);
        v1066 = v1061.i32[1];
        v1064.i64[0] = v1061.i32[0];
        v1064.i64[1] = v1061.i32[1];
        v1067 = v1064;
        if (v1061.i32[0] > v1061.i32[1])
        {
          v1066 = v1051[26];
        }

        v1061.i32[0] = v1066;
        v1062.i32[0] = 1073741822;
        v1068 = vbslq_s8(vdupq_lane_s32(*&vcgtq_s32(v1061, v1062), 0), v1159, v1065);
        v1069 = vcvtq_f64_s64(v1067);
        v1070 = vdup_n_s32(v1066 > 1073741822);
        v1071.i64[0] = v1070.u32[0];
        v1071.i64[1] = v1070.u32[1];
        CA::BoundsImpl::intersect(v1199, v1068, vbslq_s8(vcltzq_s64(vshlq_n_s64(v1071, 0x3FuLL)), v1153, v1069));
      }
    }

    v1072 = (v1164.i32[3] * v1164.i32[2]) / (*&v1199[1].i64[1] * *v1199[1].i64);
    v372 = v1161.f64[0];
    v1073 = *(*&v1161.f64[0] + 24);
    if (v1072 < 1.0)
    {
      v1073 |= 0x40000uLL;
      v1074 = 1.0 - v1072;
      if (v1074 > 1.0)
      {
        v1074 = 1.0;
      }

      if (v1074 < 0.0)
      {
        v1074 = 0.0;
      }

      *(*&v1161.f64[0] + 20) = v1074;
    }

    *(*&v372 + 24) = v1073 | 0x4000000000;
    v295 = v1163;
    v7 = v1157;
    v263 = v1158;
    v276 = v1160.f64[0];
  }

  v647 = *(v1162 + 48);
  if ((!v647 || (*(v647 + 24) & 0x2000000020) == 0) && (v1191 & 0x10) == 0 && (v1188.i8[13] & 0x40) == 0 && (*(v1162 + 77) & 0x40) == 0 && !(v1191 & 0x200 | *(*&v276 + 13) & 4) && (*(*v295 + 1380) & 0x80) == 0)
  {
    v648 = *(v7 + 56);
    if (v648)
    {
      if (CA::Shape::intersects(v648, &v1164))
      {
        CA::Bounds::subtract_exterior(v1164.i32, *(v7 + 56));
        v1188.i64[1] |= 0x40uLL;
      }
    }
  }

  if (v263)
  {
    CA::BoundsImpl::Union(v263 + 15, *v1164.i8, v1164.u64[1]);
  }

  v649 = v1164;
  *(*&v372 + 176) = v1164;
  if ((v1188.i8[3] & 0x10) != 0)
  {
    if ((v1191 & 8) != 0)
    {
      *(v1162 + 64) |= 2uLL;
    }

    CA::Render::Update::invalidate_backdrops(*v295, &v1164, *(*&v1186 + 256), v1147.u32[0]);
    v650 = v1164.u64[1];
  }

  else
  {
    v650 = vextq_s8(v649, v649, 8uLL).u64[0];
  }

  v651 = v650;
  if (v650 >= SHIDWORD(v650))
  {
    v651 = HIDWORD(v650);
  }

  if (v651 >= 1)
  {
    v652 = *v295;
    goto LABEL_1204;
  }

  v652 = *v295;
  if ((v1191 & 4) != 0)
  {
LABEL_1204:
    if ((v652[172] & 1) == 0 && (*(*&v276 + 42) & 0x10) != 0)
    {
      *(*&v1186 + 24) |= 8uLL;
      v1191 |= 2u;
    }
  }

  else
  {
    *(*&v1186 + 24) |= 0x10uLL;
  }

  v653 = v1145.i8[0] ^ 1;
  if (!v263)
  {
    v653 = 1;
  }

  if ((v653 & 1) == 0)
  {
    LODWORD(v650) = *(v652 + 86);
    v654 = v650;
    v655 = vmulq_laneq_f64(v1146, v1146, 1).f64[0];
    if (v655 >= v654)
    {
      v654 = v655;
    }

    *(v652 + 86) = v654;
  }

  v656 = v652[172];
  if ((v656 & 0x800000) == 0)
  {
    goto LABEL_1282;
  }

  v657 = *(*&v276 + 136);
  if (!v657)
  {
    goto LABEL_1226;
  }

  v658 = *(v657 + 88);
  if (v658)
  {
    v659 = *(v658 + 24);
    if ((v659 - 564) < 3 || v659 == 486 || v659 == 749)
    {
      goto LABEL_1281;
    }
  }

  v660 = *(v657 + 96);
  if (!v660 || (v661 = *(v660 + 16), !v661))
  {
LABEL_1226:
    if ((*(*&v276 + 50) & 2) != 0)
    {
      v674 = *(*&v276 + 16);
      if (v674 < 0.0 || v674 > 1.0)
      {
        goto LABEL_1281;
      }

      v676 = *(*&v276 + 20);
      if (v676 < 0.0 || v676 > 1.0)
      {
        goto LABEL_1281;
      }

      v678 = *(*&v276 + 24);
      if (v678 < 0.0 || v678 > 1.0)
      {
        goto LABEL_1281;
      }

      v680 = *(*&v276 + 28);
      if (v680 < 0.0 || v680 > 1.0)
      {
        goto LABEL_1281;
      }
    }

    if (v657)
    {
      if (*(v657 + 240) > 0.0)
      {
        v665 = *(v657 + 244);
        if (v665 < 0.0 || v665 > 1.0)
        {
          goto LABEL_1281;
        }

        v667 = *(v657 + 248);
        if (v667 < 0.0)
        {
          goto LABEL_1281;
        }

        if (v667 > 1.0)
        {
          goto LABEL_1281;
        }

        v668 = *(v657 + 252);
        if (v668 < 0.0)
        {
          goto LABEL_1281;
        }

        if (v668 > 1.0)
        {
          goto LABEL_1281;
        }

        v669 = *(v657 + 256);
        if (v669 < 0.0 || v669 > 1.0)
        {
          goto LABEL_1281;
        }
      }

      if (!*(*&v276 + 37))
      {
        goto LABEL_1271;
      }

      v671 = *(v657 + 200);
      v670 = *(v657 + 204);
      v673 = *(v657 + 208);
      v672 = *(v657 + 212);
    }

    else
    {
      if (!*(*&v276 + 37))
      {
        goto LABEL_1282;
      }

      v673 = 0.0;
      v672 = 1.0;
      v670 = 0.0;
      v671 = 0.0;
    }

    if (v671 < 0.0 || v671 > 1.0 || v670 < 0.0 || v670 > 1.0 || v673 < 0.0 || v673 > 1.0 || v672 < 0.0 || v672 > 1.0)
    {
      goto LABEL_1281;
    }

    if (!v657)
    {
      goto LABEL_1282;
    }

LABEL_1271:
    if (*(v657 + 320) != 0.0 && *(v657 + 344) > 0.0)
    {
      v681 = *(v657 + 324);
      if (v681 < 0.0)
      {
        goto LABEL_1281;
      }

      if (v681 > 1.0)
      {
        goto LABEL_1281;
      }

      v682 = *(v657 + 328);
      if (v682 < 0.0)
      {
        goto LABEL_1281;
      }

      if (v682 > 1.0)
      {
        goto LABEL_1281;
      }

      v683 = *(v657 + 332);
      if (v683 < 0.0)
      {
        goto LABEL_1281;
      }

      if (v683 > 1.0)
      {
        goto LABEL_1281;
      }

      v684 = *(v657 + 336);
      if (v684 < 0.0 || v684 > 1.0)
      {
        goto LABEL_1281;
      }
    }

    goto LABEL_1282;
  }

  v662 = v660 + 8 * v661 + 24;
  v663 = v660 + 24;
LABEL_1222:
  v664 = 0;
  while (*(*v663 + 24) != CA::Render::Updater::layer_may_leave_P3(CA::Render::Layer const*)::atoms[v664])
  {
    if (++v664 == 9)
    {
      v663 += 8;
      if (v663 != v662)
      {
        goto LABEL_1222;
      }

      goto LABEL_1226;
    }
  }

LABEL_1281:
  v1188.i64[1] |= 0x100000000uLL;
  CA::shape_union(v652 + 6, &v1164, v370);
  v652 = *v295;
  v656 = *(*v295 + 1376);
LABEL_1282:
  if ((v656 & 0x1000000) != 0 && (*(*&v276 + 50) & 0x20) != 0)
  {
    v1188.i64[1] |= 4uLL;
    CA::shape_union(v652 + 7, &v1164, v370);
  }

LABEL_1285:
  v685 = v1191;
  if ((v1191 & 4) != 0)
  {
    *(*&v372 + 24) |= 0x80000uLL;
  }

  v686 = *v295;
  v687 = *&v1186;
  *(*&v1186 + 112) = *(*v295 + 552);
  if (*&v687[32] && (v687[3].i8[0] & 0x10) == 0)
  {
    v688 = v1182;
    v689 = (v686 + 68);
    v690 = v686 + 68;
    while (1)
    {
      v690 = *v690;
      if (!v690)
      {
        break;
      }

      if (v690[1] == v687)
      {
        goto LABEL_1336;
      }
    }

    v691 = *(*&v687[4] + 136);
    if (v691 && (v692 = *v691) != 0)
    {
      if (*(v692 + 12) == 3)
      {
        v693 = v692;
      }

      else
      {
        v693 = 0;
      }
    }

    else
    {
      v693 = 0;
    }

    v694 = x_heap_malloc_small_(*v686, 0x78uLL);
    v696 = v694;
    if (v694)
    {
      *v694 = 0;
      atomic_fetch_add(&v687[2], 1u);
      *(v694 + 8) = v687;
      *(v694 + 88) = 0;
      *(v694 + 32) = 0;
      *(v694 + 40) = 0;
      *(v694 + 24) = 0;
      *(v694 + 104) |= 0x10000000u;
    }

    v697 = *(v686 + 138) + 1;
    *(v686 + 138) = v697;
    v698 = *(v694 + 104) & 0xF8000000 | v697 & 0x7FFFFFF;
    *(v694 + 104) = v698;
    *(v694 + 108) = *(v693 + 40);
    v699 = v698 & 0xF7FFFFFF | (((*(v693 + 12) >> 12) & 1) << 27);
    *(v694 + 104) = v699;
    *(v694 + 104) = v699 & 0xCFFFFFFF | (((*(v693 + 12) >> 8) & 1) << 28);
    *(v694 + 96) = *(v693 + 48);
    *(v694 + 112) = *(v693 + 88);
    if (initialized[0] != -1)
    {
      dispatch_once_f(initialized, 0, init_debug);
    }

    if (*&dword_1ED4E9788 != 0.0)
    {
      *(v696 + 112) = dword_1ED4E9788;
    }

    if ((*(v686 + 1382) & 0x80) != 0)
    {
      v700 = -0.0005;
    }

    else
    {
      v700 = *(v696 + 112) + -0.0005;
    }

    v701 = 0.0;
    v702 = fmax(v700, 0.0);
    *(v696 + 112) = v702;
    v703 = v687[32];
    v704 = *(v686 + 10);
    v705 = *(*&v703 + 128);
    if (v704 >= v705)
    {
      v701 = v704 - v705;
    }

    if (v701 >= v702)
    {
      *(*&v703 + 116) = *(v686 + 68);
    }

    *(v696 + 40) = CA::Shape::ref(v686[70], v695);
    v706 = v1184;
    *(v696 + 48) = v1183;
    *(v696 + 64) = v706;
    *(v696 + 80) = v1185;
    if (v688)
    {
      v707 = *v686;
      v1199[0].i64[0] = 0;
      v708 = v1199;
      do
      {
        if ((*(v688 + 18) & 1) == 0)
        {
          v709 = (*(*v688 + 2))(v688, v707);
          if (v709)
          {
            v708->i64[0] = v709;
            *(v709 + 8) = 0;
            v708 = (v709 + 8);
          }
        }

        v688 = v688[1];
      }

      while (v688);
      *(v696 + 88) = v1199[0].i64[0];
    }

    ++v687[14].i32[0];
    v710 = *(*&v687[32] + 56);
    v711 = (v686 + 73);
    do
    {
      v711 = *v711;
      if (!v711)
      {
        v711 = x_heap_malloc_small_(*v686, 0x30uLL);
        *(v711 + 8) = v710;
        *(v711 + 16) = 0;
        *(v711 + 32) = 0;
        *(v711 + 40) = 0;
        *v711 = v686[73];
        v686[73] = v711;
        goto LABEL_1330;
      }
    }

    while (*(v711 + 8) != v710);
    v712 = *(v711 + 16);
    if (v712)
    {
      CA::Shape::unref(v712);
      *(v711 + 16) = 0;
    }

    v713 = *v689;
    if (*v689)
    {
      do
      {
        if (v713[2] == v711)
        {
          v713[3] = 0;
          v713[4] = 0;
        }

        v713 = *v713;
      }

      while (v713);
    }

LABEL_1330:
    *(v696 + 16) = v711;
    *v696 = *v689;
    *v689 = v696;
    ++*(v711 + 40);
    v714 = v687;
    if (*(v711 + 32))
    {
      v714 = CA::Render::LayerNode::shared_ancestor(*(v711 + 32), v687);
    }

    *(v711 + 32) = v714;
    v263 = v1158;
    if ((*(v696 + 107) & 0x10) != 0)
    {
      if (*(v710 + 584))
      {
        v715 = v686[79];
        atomic_fetch_add(&v687[2], 1u);
        v686[79] = x_list_prepend(v715, v687);
        v716 = *(v710 + 584);
        if (v716)
        {
          CA::Shape::unref(v716);
          *(v710 + 584) = 0;
        }
      }
    }

LABEL_1336:
    v687 = *&v1186;
    v1188.i64[1] |= 0x400000000004uLL;
    v685 = v1191;
    v295 = v1163;
    v276 = v1160.f64[0];
  }

  if ((v687[3].i8[0] & 0x10) != 0)
  {
    goto LABEL_1356;
  }

  if ((v685 & 0x80) != 0 && (*(*v295 + 1377) & 2) != 0)
  {
    v1201 = 0;
    v1199[0] = xmmword_183E20E00;
    v1199[1] = 0u;
    v1199[2] = xmmword_183E20E60;
    memset(&v1199[3], 0, 32);
    v1199[5] = xmmword_183E20E00;
    v1200[0] = 0u;
    v1200[1] = xmmword_183E20E60;
    __asm { FMOV            V0.2D, #1.0 }

    v1200[2] = _Q0;
    v718 = CA::Transform::concat(v1199, &v1183);
    v719 = v1182;
    if (!v1182)
    {
      goto LABEL_1343;
    }

    do
    {
      (*(*v719 + 7))(v719, v1199, v718);
      v719 = v719[1];
    }

    while (v719);
    v687 = *&v1186;
    if (v1186 == 0.0)
    {
      v721 = 1.0;
    }

    else
    {
LABEL_1343:
      v720 = 255;
      do
      {
        v720 = (v720 + v720 * v687[14].u8[4]) >> 8;
        v687 = v687[11];
      }

      while (v687);
      v721 = v720 * 0.0039216;
    }

    v722 = **(*&v276 + 136);
    if (*(v722 + 12) != 6)
    {
      v722 = 0;
    }

    v723 = *v295;
    v724 = *(v722 + 16);
    v1159 = v1199[0];
    v1153 = v1199[1];
    v1150 = v1199[2];
    v1146 = v1199[4];
    v1147 = v1199[3];
    v1144 = v1200[0];
    v1145 = v1199[5];
    v1143 = v1200[1];
    v725 = x_heap_malloc_small_(*v723, 0xC8uLL);
    *v725 = v723[140];
    if (v724)
    {
      v726 = CFRetain(v724);
    }

    else
    {
      v726 = 0;
    }

    *(v725 + 8) = v726;
    *(v725 + 16) = *(*&v276 + 72);
    v727 = v1159;
    *(v725 + 32) = *(*&v276 + 88);
    *(v725 + 48) = v727;
    v728 = v1150;
    *(v725 + 64) = v1153;
    *(v725 + 80) = v728;
    v729 = v1146;
    *(v725 + 96) = v1147;
    *(v725 + 112) = v729;
    v730 = v1144;
    *(v725 + 128) = v1145;
    *(v725 + 144) = v730;
    *(v725 + 160) = v1143;
    v731 = *(*&v276 + 136);
    v732 = 0.0;
    if (v731)
    {
      v732 = *(v731 + 232);
    }

    v733 = v732;
    *(v725 + 176) = v733;
    *(v725 + 184) = v721;
    LOBYTE(v733) = *(*&v276 + 36);
    *(v725 + 188) = LODWORD(v733) * 0.0039216;
    *(v725 + 192) = (*(*&v276 + 40) & 0x300000000) != 0;
    v723[140] = v725;
    v1188.i64[1] |= 4uLL;
    v685 = v1191;
    v295 = v1163;
  }

  if ((v685 & 0x100) == 0)
  {
LABEL_1356:
    v734 = *&v1161.f64[0];
    goto LABEL_1357;
  }

  v734 = *&v1161.f64[0];
  if ((*(*v295 + 1377) & 4) != 0)
  {
    v755 = *&v1186;
    if (v1186 == 0.0)
    {
      v756 = 255;
    }

    else
    {
      v756 = 255;
      do
      {
        v757 = v756 + v756 * v755[14].u8[4];
        v756 = v757 >> 8;
        v755 = v755[11];
      }

      while (v755);
      if (v757 < 0x100)
      {
LABEL_2056:
        v1188.i64[1] |= 4uLL;
        goto LABEL_1357;
      }
    }

    v1201 = 0;
    v1199[0] = xmmword_183E20E00;
    v1199[1] = 0u;
    v1199[2] = xmmword_183E20E60;
    memset(&v1199[3], 0, 32);
    v1199[5] = xmmword_183E20E00;
    v1200[0] = 0u;
    v1200[1] = xmmword_183E20E60;
    __asm { FMOV            V0.2D, #1.0 }

    v1200[2] = _Q0;
    v766 = CA::Transform::concat(v1199, &v1183);
    for (n = v1182; n; n = n[1])
    {
      (*(*n + 7))(n, v1199, v766);
    }

    v768 = *(*&v276 + 88);
    v1176 = *(*&v276 + 72);
    v1177 = v768;
    CA::Rect::apply_transform(&v1176, v1199, v765);
    *&v770.f64[0] = v1176.i64[1];
    *&v769.f64[0] = v1176.i64[0];
    v769.f64[1] = v1177.f64[0];
    v771 = vcvt_f32_f64(v769);
    v770.f64[1] = v1177.f64[1];
    v772 = vcvt_f32_f64(v770);
    memset(v1198, 0, sizeof(v1198));
    v1196 = 0u;
    v1197 = 0u;
    v1194 = 0u;
    v1195 = 0u;
    v1193 = 0u;
    CA::Mat4Impl::mat4_get_unmatrix(v1199, &v1193, 0);
    v773 = *(*(*&v276 + 136) + 96);
    v774 = 0.0;
    if (v773 && *(v773 + 16))
    {
      v775 = *(v773 + 24);
      if (*(v775 + 24) == 280)
      {
        v774 = CA::Render::KeyValueArray::get_float_key(*(v775 + 40), 400, 0.0);
      }

      else
      {
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v776 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR))
        {
          v1040 = [(__CFString *)CAAtomGetString(*(v775 + 24)) cStringUsingEncoding:4];
          *buf = 136315138;
          *&buf[4] = v1040;
          _os_log_error_impl(&dword_183AA6000, v776, OS_LOG_TYPE_ERROR, "Unsupported filter %s for SIL", buf, 0xCu);
        }
      }
    }

    v777 = **(*&v276 + 136);
    if (*(v777 + 12) != 50)
    {
      v777 = 0;
    }

    v778 = *&v1198[5];
    v779 = v756 * 0.0039216;
    v780 = *(v777 + 20);
    v781 = *(v777 + 16);
    v782 = *(v777 + 24);
    v783 = *v295;
    *v1179 = v1186;
    v784.i64[0] = v771.u32[0];
    v784.i64[1] = v771.u32[1];
    v785 = vorrq_s8(vshll_n_s32(v772, 0x20uLL), v784);
    *(v1179 + 8) = v785;
    *(&v1179[1] + 2) = v778;
    *(&v1179[1] + 3) = v779;
    *v1180 = v774;
    *&v1180[4] = v780;
    *&v1180[8] = v781;
    *&v1180[12] = v782;
    *&v1180[14] = 0;
    v1181 = 0;
    if (COERCE_UNSIGNED_INT(fabs(vaddv_f32(*&v785) + (v778 + v779))) >= 0x7F800000)
    {
      if (CA::Render::Update::add_secure_indicator(CA::Render::Update::SecureIndicator)::once[0] != -1)
      {
        dispatch_once(CA::Render::Update::add_secure_indicator(CA::Render::Update::SecureIndicator)::once, &__block_literal_global_36);
      }

      if (x_log_get_render(void)::once[0] != -1)
      {
        dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
      }

      v1093 = x_log_get_render(void)::log;
      v1094 = os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_ERROR);
      v734 = *&v1161.f64[0];
      if (v1094)
      {
        *buf = 0;
        _os_log_error_impl(&dword_183AA6000, v1093, OS_LOG_TYPE_ERROR, "SIL being dropped due to non finite property", buf, 2u);
      }
    }

    else
    {
      *&v1159.f64[0] = v783 + 141;
      v786 = v783[141];
      v787 = v783[142];
      v1153.i64[0] = v783;
      if (v786 == v787)
      {
        v788 = 0x6DB6DB6DB6DB6DB7 * (v783[143] - v786);
        if (v788 < 4)
        {
          v789 = 2 * v788;
          if (v789 <= 4)
          {
            v790 = 4;
          }

          else
          {
            v790 = v789;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<CA::Render::Update::SecureIndicator>>(v790);
        }

        *(v787 + 12) = 0u;
        *(v787 + 13) = 0u;
        *(v787 + 10) = 0u;
        *(v787 + 11) = 0u;
        *(v787 + 8) = 0u;
        *(v787 + 9) = 0u;
        *(v787 + 6) = 0u;
        *(v787 + 7) = 0u;
        *(v787 + 4) = 0u;
        *(v787 + 5) = 0u;
        *(v787 + 2) = 0u;
        *(v787 + 3) = 0u;
        *v787 = 0u;
        *(v787 + 1) = 0u;
        v783[142] = v787 + 28;
        v786 = **&v1159.f64[0];
      }

      v791 = 0;
      v792 = 14;
      if (v781 >= 3)
      {
        v793 = 3;
      }

      else
      {
        v792 = 0;
        v793 = v781;
      }

      v794 = CA::WindowServer::SILMgr::indicator_priority::priorities[v793];
      v795 = &v786[v792];
      v796 = (v779 * v779) * *(&v785 + 2);
      v797 = 1;
      v798 = 1;
      while (1)
      {
        v799 = v797;
        v800 = &v795[7 * v791];
        v801 = *(v800 + 10);
        if (v801 >= 3)
        {
          v801 = 3;
        }

        v802 = CA::WindowServer::SILMgr::indicator_priority::priorities[v801];
        if (v794 <= v802)
        {
          v803 = *(v800 + 47);
        }

        else
        {
          v803 = 0;
        }

        if (v803 != 1)
        {
          goto LABEL_1443;
        }

        *buf = vcvtq_s32_f32(*(v800 + 1));
        if (CA::Shape::intersects(v798, buf))
        {
          break;
        }

        if (v794 == v802 && v796 > ((*(v800 + 7) * *(v800 + 7)) * *(v800 + 4)))
        {
          goto LABEL_1445;
        }

        v798 = CA::Shape::Union(v798, buf);
        v797 = 0;
        v791 = 1;
        if ((v799 & 1) == 0)
        {
          v791 = 2;
LABEL_1443:
          v804 = v803 ^ 1;
          goto LABEL_1446;
        }
      }

      *(v800 + 47) = 0;
LABEL_1445:
      v804 = 1;
LABEL_1446:
      v734 = *&v1161.f64[0];
      v805 = v1153.i64[0];
      *buf = vcvtq_s32_f32(*(v1179 + 8));
      v1180[15] = !CA::Shape::intersects(v798, buf);
      CA::Shape::unref(v798);
      v806 = vcvtq_s32_f32(*(v1179 + 8));
      if (CA::Render::Update::under_visible_backdrops(*(v805 + 544), v807, *v806.i8, *&vextq_s8(v806, v806, 8uLL)))
      {
        *(*&v1179[0] + 24) |= 0x200000000uLL;
      }

      if (!v804)
      {
        v1180[14] = 1;
        *(*&v1179[0] + 24) |= 0x200000000uLL;
        v814 = *&v1159.f64[0];
        std::vector<CA::Render::Update::SecureIndicator>::push_back[abi:nn200100](*&v1159.f64[0], v1179);
        goto LABEL_1457;
      }

      v808 = &v795[7 * v791];
      if (v791 != 1)
      {
        if (v791)
        {
          *buf = *(v795 + 7);
          v1203 = *(v795 + 9);
          v1204 = *(v795 + 11);
          v1205 = v795[13];
          memmove(&v795[7 * v791 + 7], &v795[7 * v791], 49 - 56 * v791);
          *v808 = *buf;
          *(v808 + 1) = v1203;
          *(v808 + 2) = v1204;
          *(v808 + 48) = v1205;
        }

        else
        {
          v809 = v808[6];
          v811 = *(v808 + 1);
          v810 = *(v808 + 2);
          v812 = *v808;
          v813 = *(v808 + 9);
          *v808 = *(v808 + 7);
          *(v808 + 1) = v813;
          *(v808 + 2) = *(v808 + 11);
          *(v808 + 48) = *(v808 + 104);
          *(v808 + 7) = v812;
          *(v808 + 9) = v811;
          *(v808 + 11) = v810;
          *(v808 + 104) = v809;
        }
      }

      v1204 = *(v808 + 2);
      *buf = *v808;
      v1203 = *(v808 + 1);
      v1205 = v808[6];
      *v808 = v1179[0];
      *(v808 + 1) = v1179[1];
      *(v808 + 2) = *v1180;
      *(v808 + 48) = v1180[16];
      v814 = *&v1159.f64[0];
      if (HIBYTE(v1204) == 1)
      {
        BYTE14(v1204) = 1;
        *(*buf + 24) |= 0x200000000uLL;
        std::vector<CA::Render::Update::SecureIndicator>::push_back[abi:nn200100](v814, buf);
      }

      if (v1180[14])
      {
LABEL_1457:
        if (x_log_get_render(void)::once[0] != -1)
        {
          dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
        }

        v815 = x_log_get_render(void)::log;
        if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          *&buf[4] = *&v1180[8];
          _os_log_impl(&dword_183AA6000, v815, OS_LOG_TYPE_DEFAULT, "Bumped indicator t:%u to GPU render due to missing slot", buf, 8u);
        }
      }

      v816 = 0;
      v817 = 0;
      *buf = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*(*v814 + 40) == 0)), 0x1FuLL)), xmmword_183E212D0, xmmword_183E212C0);
      do
      {
        v818 = (*v814 + 56 * *&buf[v816]);
        if (v818[47] == 1 && (v818[46] & 1) == 0)
        {
          v819 = MEMORY[0x1EEE910E0] ? SILManagerIndicatorExtent() : 20;
          v817 += v819;
          if (v817 >= 0x101)
          {
            if (x_log_get_render(void)::once[0] != -1)
            {
              dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
            }

            v820 = x_log_get_render(void)::log;
            if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
            {
              v1192[0].n128_u16[0] = 0;
              _os_log_impl(&dword_183AA6000, v820, OS_LOG_TYPE_DEFAULT, "Bumped indicator to GPU render due to HW limit reached", v1192, 2u);
            }

            v818[46] = 1;
            v821 = *v818;
            *(v821 + 24) = *(*v818 + 24) | 0x200000000;
            v822 = *(v821 + 40);
            if (v822)
            {
              CA::Render::Handle::set_update_flags(v822, 3);
            }

            v814 = *&v1159.f64[0];
          }
        }

        v816 += 4;
      }

      while (v816 != 16);
    }

    v685 = v1191;
    v295 = v1163;
    v263 = v1158;
    v276 = v1160.f64[0];
    goto LABEL_2056;
  }

LABEL_1357:
  if ((v685 & 0x200) != 0)
  {
    v1201 = 0;
    v1199[0] = xmmword_183E20E00;
    v1199[1] = 0u;
    v1199[2] = xmmword_183E20E60;
    memset(&v1199[3], 0, 32);
    v1199[5] = xmmword_183E20E00;
    v1200[0] = 0u;
    v1200[1] = xmmword_183E20E60;
    __asm { FMOV            V0.2D, #1.0 }

    v1200[2] = _Q0;
    v736 = CA::Transform::concat(v1199, &v1183);
    for (ii = v1182; ii; ii = ii[1])
    {
      (*(*ii + 7))(ii, v1199, v736);
    }

    if ((byte_1ED4E985B & 1) == 0)
    {
      v738 = *(*&v276 + 136);
      if (v738)
      {
        v739 = *v738;
        if (v739)
        {
          if (*(v739 + 12) == 19 && *(v739 + 16))
          {
            v740 = *v295;
            v741 = x_heap_malloc_small_(**v295, 0xB0uLL);
            *v741 = v740[144];
            v742 = v276;
            if (!atomic_fetch_add((*&v276 + 8), 1u))
            {
              v742 = 0.0;
              atomic_fetch_add((*&v276 + 8), 0xFFFFFFFF);
            }

            *(v741 + 8) = v742;
            v743 = v1199[1];
            v744 = v1199[2];
            v745 = v1199[3];
            *(v741 + 16) = v1199[0];
            *(v741 + 32) = v743;
            *(v741 + 48) = v744;
            *(v741 + 64) = v745;
            v746 = v1199[5];
            v747 = v1200[0];
            v748 = v1200[1];
            *(v741 + 80) = v1199[4];
            *(v741 + 96) = v746;
            *(v741 + 112) = v747;
            *(v741 + 128) = v748;
            *(v741 + 144) = v1200[2];
            *(v741 + 160) = *(v741 + 160) & 0xE0 | v1201 & 0x1F;
            *(v741 + 168) = 0;
            v749 = *(*&v276 + 136);
            if (v749)
            {
              v750 = *v749;
              if (v750)
              {
                if (*(v750 + 12) == 19)
                {
                  *(v741 + 168) = *(v750 + 16) == 2;
                }
              }
            }

            v740[144] = v741;
          }
        }
      }
    }

    v1188.i64[1] |= 4uLL;
  }

  if ((v1188.i8[0] & 2) == 0)
  {
    goto LABEL_1394;
  }

  v751 = *v295;
  if (*(*v295 + 1376))
  {
    goto LABEL_1394;
  }

  if (!v263)
  {
    if ((v1191 & 8) == 0)
    {
      v752 = *(*&v1186 + 24);
      goto LABEL_1389;
    }

LABEL_1393:
    *(v1162 + 64) |= 2uLL;
    goto LABEL_1394;
  }

  *&v263[13] &= ~2uLL;
  if ((v1191 & 8) != 0)
  {
    goto LABEL_1393;
  }

  v752 = *(*&v1186 + 24);
  if ((v752.i8[0] & 0x40) != 0)
  {
    if ((v752.i8[0] & 0x10) == 0 && (*(v1162 + 64) & 2) == 0)
    {
      v753 = *(v295 + 8);
      v754 = v263 + 15;
      goto LABEL_1392;
    }

    goto LABEL_1394;
  }

LABEL_1389:
  if ((v752.i8[0] & 0x10) == 0)
  {
    v1199[0] = v1165;
    v1199[1] = v1166;
    if (CA::BoundsImpl::intersect(v1199, v1173, v1174))
    {
      v1193 = 0uLL;
      CA::Bounds::set_exterior(&v1193, v232, v1199[0], v1199[1]);
      v753 = *(v295 + 8);
      v754 = &v1193;
LABEL_1392:
      CA::Render::Update::invalidate_context(v751, v753, v754);
    }
  }

LABEL_1394:
  if (CADeviceSupportsHDRProcessing::once != -1)
  {
    dispatch_once(&CADeviceSupportsHDRProcessing::once, &__block_literal_global_199);
  }

  if (CADeviceSupportsHDRProcessing::supports_hdr != 1 || (*(v734 + 27) & 2) != 0 || (*(*&v1186 + 24) & 0x10) != 0 || (*(*v295 + 1376) & 4) != 0)
  {
    goto LABEL_1560;
  }

  v758 = *(v1187 + 104);
  if (!v758 || *(v758 + 12) != 25)
  {
    goto LABEL_1559;
  }

  v759 = *(v295 + 9);
  if ((*(*&v276 + 13) & 4) != 0)
  {
    v823 = *(v758 + 464);
    if (v823)
    {
      v761 = CA::Render::Context::context_by_id(v823);
      if (v761)
      {
        goto LABEL_1479;
      }

      v759 = 0;
      goto LABEL_1482;
    }

LABEL_1480:
    v761 = 0;
LABEL_1482:
    v762 = 1;
    goto LABEL_1483;
  }

  v760 = *(*&v276 + 152);
  if (!v760)
  {
    goto LABEL_1480;
  }

  v761 = *(v760 + 24);
  v762 = 1;
  if (!v761)
  {
    goto LABEL_1483;
  }

  v763 = (v761 + 8);
  if (!atomic_fetch_add((v761 + 8), 1u))
  {
    v759 = 0;
    v761 = 0;
    atomic_fetch_add(v763, 0xFFFFFFFF);
    goto LABEL_1483;
  }

LABEL_1479:
  pthread_mutex_lock((v761 + 72));
  v762 = 0;
  v759 = v761;
LABEL_1483:
  if (v1158)
  {
    v824 = v1158[13].u8[1] >> 7;
  }

  else
  {
    v824 = 0;
  }

  v825 = *(v758 + 24);
  if (v825)
  {
    v1201 = 0;
    v1199[0] = xmmword_183E20E00;
    v1199[1] = 0u;
    v1199[2] = xmmword_183E20E60;
    memset(&v1199[3], 0, 32);
    v1199[5] = xmmword_183E20E00;
    v1200[0] = 0u;
    v1200[1] = xmmword_183E20E60;
    __asm { FMOV            V0.2D, #1.0 }

    v1200[2] = _Q0;
    v827 = 1.0;
    if ((HIBYTE(xmmword_1ED4E982C) & 1) == 0 && (*(*v295 + 1378) & 8) != 0 && CA::Render::Layer::append_texture_transform(*&v276, v1199, v825, v758))
    {
      v829 = CA::Transform::concat(v1199, &v1183);
      for (jj = v1182; jj; jj = jj[1])
      {
        (*(*jj + 7))(jj, v1199, v829);
      }

      rotation_flags = CA::Render::Updater::get_rotation_flags(v1199, v828);
      if ((v1201 & 0x10) == 0 && (*(*&v276 + 40) >> 12) - 9 <= 2)
      {
        v827 = *&v1200[2];
      }
    }

    else
    {
      rotation_flags = -1;
    }
  }

  else
  {
    rotation_flags = -1;
    v827 = 1.0;
  }

  if (byte_1ED4E9842)
  {
    v832 = 1;
  }

  else
  {
    v832 = (*(*&v276 + 48) >> 1) & 1;
  }

  v1199[0].i8[0] = 0;
  v833 = CA::Render::ImageQueue::forward_dm(v758, v759, *v295, v827, rotation_flags, v832, v1199, v235);
  if (v1199[0].u8[0] == 1)
  {
    *(v1162 + 64) |= 2uLL;
  }

  v834 = v832 ^ 1;
  v835 = *(*(*(v758 + 16) + 24) + 128);
  if (((v835 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 <= 0x3FE || (v835 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000001 || v835 == 0xFFF0000000000000 || (v835 & 0x7FFFFFFFFFFFFFFFuLL) - 1 <= 0xFFFFFFFFFFFFELL)
  {
    if (*(*(*(v758 + 16) + 24) + 128) >= *(*v295 + 80))
    {
      v1188.i64[1] |= 4uLL;
    }

    else
    {
      v834 = 0;
    }
  }

  if (v833 && (*(*&v276 + 44) & 0xC0) != 0)
  {
    if (v834)
    {
      v839 = 0x800000000;
      if (v824)
      {
        v839 = 0x2000000000;
      }

      v1188.i64[1] |= v839;
      *(v295 + 43) = 1;
LABEL_1522:
      v161 = 3.4028e38;
    }

    else if ((v824 & 1) == 0)
    {
      v1188.i64[1] |= 0x4000000000000uLL;
      goto LABEL_1522;
    }

    v1151 |= 0x20u;
  }

  CA::Render::ImageQueue::pse_mitigate(v758, *v295);
  if (CA::Render::ImageQueue::is_protected(v758))
  {
    v840 = *(v758 + 64);
    if (v840 || (v840 = *(v758 + 80)) != 0)
    {
LABEL_1529:
      v841 = (*(*v840 + 256))(v840);
      v1188.i64[1] |= (v841 << 47) & 0x3000000000000 | 0x800000000000;
    }

    else if (*(v758 + 24))
    {
      v840 = *(v758 + 24);
      goto LABEL_1529;
    }
  }

  if ((v762 & 1) == 0)
  {
    pthread_mutex_unlock((v761 + 72));
    if (atomic_fetch_add((v761 + 8), 0xFFFFFFFF) == 1)
    {
      (*(*v761 + 16))(v761);
    }
  }

  v842 = *(*&v1161.f64[0] + 48);
  v263 = v1158;
  if (v842)
  {
    if (atomic_fetch_add(v842 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v842 + 16))(v842);
    }

    *(*&v1161.f64[0] + 48) = 0;
  }

  v843 = (*(*v758 + 80))(v758);
  if (v843)
  {
    v844 = v843;
    v845 = v843;
    if (!atomic_fetch_add((v843 + 8), 1u))
    {
      v845 = 0;
      atomic_fetch_add((v843 + 8), 0xFFFFFFFF);
    }

    *(*&v1161.f64[0] + 48) = v845;
    v846 = *v295;
    v847 = BYTE11(xmmword_1ED4E980C);
    v848 = *(*v295 + 447);
    if (((*(*v295 + 445) & 1) != 0 || (BYTE11(xmmword_1ED4E980C) & 1) != 0 || *(*v295 + 447)) && *(v843 + 12) == 57 && *(v758 + 16))
    {
      if ((*(*v295 + 445) & 1) != 0 || *(*v295 + 447))
      {
        v232 = *(v843 + 160);
        if (v232)
        {
          X::CFRef<__CFData const*>::operator=(v846 + 125, v232);
          v1188.i64[1] |= 4uLL;
          v846 = *v295;
        }

        if ((*(v846 + 113) - 3) <= 1)
        {
          *(v846 + 1208) |= *(v844 + 368) & 3;
          v1188.i64[1] |= 4uLL;
          if (v848)
          {
            v232 = *(v844 + 168);
            if (v232)
            {
              X::CFRef<__CFData const*>::operator=((*v295 + 1008), v232);
            }
          }
        }
      }

      if (v847)
      {
        kdebug_trace();
      }
    }
  }

  else
  {
    v849 = *(v758 + 32);
    if (v849)
    {
      v850 = (v849 + 8);
      if (!atomic_fetch_add((v849 + 8), 1u))
      {
        v849 = 0;
        atomic_fetch_add(v850, 0xFFFFFFFF);
      }

      *(*&v1161.f64[0] + 48) = v849;
    }
  }

LABEL_1559:
  v734 = *&v1161.f64[0];
LABEL_1560:
  v851 = v1188.i64[1];
  v852 = *v295;
  if (v263 && (v1188.i64[1] & 0x2000000000) != 0 && CA::Render::Update::under_visible_backdrops(v852[68], v232, v263[15], v263[16]))
  {
    v851 |= 0x800000000uLL;
    v1188.i64[1] = v851;
  }

  if (!CA::Render::Updater::should_track_layer_headroom(*&v1186, v852[70]))
  {
    goto LABEL_1579;
  }

  v855 = *(v734 + 32);
  v856 = *(v855 + 40);
  v857 = 1;
  if ((v856 & 0x800000C000000000) == 0)
  {
    v858 = *(v855 + 152);
    if (!v858 || (*(v858 + 104) & 0x8000000000000000) == 0)
    {
      v857 = 0;
    }
  }

  v859 = *(v855 + 136);
  if (v859)
  {
    v860 = *(v859 + 316);
  }

  else
  {
    v860 = 1.0;
  }

  v861 = *(v1187 + 136);
  if (v861)
  {
    v862 = *v861;
    if (v862)
    {
      if (*(v862 + 12) == 48)
      {
        v857 = 0;
      }
    }
  }

  if (!v857 && v860 <= 1.0)
  {
LABEL_1579:
    v863 = v1157;
    v864 = v1154;
    goto LABEL_1580;
  }

  if (v856 < 0 || v860 > 1.0)
  {
    v851 |= 0x800000000uLL;
    v1188.i64[1] = v851;
    if (!v857)
    {
      goto LABEL_1633;
    }

LABEL_1622:
    if (v859)
    {
      v879 = *(v859 + 276);
      v880 = *(v855 + 104);
      if (!v880)
      {
        goto LABEL_1691;
      }

      v853.n128_u32[0] = *(v859 + 272);
      if (v853.n128_f32[0] > 0.0)
      {
        if (v853.n128_f32[0] >= v879 && v879 >= 1.0)
        {
          v853.n128_u32[0] = *(v859 + 276);
        }

        if (v853.n128_f32[0] <= 1.0)
        {
          goto LABEL_1683;
        }

        goto LABEL_1682;
      }

      if (v880[12] == 25)
      {
        v853.n128_u32[0] = *(v859 + 276);
        if (v879 <= 1.0)
        {
          goto LABEL_1683;
        }

        goto LABEL_1682;
      }
    }

    else
    {
      v880 = *(v855 + 104);
      if (!v880)
      {
        goto LABEL_1692;
      }

      v879 = 0.0;
      if (v880[12] == 25)
      {
        goto LABEL_1692;
      }
    }

    v894 = (*(*v880 + 80))(v880);
    if (v894)
    {
      v853.n128_u32[0] = *(v894 + 64);
      v895 = *(v894 + 88);
      if (v853.n128_f32[0] > 1.0 || v895 > 1.0)
      {
        if (v853.n128_f32[0] <= v895)
        {
          v853.n128_u32[0] = *(v894 + 88);
        }

        if (v853.n128_f32[0] >= v879)
        {
          v897 = v879;
        }

        else
        {
          v897 = v853.n128_f32[0];
        }

        if (v879 != 0.0)
        {
          v853.n128_f32[0] = v897;
        }

        if (v853.n128_f32[0] <= 1.0)
        {
LABEL_1683:
          v898 = 1.0;
          if (v853.n128_f32[0] > 1.0)
          {
            v899 = *(v855 + 136);
            if (v899)
            {
              if (*(v899 + 264) != 0.0)
              {
                goto LABEL_1688;
              }

              v898 = *(v899 + 268);
            }

            v900 = log2f(v853.n128_f32[0]);
            v853.n128_f32[0] = exp2f(v898 * v900);
LABEL_1688:
            if (v161 <= v853.n128_f32[0])
            {
              v161 = v853.n128_f32[0];
            }

LABEL_1695:
            v882 = 1;
LABEL_1696:
            v901 = *(v1187 + 136);
            if (v901)
            {
              v853.n128_u32[0] = v901[85];
              v854.i32[0] = v901[65];
              v902 = v901[54];
              v903 = v901[75];
            }

            else
            {
              v853.n128_u64[0] = 0;
              v854.i64[0] = 0;
              v902 = 0;
              v903 = 0;
            }

            v904 = *(v1187 + 32);
            v1199[0].i64[0] = __PAIR64__(v854.u32[0], v853.n128_u32[0]);
            v1199[0].i64[1] = __PAIR64__(v904, v902);
            v1199[1].i32[0] = v903;
            v905 = 1;
            v906 = v1199;
            do
            {
              if (v853.n128_f32[0] < *&v1199[0].i32[v905])
              {
                v853.n128_u32[0] = v1199[0].u32[v905];
                v906 = &v1199[0].i32[v905];
              }

              ++v905;
            }

            while (v905 != 5);
            if (*v906 > 1.0)
            {
              if (v161 <= *v906)
              {
                v161 = *v906;
              }

              v1188.i64[1] |= 0x800000000uLL;
              v882 = 1;
            }

            goto LABEL_1707;
          }

          goto LABEL_1691;
        }

        v851 = v1188.i64[1];
LABEL_1682:
        v1188.i64[1] = v851 | 0x800000000;
        goto LABEL_1683;
      }
    }

LABEL_1691:
    if (v879 != 0.0)
    {
      if (v161 <= v879)
      {
        v161 = v879;
      }

      goto LABEL_1695;
    }

LABEL_1692:
    v882 = 0;
    goto LABEL_1696;
  }

  if (v857)
  {
    goto LABEL_1622;
  }

LABEL_1633:
  v882 = 0;
LABEL_1707:
  if (v860 > 1.0)
  {
    v1075 = *(v734 + 276);
    if (v860 > v1075)
    {
      v1075 = v860;
    }

    if (v161 <= v1075)
    {
      v161 = v1075;
    }

    v882 = 1;
  }

  v907 = *(v855 + 136);
  if (v907)
  {
    v908 = *(v907 + 280);
    if (v908 != 0.0 && v857)
    {
      if (v161 >= v908 || v161 <= 0.001)
      {
        v161 = v908;
      }

      v882 = 1;
    }
  }

  if (CADeviceFlickerHeadroomLimit::once != -1)
  {
    dispatch_once(&CADeviceFlickerHeadroomLimit::once, &__block_literal_global_217);
  }

  if (*&CADeviceFlickerHeadroomLimit::headroom_limit > 0.001 && (*(v855 + 47) & 0x40) != 0)
  {
    if (v161 >= *&CADeviceFlickerHeadroomLimit::headroom_limit || v161 <= 0.001)
    {
      LODWORD(v161) = CADeviceFlickerHeadroomLimit::headroom_limit;
    }

    v1151 |= 2u;
    v863 = v1157;
    v864 = v1154;
LABEL_1734:
    v1188.i64[1] |= 4uLL;
  }

  else
  {
    v1151 |= 2u;
    v864 = v1154;
    if (v882)
    {
      v863 = v1157;
      goto LABEL_1734;
    }

    v161 = 3.4028e38;
    v863 = v1157;
  }

LABEL_1580:
  if ((v1188.i16[0] & 0x300) != 0)
  {
    v1188.i64[1] |= 4uLL;
  }

  if ((v1188.i16[0] & 0x100) != 0)
  {
    v1188.i64[1] |= 8uLL;
  }

  v865 = *&v1186;
  v866 = *(*&v1186 + 24);
  if ((v866.i8[0] & 0x10) != 0)
  {
    v1188.i64[1] &= ~0x200uLL;
  }

  if (v1191)
  {
    *(*&v1186 + 24) = *&v866 | 0x10000;
    if ((*(v1162 + 66) & 2) != 0)
    {
      *(*v295 + 304) |= 4uLL;
    }
  }

  v867 = v865[33];
  if (v867)
  {
    v868 = *(*&v867 + 24);
    if (v868)
    {
      v869 = *v295;
      v870 = *(*v295 + 648);
      if (v870)
      {
        while (*v870 != v868)
        {
          v870 = v870[1];
          if (!v870)
          {
            goto LABEL_1594;
          }
        }

LABEL_1596:
        v873 = *(v869 + 295);
        if (v873 <= *(v868 + 200))
        {
          v873 = *(v868 + 200);
        }

        *(v869 + 295) = v873;
        if (CA::Render::Updater::should_track_layer_headroom(v865, v869[70]))
        {
          if (v161 <= *(v868 + 204))
          {
            v161 = *(v868 + 204);
          }

          v1151 |= 8u;
        }

        if (*(v868 + 176) == 1)
        {
          v1188.i64[1] |= 0x800000000uLL;
        }

        if (*(v868 + 177) == 1)
        {
          v1188.i64[1] |= 0x8000000000uLL;
        }

        if (*(v868 + 178) == 1)
        {
          v1188.i64[1] |= 0x2000000uLL;
          if ((*(v869 + 1381) & 0x80) != 0)
          {
            *(v868 + 179) = 1;
            (*(*v868 + 32))(v868);
          }
        }

        v874 = *(v868 + 184);
        if (v874)
        {
          if (*(*v295 + 294))
          {
            *(*&v1186 + 24) |= 0x10uLL;
          }

          v1188.i64[1] |= (v874 & 7) << 47;
        }
      }

      else
      {
LABEL_1594:
        if ((*(*v868 + 16))(v868))
        {
          v871 = *v295;
          v872 = *(*v295 + 648);
          atomic_fetch_add((v868 + 8), 1u);
          v871[81] = x_list_prepend(v872, v868);
          v869 = *v295;
          v865 = *&v1186;
          goto LABEL_1596;
        }
      }
    }

    v875 = v1188.i64[1] | 4;
    v1188.i64[1] |= 4uLL;
  }

  else
  {
    v875 = v1188.i64[1];
  }

  if ((v875 & 0x2800000000) != 0)
  {
    v876 = *(v295 + 8);
    v877 = atomic_load((v876 + 228));
    if (!v877)
    {
      v878 = *(v876 + 256) ? 0 : getpid();
      v877 = 0;
      atomic_compare_exchange_strong((v876 + 228), &v877, v878);
      if (!v877)
      {
        v877 = v878;
      }
    }

    if (v877)
    {
      v883 = v877;
    }

    else
    {
      v883 = -1;
    }

    if ((*(*&v1186 + 24) & 0x10) == 0)
    {
      if (*(v295 + 48) == 1)
      {
        v884 = *(v295 + 9);
        if (v884 <= v161)
        {
          v884 = v161;
        }

        *(v295 + 9) = v884;
      }

      v885 = *v295;
      if (*(*v295 + 1184) < v161)
      {
        *(v885 + 296) = v161;
        if (byte_1ED4E98A6 == 1)
        {
          v1193 = 0uLL;
          v1194.f64[0] = 0.0;
          CA::Render::show_object(&v1193, v1187);
          if (x_log_get_render(void)::once[0] != -1)
          {
            dispatch_once(x_log_get_render(void)::once, &__block_literal_global_6229);
          }

          v1086 = x_log_get_render(void)::log;
          if (os_log_type_enabled(x_log_get_render(void)::log, OS_LOG_TYPE_DEFAULT))
          {
            v1087 = v1163[2];
            v1088 = x_stream_get(&v1193);
            v1199[0].i32[0] = 67109634;
            v1199[0].i32[1] = v1087;
            v1199[0].i16[4] = 2048;
            *(&v1199[0].i64[1] + 2) = v161;
            v1199[1].i16[1] = 2080;
            *(v1199[1].i64 + 4) = v1088;
            _os_log_impl(&dword_183AA6000, v1086, OS_LOG_TYPE_DEFAULT, "update 0x%x track_headroom --> %f:\n%s", v1199, 0x1Cu);
          }

          if (*&v1193.f64[0])
          {
            free(*&v1193.f64[0]);
          }

          v295 = v1163;
          v885 = *v1163;
          v863 = v1157;
          v734 = *&v1161.f64[0];
          v276 = v1160.f64[0];
          v864 = v1154;
        }

        if (BYTE14(xmmword_1ED4E980C) == 1)
        {
          kdebug_trace();
          v885 = *v295;
        }

        if ((v885[153] - v885[152]) <= 0xFF)
        {
          v886 = *(v885 + 296);
          v1199[0].i16[0] = v1151;
          *(v1199[0].i64 + 4) = __PAIR64__(LODWORD(v161), v883);
          v1199[0].i32[3] = v886;
          v853 = X::small_vector_base<CA::Render::Update::EDRRequest>::push_back(v885 + 152, v1199);
        }
      }
    }
  }

  if (v864)
  {
    v887 = *(*(v295 + 9) + 16);
    v888 = *(*&v276 + 136);
    if (v888)
    {
      v889 = *v888;
      if (v889)
      {
        v890 = *(v889 + 12);
        if (v890 == 31)
        {
          v891 = *(v889 + 88);
          if (v891)
          {
            v887 = v891[4];
            v892 = atomic_load(v891 + 57);
            if (!v892)
            {
              v893 = v891[64] ? 0 : getpid();
              v892 = 0;
              atomic_compare_exchange_strong(v891 + 57, &v892, v893);
              if (!v892)
              {
                v892 = v893;
              }
            }
          }

          else
          {
            v887 = 0;
            v892 = 0;
          }

          v912 = v1152;
          DWORD1(v912) = v892;
          v1152 = v912;
        }

        else if (v890 == 63)
        {
          v887 = *(v889 + 24);
        }
      }
    }

    v913 = v1188.i64[1];
    if ((v1188.i64[1] & 0x3800000000000) != 0)
    {
      _ZF = (*(*v295 + 292) & 0x10000) == 0;
      v914 = v295;
      LODWORD(v295) = (*(*v295 + 292) & 0x10000u) >> 16;
      v915 = v1155;
      if (_ZF)
      {
        v915 = 1;
      }

      v1155 = v915;
    }

    else
    {
      v914 = v295;
      LOBYTE(v295) = 0;
    }

    v916 = *(*&v276 + 128);
    v1161 = *(*&v1186 + 160);
    v917 = v914[9];
    v918 = *(v914 + 43);
    if (CA::Render::FlattenManager::is_stager(v734))
    {
      v919 = v1152;
      LODWORD(v919) = v887;
      v1152 = v919;
      os_unfair_lock_lock(&CA::Render::FlattenManager::flattened_lock);
      v921 = *(v734 + 152);
      v922 = v1148;
      if (v1148)
      {
        v923 = *(v921 + 168);
        if (v923)
        {
          CA::Shape::unref(v923);
        }

        *(v921 + 168) = CA::Shape::ref(v922, v920);
      }

      v276 = v1160.f64[0];
      if (v916)
      {
        v924 = *(v921 + 176);
        if (v924 && atomic_fetch_add(v924 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v924 + 16))(v924);
        }

        v925 = (v916 + 8);
        if (!atomic_fetch_add((v916 + 8), 1u))
        {
          v916 = 0;
          atomic_fetch_add(v925, 0xFFFFFFFF);
        }

        *(v921 + 176) = v916;
      }

      *(v921 + 232) = v1152;
      *(v921 + 136) = v1161;
      *(v921 + 272) = v1155 != 0;
      *(v921 + 208) = v913 & 0x407815583C00000;
      *(v921 + 252) = v917;
      *(v921 + 276) = v918;
      *(v921 + 277) = v295;
      os_unfair_lock_unlock(&CA::Render::FlattenManager::flattened_lock);
    }

    v295 = v1163;
    *(v1163 + 48) = 0;
    v863 = v1157;
  }

  v926 = *&v1186;
  if ((*(*&v1186 + 24) & 0x10) != 0)
  {
    v946 = v1188.i64[0];
    if ((v1188.i64[0] & 0x78000) != 0)
    {
      *(*v295 + 304) |= 4uLL;
      v1188.i64[0] = v946 & 0xFFFFFFFFFFF87FFFLL;
    }

    v1188.i64[1] &= 0xFFF87E011E3FFFFFLL;
    v947 = v1158;
    if (v1170)
    {
      v926[28] = 1;
    }

    goto LABEL_1860;
  }

  v927 = *(v734 + 184);
  v928 = *(v734 + 188);
  if (v927 <= v928)
  {
    v929 = *(v734 + 188);
  }

  else
  {
    v929 = *(v734 + 184);
  }

  v853.n128_u32[0] = 1073741822;
  v854.i32[0] = v929;
  v930 = vdupq_lane_s32(*&vcgtq_s32(v854, v853), 0);
  v931 = *(v734 + 176);
  v932.i64[0] = v931;
  v932.i64[1] = SHIDWORD(v931);
  v933 = vbslq_s8(v930, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v932));
  v934 = v927;
  if (v929 > 1073741822)
  {
    v934 = 1.79769313e308;
  }

  v1199[0] = v933;
  if (v929 <= 1073741822)
  {
    v935 = v928;
  }

  else
  {
    v935 = 1.79769313e308;
  }

  *v1199[1].i64 = v934;
  *&v1199[1].i64[1] = v935;
  CA::Render::Updater::LayerShapes::union_bounds(v863, v1199, 0);
  v941 = *(*&v276 + 136);
  if (v941)
  {
    v942 = *v941;
    if (v942)
    {
      if (*(v942 + 12) == 31)
      {
        v943 = *(v734 + 184);
        if (v943 >= *(v734 + 188))
        {
          v943 = *(v734 + 188);
        }

        if (v943 >= 1)
        {
          v944 = *(v942 + 88);
          v945 = v944 ? *(v944 + 16) : 0;
          v948 = CA::Render::Context::context_by_id(v945);
          if (v948)
          {
            v949 = v948;
            v950 = *v295;
            v951 = *(*v295 + 1024);
            v952 = *(*v295 + 1032);
            if (v951 != v952)
            {
              while (*v951 != *(v948 + 268))
              {
                if (++v951 == v952)
                {
                  goto LABEL_1787;
                }
              }
            }

            if (v951 == v952)
            {
LABEL_1787:
              v1199[0].i32[0] = *(v948 + 268);
              X::small_vector_base<unsigned int>::push_back((v950 + 128), v1199);
            }

            if (atomic_fetch_add(v949 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v949 + 16))(v949);
            }
          }
        }
      }
    }
  }

  if (v1168 && (v1168[2] & 1) == 0)
  {
    *(*&v1186 + 24) |= 0x100000uLL;
  }

  if (v1169 && (v1191 & 2) == 0)
  {
    if (v1169)
    {
      if (v1169 != 1)
      {
        goto LABEL_1799;
      }
    }

    else
    {
      if (*(v1169 + 4) == 6)
      {
        goto LABEL_1805;
      }

LABEL_1799:
      if ((CA::Bounds::contains(&v1175, v1169) & 1) == 0)
      {
        CA::shape_intersect(&v1169, &v1175, v936);
      }

      if (*(v863 + 56))
      {
        CA::shape_union((v863 + 56), v1169, v936);
      }

      if ((*(v1162 + 89) & 0x40) == 0)
      {
        CA::Render::Update::fullfill_backdrops(*v295, v1169);
        CA::Render::Update::add_opaque_shape(*v295, v1169, v953);
      }
    }

LABEL_1805:
    if ((v1188.i8[2] & 0x10) == 0)
    {
      *(*&v1186 + 208) = v1169;
      v1169 = 0;
    }
  }

  v947 = v1158;
  if (!v1170)
  {
    goto LABEL_1838;
  }

  v954 = vceqzq_f64(v1174);
  if ((vorrq_s8(vdupq_laneq_s64(v954, 1), v954).u64[0] & 0x8000000000000000) != 0 || (v955 = vceqq_f64(v1174, v1174), (vornq_s8(vdupq_laneq_s64(vmvnq_s8(v955), 1), v955).u64[0] & 0x8000000000000000) != 0))
  {
    v1199[0] = 0uLL;
  }

  else
  {
    v956 = vcvtmq_s64_f64(vmaxnmq_f64(v1173, vdupq_n_s64(0xC1BFFFFFFF000000)));
    v1199[0] = vuzp1q_s32(v956, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v1173, v1174), vdupq_n_s64(0x41C0000000000000uLL))), v956));
  }

  CA::shape_intersect(&v1170, v1199, v936);
  v958 = (v863 + 64);
  if (!*(v863 + 64))
  {
    goto LABEL_1837;
  }

  v960 = (v863 + 72);
  v959 = *(v863 + 72);
  if (!v959)
  {
    goto LABEL_1827;
  }

  if (!v947 || *&v1171 == 0.0)
  {
    if (v947)
    {
      goto LABEL_1825;
    }

    goto LABEL_1831;
  }

  if ((*(v947[13].i16 + 1) & 0x780) == 0)
  {
    goto LABEL_1825;
  }

  v961 = CA::Shape::intersect(*(v863 + 72), v1171);
  v962 = v961;
  if (v961)
  {
    if (v961 == 1)
    {
      goto LABEL_1824;
    }

    goto LABEL_1823;
  }

  if (*(v961 + 4) != 6)
  {
LABEL_1823:
    v963 = CA::Shape::dilate(v961, 1, 1);
    CA::Render::Updater::LayerShapes::union_visible_shape(v1157, v963, v964);
    CA::Render::Updater::LayerShapes::union_visible_shape(&v1165, v963, v965);
    CA::shape_subtract((v863 + 72), v963, v966, v967);
    v1188.i64[1] |= 0x40uLL;
    v968 = v963;
    v295 = v1163;
    CA::Shape::unref(v968);
  }

LABEL_1824:
  CA::Shape::unref(v962);
  v863 = v1157;
LABEL_1825:
  if ((*(v947[13].i16 + 1) & 0x780) == 0)
  {
    v959 = *v960;
LABEL_1831:
    v972 = CA::Shape::subtract(v1170, v959, v936, v957);
    if (*v958)
    {
      CA::shape_union(v958, v972, v971);
      v973 = *v958;
      if ((*v958 & 1) == 0 && *(v973 + 1) >= 257)
      {
        v1199[0] = 0uLL;
        CA::Shape::get_bounds(v973, v1199);
        CA::Shape::unref(*v958);
        *v958 = CA::Shape::new_shape(v1199, v974);
      }
    }

    CA::Shape::unref(v972);
    v863 = v1157;
    goto LABEL_1836;
  }

  if (*v958)
  {
LABEL_1827:
    CA::shape_union(v958, v1170, v936);
    v969 = *v958;
    if ((*v958 & 1) == 0 && *(v969 + 1) >= 257)
    {
      v1199[0] = 0uLL;
      CA::Shape::get_bounds(v969, v1199);
      CA::Shape::unref(*v958);
      *v958 = CA::Shape::new_shape(v1199, v970);
    }
  }

LABEL_1836:
  CA::Render::Update::add_visible_shape(*v295, v1170, v936);
LABEL_1837:
  *(*&v1186 + 224) = v1170;
  v1170 = 0;
LABEL_1838:
  v975 = v1171;
  if (*&v1171 == 0.0)
  {
    v978 = *&v1186;
  }

  else
  {
    v977 = *(v863 + 72);
    v976 = (v863 + 72);
    if (v977)
    {
      CA::shape_union(v976, v1171, v936);
      v975 = v1171;
    }

    v978 = *&v1186;
    *(*&v1186 + 232) = v975;
    *&v1171 = 0.0;
  }

  v979 = v978[21].i32[0];
  if (!v979)
  {
    goto LABEL_1859;
  }

  v980 = v1187;
  v981 = *(v1187 + 40);
  if ((v981 & 0x10000000000) == 0 || *&v978[16])
  {
    goto LABEL_1846;
  }

  v1004 = *(v1187 + 136);
  v938.i64[0] = 0;
  if (!v1004)
  {
LABEL_1888:
    v1005 = *(v1187 + 72);
    v1006 = *(v1187 + 88);
    v1199[0] = v1005;
    v1199[1] = v1006;
    if ((v981 & 0xF0000) == 0)
    {
      v938.i64[0] = 0;
    }

    v1007 = *&v1006.i64[1];
    if (v1004 && *(v1004 + 72))
    {
      v1160 = v1006;
      v1161 = v1005;
      CA::Render::Layer::max_corner_radii(v1004);
      v1006.i64[0] = *&v1160.f64[0];
      v1005 = v1161;
      *v938.i32 = *v937.i64;
    }

    if (*v1006.i64 <= v1007)
    {
      *v937.i64 = v1007;
    }

    else
    {
      v937.i64[0] = v1006.i64[0];
    }

    v939.i32[1] = 2146435071;
    if (*v937.i64 < 1.79769313e308)
    {
      *v937.i64 = *v1006.i64 >= v1007 ? v1007 : *v1006.i64;
      if (*v937.i64 > 0.0)
      {
        v937 = vdupq_n_s64(0xBEE4F8B588E368F1);
        v1005 = vaddq_f64(v1005, v937);
        v1199[0] = v1005;
        *v939.i64 = *v1006.i64 + 0.00002;
        *v937.i64 = v1007 + 0.00002;
        *v1199[1].i64 = *v1006.i64 + 0.00002;
        *&v1199[1].i64[1] = v1007 + 0.00002;
        if (*v1006.i64 + 0.00002 <= 0.0 || *v937.i64 <= 0.0)
        {
          v1199[1] = 0uLL;
        }
      }
    }

    v1008 = v978[21].i32[1];
    if (v979 <= v1008)
    {
      v1009 = v978[21].i32[1];
    }

    else
    {
      v1009 = v979;
    }

    v937.i32[0] = 1073741822;
    v939.i32[0] = v1009;
    v937 = vdupq_lane_s32(*&vcgtq_s32(v939, v937), 0);
    v1010 = v978[20];
    v1011.i64[0] = v1010.i32[0];
    v1011.i64[1] = v1010.i32[1];
    v1012 = vbslq_s8(v937, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v1011));
    if (v1009 <= 1073741822)
    {
      v1013.f64[0] = v979;
    }

    else
    {
      v1013.f64[0] = 1.79769313e308;
    }

    if (v1009 <= 1073741822)
    {
      v1014 = v1008;
    }

    else
    {
      v1014 = 1.79769313e308;
    }

    v1013.f64[1] = v1014;
    if (*v938.i32 == 0.0)
    {
      v937 = v1199[1];
      v1015 = vorrq_s8(vcltzq_f64(v1013), vclezq_f64(v1199[1]));
      v938 = vorrq_s8(vdupq_laneq_s64(v1015, 1), v1015);
      if (v938.i64[0] < 0)
      {
        goto LABEL_1846;
      }

      v1016 = vandq_s8(vcgeq_f64(vaddq_f64(v1005, v1199[1]), vaddq_f64(v1012, v1013)), vcgeq_f64(v1012, v1005));
    }

    else
    {
      if (v1004 && *(v1004 + 56))
      {
        *v937.i64 = *v938.i32;
        if (*(v980 + 50))
        {
          v1160 = v1012;
          v1161 = v1013;
          CA::BoundsImpl::inset(v1199, *v937.i64, *v938.i32);
          if ((CA::BoundsImpl::contains(v1199[0], v1199[1], v1160, v1161) & 1) == 0)
          {
            goto LABEL_1846;
          }

          goto LABEL_1954;
        }

        v1017 = v1199[1];
      }

      else
      {
        *v937.i64 = *v938.i32;
        v1017 = v1199[1];
        if (*v1199[1].i64 <= *&v1199[1].i64[1])
        {
          v1018 = v1199[1].i64[1];
        }

        else
        {
          v1018 = v1199[1].i64[0];
        }

        _NF = *&v1018 < 1.79769313e308;
        v1019 = v1005;
        v1020 = v1199[1];
        if (_NF)
        {
          v1021 = *v1199[1].i64 >= *&v1199[1].i64[1] ? *&v1199[1].i64[1] : *v1199[1].i64;
          v392 = v1021 <= 0.0;
          v1019 = v1005;
          v1020 = v1199[1];
          if (!v392)
          {
            v1022 = vaddq_f64(vdupq_lane_s64(COERCE__INT64(*v937.i64 * -0.644365081), 0), v1199[1]);
            v1023 = vmovn_s64(vmvnq_s8(vclezq_f64(v1022)));
            v1019 = vaddq_f64(v1005, vdupq_lane_s64(COERCE__INT64(*v937.i64 * 0.322182541), 0));
            v1024 = vdup_lane_s32(vand_s8(v1023, vdup_lane_s32(v1023, 1)), 0);
            v1025.i64[0] = v1024.i32[0];
            v1025.i64[1] = v1024.i32[1];
            v1020 = vandq_s8(v1022, v1025);
          }
        }

        v1026 = vorrq_s8(vcltzq_f64(v1013), vclezq_f64(v1020));
        if ((vorrq_s8(vdupq_laneq_s64(v1026, 1), v1026).u64[0] & 0x8000000000000000) == 0)
        {
          v1027 = vandq_s8(vcgeq_f64(vaddq_f64(v1019, v1020), vaddq_f64(v1012, v1013)), vcgeq_f64(v1012, v1019));
          if ((vandq_s8(vdupq_laneq_s64(v1027, 1), v1027).u64[0] & 0x8000000000000000) != 0)
          {
            goto LABEL_1954;
          }
        }
      }

      v1028 = *v937.i64 * 1.52866;
      if ((v981 & 0x300000000) == 0)
      {
        v1028 = *v938.i32;
      }

      *v937.i64 = v1028;
      v938.i32[1] = HIDWORD(v1017.f64[1]);
      if (v1017.f64[0] <= v1017.f64[1])
      {
        v1029 = v1017.f64[1];
      }

      else
      {
        v1029 = v1017.f64[0];
      }

      v1030 = v1005;
      v1031 = v1017;
      if (v1029 < 1.79769313e308)
      {
        v1032 = v1017.f64[0] >= v1017.f64[1] ? v1017.f64[1] : v1017.f64[0];
        v1030 = v1005;
        v1031 = v1017;
        if (v1032 > 0.0)
        {
          v1030 = vaddq_f64(v1005, v937.u64[0]);
          v1033.i64[1] = *&v1017.f64[1];
          *v1033.i64 = v1017.f64[0] - (*v937.i64 + *v937.i64);
          v940.f64[0] = 0.0;
          v1031 = vandq_s8(v1033, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v940, COERCE_UNSIGNED_INT64(fmin(*v1033.i64, v1017.f64[1])))).i64[0], 0));
        }
      }

      v1034 = vcltzq_f64(v1013);
      v1035 = vorrq_s8(v1034, vclezq_f64(v1031));
      if ((vorrq_s8(vdupq_laneq_s64(v1035, 1), v1035).u64[0] & 0x8000000000000000) == 0)
      {
        v1036 = vandq_s8(vcgeq_f64(vaddq_f64(v1030, v1031), vaddq_f64(v1012, v1013)), vcgeq_f64(v1012, v1030));
        if ((vandq_s8(vdupq_laneq_s64(v1036, 1), v1036).u64[0] & 0x8000000000000000) != 0)
        {
LABEL_1954:
          *&v978[3] |= 0x2000uLL;
          goto LABEL_1846;
        }
      }

      if (v1029 < 1.79769313e308)
      {
        v1037 = v1017.f64[0] >= v1017.f64[1] ? v1017.f64[1] : v1017.f64[0];
        if (v1037 > 0.0)
        {
          v1038.f64[0] = 0.0;
          *&v1038.f64[1] = v937.i64[0];
          v1005 = vaddq_f64(v1005, v1038);
          *v937.i64 = v1017.f64[1] - (*v937.i64 + *v937.i64);
          *v938.i64 = fmin(v1017.f64[0], *v937.i64);
          *&v1017.f64[1] = v937.i64[0];
          v937.i64[0] = 0;
          v1017 = vandq_s8(v1017, vdupq_lane_s64(vmvnq_s8(vcgeq_f64(v937, v938)).i64[0], 0));
        }
      }

      v1039 = vorrq_s8(v1034, vclezq_f64(v1017));
      v938 = vdupq_laneq_s64(v1039, 1);
      v937 = vorrq_s8(v938, v1039);
      if (v937.i64[0] < 0)
      {
        goto LABEL_1846;
      }

      v1016 = vandq_s8(vcgeq_f64(vaddq_f64(v1005, v1017), vaddq_f64(v1012, v1013)), vcgeq_f64(v1012, v1005));
    }

    v938 = vdupq_laneq_s64(v1016, 1);
    v937 = vandq_s8(v938, v1016);
    if ((v937.i64[0] & 0x8000000000000000) == 0)
    {
      goto LABEL_1846;
    }

    goto LABEL_1954;
  }

  if (!*(v1004 + 112))
  {
    v938.i32[0] = *(v1004 + 232);
    goto LABEL_1888;
  }

LABEL_1846:
  v982 = *(v1157 + 80);
  if (v982)
  {
    v983 = v978[21].i32[0];
    v984 = v978[21].i32[1];
    if (v983 <= v984)
    {
      v985 = v978[21].i32[1];
    }

    else
    {
      v985 = v978[21].i32[0];
    }

    v937.i32[0] = 1073741822;
    v938.i32[0] = v985;
    v986 = vdupq_lane_s32(*&vcgtq_s32(v938, v937), 0);
    v987 = v978[20];
    v988.i64[0] = v987.i32[0];
    v988.i64[1] = v987.i32[1];
    v989 = vbslq_s8(v986, vdupq_n_s64(0xFFDFFFFFFFFFFFFFLL), vcvtq_f64_s64(v988));
    v990 = v983;
    v991 = v984;
    if (v985 > 1073741822)
    {
      v990 = 1.79769313e308;
      v991 = 1.79769313e308;
    }

    v1199[0] = v989;
    *v1199[1].i64 = v990;
    *&v1199[1].i64[1] = v991;
    v992 = v978[7];
    if (v992)
    {
      CA::Mat4Impl::mat4_apply_to_rect(v992, v1199, v936);
      v993 = v1199[0];
    }

    else
    {
      v993 = vaddq_f64(v989, *v978[8].i8);
    }

    v994 = vceqzq_f64(v1199[1]);
    v995 = vorrq_s8(vdupq_laneq_s64(v994, 1), v994).u64[0];
    v996 = 0uLL;
    if ((v995 & 0x8000000000000000) == 0)
    {
      v997 = vceqq_f64(v1199[1], v1199[1]);
      if ((vornq_s8(vdupq_laneq_s64(vmvnq_s8(v997), 1), v997).u64[0] & 0x8000000000000000) == 0)
      {
        v998 = vcvtmq_s64_f64(vmaxnmq_f64(v993, vdupq_n_s64(0xC1BFFFFFFF000000)));
        v996 = vuzp1q_s32(v998, vsubq_s64(vcvtpq_s64_f64(vminnmq_f64(vaddq_f64(v993, v1199[1]), vdupq_n_s64(0x41C0000000000000uLL))), v998));
      }
    }

    CA::BoundsImpl::Union(v982, *v996.i8, *&vextq_s8(v996, v996, 8uLL));
  }

LABEL_1859:
  if (v1188.i8[10] < 0)
  {
    v1003 = *(*v1163 + 1376);
    if ((v1003 & 0x800000000) != 0 && v1149 != 6 && v1149 > ((v1003 >> 36) & 7))
    {
      *(*v1163 + 1376) = v1003 & 0xFFFFFF8FFFFFFFFFLL | ((v1149 & 7) << 36);
    }
  }

LABEL_1860:
  if (v1169)
  {
    CA::Shape::unref(v1169);
  }

  if (v1170)
  {
    CA::Shape::unref(v1170);
  }

  if (*&v1171 != 0.0)
  {
    CA::Shape::unref(v1171);
  }

  if (v1168)
  {
    v999 = v1168[1];
    if (v999)
    {
      CA::GenericRectTree<CA::Rect>::Pool::delete_node(*v1168, v999);
    }
  }

  v1000 = v1188.i64[1];
  if ((v1188.i64[1] & 0x1800000000) != 0)
  {
    *(*&v1186 + 24) |= 0x400uLL;
    goto LABEL_1872;
  }

  if (v1188.i64[1])
  {
LABEL_1872:
    if (v947)
    {
      *&v947[13] |= v1000;
    }

    if ((v1000 & 0x3F) != 0)
    {
      v1001 = v1000 | 0x20;
    }

    else
    {
      v1001 = v1188.i64[1];
    }

    v1188.i64[1] = (2 * v1001) & 0x15480000000 | v1001;
    *v1156 |= (2 * v1001) & 0x15480000000 | v1001 & 0x407C15583C06020;
  }

  v1002 = *(v1162 + 48);
  if (v1002)
  {
    *(v1002 + 24) |= *(*&v1186 + 24) & 0x14010481400;
  }

  return 1;
}