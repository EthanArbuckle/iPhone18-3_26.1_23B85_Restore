@interface _LSStackBacktrace
- (NSString)backtraceString;
- (_LSStackBacktrace)initWithBacktrace;
- (_LSStackBacktrace)initWithCoder:(id)coder;
- (_LSStackBacktrace)initWithFrames:(void *)frames count:(unint64_t)count;
- (id).cxx_construct;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LSStackBacktrace

- (_LSStackBacktrace)initWithBacktrace
{
  v6.receiver = self;
  v6.super_class = _LSStackBacktrace;
  v2 = [(_LSStackBacktrace *)&v6 init];
  v3 = v2;
  if (v2)
  {
    std::vector<void *>::resize(&v2->_frames.__begin_, 0x64uLL);
    v4 = backtrace(v3->_frames.__begin_, (v3->_frames.__end_ - v3->_frames.__begin_) >> 3);
    std::vector<void *>::resize(&v3->_frames.__begin_, v4);
    if (v3->_frames.__begin_ == v3->_frames.__end_)
    {

      return 0;
    }
  }

  return v3;
}

- (_LSStackBacktrace)initWithFrames:(void *)frames count:(unint64_t)count
{
  v20.receiver = self;
  v20.super_class = _LSStackBacktrace;
  v6 = [(_LSStackBacktrace *)&v20 init];
  v7 = v6;
  if (v6)
  {
    std::vector<void *>::reserve(&v6->_frames.__begin_, count);
    if (count)
    {
      end = v7->_frames.__end_;
      do
      {
        cap = v7->_frames.__cap_;
        if (end >= cap)
        {
          begin = v7->_frames.__begin_;
          v11 = end - begin;
          if ((v11 + 1) >> 61)
          {
            std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
          }

          v12 = cap - begin;
          v13 = v12 >> 2;
          if (v12 >> 2 <= (v11 + 1))
          {
            v13 = v11 + 1;
          }

          if (v12 >= 0x7FFFFFFFFFFFFFF8)
          {
            v14 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v14 = v13;
          }

          if (v14)
          {
            std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](&v7->_frames, v14);
          }

          *(8 * v11) = *frames;
          end = (8 * v11 + 8);
          v15 = v7->_frames.__begin_;
          v16 = v7->_frames.__end_ - v15;
          v17 = (8 * v11 - v16);
          memcpy(v17, v15, v16);
          v18 = v7->_frames.__begin_;
          v7->_frames.__begin_ = v17;
          v7->_frames.__end_ = end;
          v7->_frames.__cap_ = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          *end++ = *frames;
        }

        v7->_frames.__end_ = end;
        ++frames;
        --count;
      }

      while (count);
    }
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LSStackBacktrace alloc];
  v5 = self->_frames.__end_ - self->_frames.__begin_;

  return [_LSStackBacktrace initWithFrames:v4 count:"initWithFrames:count:"];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  backtraceString = [(_LSStackBacktrace *)self backtraceString];
  [coderCopy encodeObject:backtraceString forKey:@"backtrace"];
}

- (_LSStackBacktrace)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"frames"];
  std::vector<void *>::reserve(&self->_frames.__begin_, [v6 count]);
  for (i = 0; i < [v6 count]; ++i)
  {
    v8 = [v6 objectAtIndexedSubscript:i];
    if (v8)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedLongValue = [v8 unsignedLongValue];
        end = self->_frames.__end_;
        cap = self->_frames.__cap_;
        if (end >= cap)
        {
          begin = self->_frames.__begin_;
          v14 = end - begin;
          if ((v14 + 1) >> 61)
          {
            std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
          }

          v15 = cap - begin;
          v16 = v15 >> 2;
          if (v15 >> 2 <= (v14 + 1))
          {
            v16 = v14 + 1;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v16;
          }

          if (v17)
          {
            std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](&self->_frames, v17);
          }

          v18 = (8 * v14);
          *v18 = unsignedLongValue;
          v12 = (8 * v14 + 8);
          v19 = self->_frames.__begin_;
          v20 = (self->_frames.__end_ - v19);
          v21 = (v18 - v20);
          memcpy((v18 - v20), v19, v20);
          v22 = self->_frames.__begin_;
          self->_frames.__begin_ = v21;
          self->_frames.__end_ = v12;
          self->_frames.__cap_ = 0;
          if (v22)
          {
            operator delete(v22);
          }

          coderCopy = v5;
        }

        else
        {
          *end = unsignedLongValue;
          v12 = end + 1;
        }

        self->_frames.__end_ = v12;
      }
    }
  }

  return self;
}

