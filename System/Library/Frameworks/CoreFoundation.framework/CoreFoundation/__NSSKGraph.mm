@interface __NSSKGraph
- (BOOL)addEdgeWithH1:(unint64_t)h1 withH2:(unint64_t)h2;
- (__NSSKGraph)initWithNumberOfVertices:(int64_t)vertices numberOfEdges:(int64_t)edges;
- (edge)isAcyclic;
- (void)dealloc;
@end

@implementation __NSSKGraph

- (edge)isAcyclic
{
  v3 = malloc_type_calloc(self->_numE, 8uLL, 0x2004093837F09uLL);
  v4 = malloc_type_calloc(self->_numE, 8uLL, 0x2004093837F09uLL);
  if (self->_numE)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    do
    {
      vertices = self->_vertices;
      v9 = &self->_edges[v5];
      v10 = v9->var1[0];
      if (vertices[v10].var0 == 1 || (v10 = v9->var1[1], vertices[v10].var0 == 1))
      {
        v9->var2 = v10;
        v4[v6++] = v9;
      }

      ++v7;
      ++v5;
    }

    while (v7 < self->_numE);
    if (v6)
    {
      for (i = 0; i < v6; ++i)
      {
        v12 = v4[i];
        l_end = self->_l_end;
        self->_l_end = l_end + 1;
        v3[l_end] = v12;
        v14 = self->_vertices;
        v15 = v12->var1[1];
        v16 = &v14[v12->var1[0]];
        if (v16->var0 == 2)
        {
          v17 = v12->var1[0];
        }

        else
        {
          v17 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v14[v15].var0 == 2)
        {
          v18 = v12->var1[1];
        }

        else
        {
          v18 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v16->var1)
        {
          v19 = 0;
          var2 = v16->var2;
          do
          {
            v21 = var2[v19];
            if (v21 == v12->var0)
            {
              var2[v19] = self->_dump;
              --v16->var0;
              v21 = var2[v19];
            }

            if (v21 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            ++v19;
          }

          while (v19 < v16->var1);
          v15 = v12->var1[1];
        }

        v22 = &v14[v15];
        if (v22->var1)
        {
          v23 = 0;
          v24 = v22->var2;
          do
          {
            v25 = v24[v23];
            if (v25 == v12->var0)
            {
              v24[v23] = self->_dump;
              --v22->var0;
              v25 = v24[v23];
            }

            if (v25 == 0x7FFFFFFFFFFFFFFFLL)
            {
              break;
            }

            ++v23;
          }

          while (v23 < v22->var1);
        }

        if (v17 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v26 = &v14[v17];
          var1 = v26->var1;
          if (var1)
          {
            v28 = 0;
            v29 = v26->var2;
            dump = self->_dump;
            while (1)
            {
              v31 = v29[v28];
              if (v31 != dump)
              {
                break;
              }

              if (var1 == ++v28)
              {
                goto LABEL_37;
              }
            }

            v32 = &self->_edges[v31];
            if (v32->var2 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v4[v6++] = v32;
              v32->var2 = v17;
              dump = self->_dump;
              v29 = v26->var2;
            }

            v29[v28] = dump;
            --v26->var0;
          }
        }

LABEL_37:
        if (v18 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v33 = &self->_vertices[v18];
          v34 = v33->var1;
          if (v34)
          {
            v35 = 0;
            v36 = v33->var2;
            v37 = self->_dump;
            while (1)
            {
              v38 = v36[v35];
              if (v38 != v37)
              {
                break;
              }

              if (v34 == ++v35)
              {
                goto LABEL_46;
              }
            }

            v39 = &self->_edges[v38];
            if (v39->var2 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v4[v6++] = v39;
              v39->var2 = v18;
              v37 = self->_dump;
              v36 = v33->var2;
            }

            v36[v35] = v37;
            --v33->var0;
          }
        }

LABEL_46:
        ;
      }
    }
  }

  free(v4);
  return v3;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  free(self->_edges);
  numV = self->_numV;
  if (numV)
  {
    v4 = 24 * numV - 8;
    do
    {
      v5 = *(&self->_vertices->var0 + v4);
      if (v5)
      {
        free(v5);
      }

      v4 -= 24;
      --numV;
    }

    while (numV);
  }

  free(self->_vertices);
  v7.receiver = self;
  v7.super_class = __NSSKGraph;
  [(__NSSKGraph *)&v7 dealloc];
  v6 = *MEMORY[0x1E69E9840];
}

- (__NSSKGraph)initWithNumberOfVertices:(int64_t)vertices numberOfEdges:(int64_t)edges
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = __NSSKGraph;
  v6 = [(__NSSKGraph *)&v9 init];
  if (v6)
  {
    v6->_vertices = malloc_type_calloc(vertices, 0x18uLL, 0x1010040A79CA2DEuLL);
    v6->_edges = malloc_type_calloc(edges, 0x20uLL, 0x1000040E0EAB150uLL);
    v6->_numV = vertices;
    v6->_numE = edges;
    v6->_currE = 0;
    v6->_dump = edges + 1;
    v6->_l_end = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)addEdgeWithH1:(unint64_t)h1 withH2:(unint64_t)h2
{
  currE = self->_currE;
  edges = self->_edges;
  vertices = self->_vertices;
  v9 = &edges[currE];
  v9->var0 = currE;
  v9->var1[0] = h1;
  edges[self->_currE].var1[1] = h2;
  edges[self->_currE].var2 = 0x7FFFFFFFFFFFFFFFLL;
  v10 = &vertices[h1];
  if (v10->var0)
  {
    var1 = v10->var1;
    if (var1 - 1 == v10->var0)
    {
      v12 = 2 * var1;
      var2 = malloc_type_calloc(2 * var1, 8uLL, 0x100004000313F17uLL);
      memcpy(var2, v10->var2, 8 * v10->var1);
      free(v10->var2);
      v10->var1 = v12;
      v10->var2 = var2;
    }

    else
    {
      var2 = v10->var2;
    }
  }

  else
  {
    var2 = malloc_type_calloc(4uLL, 8uLL, 0x100004000313F17uLL);
    v10->var1 = 4;
    v10->var2 = var2;
    *var2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  var2[v10->var0] = self->_currE;
  v14 = v10->var0 + 1;
  v10->var0 = v14;
  var2[v14] = 0x7FFFFFFFFFFFFFFFLL;
  v15 = &self->_vertices[h2];
  if (v15->var0)
  {
    v16 = v15->var1;
    if (v16 - 1 == v15->var0)
    {
      v17 = 2 * v16;
      v18 = malloc_type_calloc(2 * v16, 8uLL, 0x100004000313F17uLL);
      memcpy(v18, v15->var2, 8 * v15->var1);
      free(v15->var2);
      v15->var1 = v17;
      v15->var2 = v18;
    }

    else
    {
      v18 = v15->var2;
    }
  }

  else
  {
    v18 = malloc_type_calloc(4uLL, 8uLL, 0x100004000313F17uLL);
    v15->var1 = 4;
    v15->var2 = v18;
    *v18 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v18[v15->var0] = self->_currE;
  v19 = v15->var0 + 1;
  v15->var0 = v19;
  v18[v19] = 0x7FFFFFFFFFFFFFFFLL;
  ++self->_currE;
  return 1;
}

@end