- (NSString)backtraceString
{
  description = self->_description;
  if (!description)
  {
    v4 = backtrace_symbols(self->_frames.__begin_, (self->_frames.__end_ - self->_frames.__begin_) >> 3);
    memset(&v49, 0, sizeof(v49));
    v5 = self->_frames.__end_ - self->_frames.__begin_;
    std::vector<char>::reserve(&v49, 4 * v5 - (v5 >> 2));
    if ((self->_frames.__end_ - self->_frames.__begin_) >= 0x19)
    {
      v6 = 3;
      v7 = MEMORY[0x1E69E9830];
      do
      {
        v8 = v4[v6];
        if (!v8)
        {
          break;
        }

        for (i = *v8; i >= 1; i = v10)
        {
          if ((*(v7 + 4 * i + 60) & 0x400) == 0)
          {
            goto LABEL_10;
          }

          v10 = *++v8;
        }

        if (!i)
        {
          goto LABEL_77;
        }

LABEL_10:
        v11 = (v8 + 1);
        while ((i & 0x80) != 0 ? __maskrune(i, 0x4000uLL) : *(v7 + 4 * i + 60) & 0x4000)
        {
          v13 = *++v8;
          LOBYTE(i) = v13;
          ++v11;
          if (!v13)
          {
            goto LABEL_77;
          }
        }

        v14 = *v8;
        if (*v8)
        {
          while (!(v14 < 0 ? __maskrune(v14, 0x4000uLL) : *(v7 + 4 * v14 + 60) & 0x4000))
          {
            v16 = *++v8;
            v14 = v16;
            ++v11;
            if (!v16)
            {
              goto LABEL_77;
            }
          }

          v17 = *v8;
          if (*v8)
          {
            while (v17 < 0 ? __maskrune(v17, 0x4000uLL) : *(v7 + 4 * v17 + 60) & 0x4000)
            {
              v19 = *++v8;
              v17 = v19;
              ++v11;
              if (!v19)
              {
                goto LABEL_77;
              }
            }

            v20 = *v8;
            if (*v8)
            {
              while (!(v20 < 0 ? __maskrune(v20, 0x4000uLL) : *(v7 + 4 * v20 + 60) & 0x4000))
              {
                v22 = *++v8;
                v20 = v22;
                ++v11;
                if (!v22)
                {
                  goto LABEL_77;
                }
              }

              v23 = *v8;
              if (*v8)
              {
                while (v23 < 0 ? __maskrune(v23, 0x4000uLL) : *(v7 + 4 * v23 + 60) & 0x4000)
                {
                  v25 = *++v8;
                  v23 = v25;
                  ++v11;
                  if (!v25)
                  {
                    goto LABEL_77;
                  }
                }

                v26 = *v8;
                if (*v8)
                {
                  v27 = 0;
                  v28 = *v8;
                  while (v27 != 10)
                  {
                    if (aDispatch[v27] == v28)
                    {
                      v29 = &v8[v27++];
                      v28 = v29[1];
                      if (v28)
                      {
                        continue;
                      }
                    }

                    v30 = 0;
                    v31 = *v8;
                    while (v30 != 9)
                    {
                      if (aPthread[v30] == v31)
                      {
                        v32 = &v8[v30++];
                        v31 = v32[1];
                        if (v31)
                        {
                          continue;
                        }
                      }

                      v33 = 0;
                      v34 = *v8;
                      while (v33 != 14)
                      {
                        if (aStartWqthread[v33] == v34)
                        {
                          v35 = &v8[v33++];
                          v34 = v35[1];
                          if (v34)
                          {
                            continue;
                          }
                        }

                        if (v49.__begin_ != v49.__end_)
                        {
                          v48 = 32;
                          std::vector<char>::push_back[abi:nn200100](&v49, &v48);
                          v48 = 47;
                          std::vector<char>::push_back[abi:nn200100](&v49, &v48);
                          v48 = 32;
                          std::vector<char>::push_back[abi:nn200100](&v49, &v48);
                          v26 = *v8;
                        }

                        if (v26)
                        {
                          end = v49.__end_;
                          do
                          {
                            if (end >= v49.__end_cap_.__value_)
                            {
                              begin = v49.__begin_;
                              v38 = (end - v49.__begin_);
                              v39 = end - v49.__begin_ + 1;
                              if (v39 < 0)
                              {
                                std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
                              }

                              v40 = v49.__end_cap_.__value_ - v49.__begin_;
                              if (2 * (v49.__end_cap_.__value_ - v49.__begin_) > v39)
                              {
                                v39 = 2 * v40;
                              }

                              if (v40 >= 0x3FFFFFFFFFFFFFFFLL)
                              {
                                v41 = 0x7FFFFFFFFFFFFFFFLL;
                              }

                              else
                              {
                                v41 = v39;
                              }

                              if (v41)
                              {
                                operator new();
                              }

                              v42 = end - v49.__begin_;
                              *v38 = v26;
                              end = v38 + 1;
                              memcpy(0, begin, v42);
                              v49.__begin_ = 0;
                              v49.__end_ = v38 + 1;
                              v49.__end_cap_.__value_ = 0;
                              if (begin)
                              {
                                operator delete(begin);
                              }
                            }

                            else
                            {
                              *end++ = v26;
                            }

                            v49.__end_ = end;
                            v43 = *v11++;
                            LOBYTE(v26) = v43;
                          }

                          while (v43);
                        }

                        goto LABEL_77;
                      }

                      goto LABEL_76;
                    }

                    break;
                  }

LABEL_76:
                  v48 = 32;
                  std::vector<char>::push_back[abi:nn200100](&v49, &v48);
                  v48 = 46;
                  std::vector<char>::push_back[abi:nn200100](&v49, &v48);
                  v48 = 32;
                  std::vector<char>::push_back[abi:nn200100](&v49, &v48);
                }
              }
            }
          }
        }

LABEL_77:
        ++v6;
      }

      while (v6 < self->_frames.__end_ - self->_frames.__begin_);
    }

    free(v4);
    v44 = objc_alloc(MEMORY[0x1E696AEC0]);
    v45 = [v44 initWithBytes:v49.__begin_ length:v49.__end_ - v49.__begin_ encoding:4];
    v46 = self->_description;
    self->_description = v45;

    if (v49.__begin_)
    {
      v49.__end_ = v49.__begin_;
      operator delete(v49.__begin_);
    }

    description = self->_description;
  }

  return description;
}

- (id)description
{
  backtraceString = [(_LSStackBacktrace *)self backtraceString];
  if (!backtraceString)
  {
    backtraceString = [(_LSStackBacktrace *)self backtraceString];
    if (!backtraceString)
    {
      v5.receiver = self;
      v5.super_class = _LSStackBacktrace;
      backtraceString = [(_LSStackBacktrace *)&v5 description];
    }
  }

  return backtraceString;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

@end