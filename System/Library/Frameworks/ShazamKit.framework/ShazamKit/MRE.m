@interface MRE
- (BOOL)ConvertException:(const exception *)a3 toError:(id *)a4;
- (BOOL)ConvertSystemError:(const system_error *)a3 toError:(id *)a4;
- (BOOL)FillUnknownError:(id *)a3;
- (MRE)initWithMREInstance:(void *)a3 error:(id *)a4;
- (MRE)initWithSignatures:(id)a3 density:(int64_t)a4 algorithm:(int64_t)a5 error:(id *)a6;
- (id)search:(id)a3 error:(id *)a4;
- (uint64_t)search:error:;
- (void)dealloc;
- (void)search:error:;
@end

@implementation MRE

- (void)dealloc
{
  mreInstance = self->_mreInstance;
  if (mreInstance)
  {
    v4 = *mreInstance;
    *mreInstance = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4, a2);
    }

    MEMORY[0x231921F20](mreInstance, 0x20C4093837F09);
  }

  v5.receiver = self;
  v5.super_class = MRE;
  [(MRE *)&v5 dealloc];
}

- (MRE)initWithMREInstance:(void *)a3 error:(id *)a4
{
  v8.receiver = self;
  v8.super_class = MRE;
  v5 = [(MRE *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(MRE *)v5 setMreInstance:a3];
  }

  return v6;
}

- (MRE)initWithSignatures:(id)a3 density:(int64_t)a4 algorithm:(int64_t)a5 error:(id *)a6
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = a3;
  operator new();
}

- (id)search:(id)a3 error:(id *)a4
{
  v9[16] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = gsl::make_span<shazam::spectral_peak_compact_t const>([v4 bytes], objc_msgSend(v4, "length"));
  memset(&v9[7], 0, 32);
  shazam::packed_signature_view::packed_signature_view(&v8, v5, v6);
  shazam::unpack_signature<shazam::basic_signature<(shazam::signature_density)24>>(v9);
}

- (BOOL)ConvertSystemError:(const system_error *)a3 toError:(id *)a4
{
  v13[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithCString:(*(a3->var0 + 2))(a3 encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v7 = MEMORY[0x277CCA9B8];
    var0 = a3->var2.var0;
    v12 = *MEMORY[0x277CCA450];
    v13[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = [v7 errorWithDomain:@"com.shazam.sigvalidation" code:var0 userInfo:v9];
  }

  result = a4 != 0;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)ConvertException:(const exception *)a3 toError:(id *)a4
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a4)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithCString:(*(a3->var0 + 2))(a3 encoding:{a2), objc_msgSend(MEMORY[0x277CCACA8], "defaultCStringEncoding")}];
    v6 = MEMORY[0x277CCA9B8];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = v5;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
    *a4 = [v6 errorWithDomain:@"com.shazam.mre" code:-100 userInfo:v7];
  }

  result = a4 != 0;
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)FillUnknownError:(id *)a3
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277CCA450];
    v9[0] = @"Something unexpected happened.";
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
    *a3 = [v4 errorWithDomain:@"com.shazam.mre" code:-200 userInfo:v5];
  }

  result = a3 != 0;
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (uint64_t)search:error:
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (void)search:error:
{
  if (*(a2 + 32) == 1)
  {
    v3 = a2[1];
    if (*a2 != v3)
    {
      v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xD37A6F4DE9BD37A7 * ((v3 - *a2) >> 3)];
      v6 = *(a1 + 8);
      v7 = *v6;
      *v6 = v5;

      v8 = *a2;
      v9 = a2[1];
      if (*a2 != v9)
      {
        do
        {
          v10 = [MREResult alloc];
          v11 = *(v8 + 136);
          v12 = *(v8 + 104);
          LODWORD(v13) = *(v8 + 96);
          v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
          LODWORD(v15) = *(v8 + 56);
          v16 = [MEMORY[0x277CCABB0] numberWithFloat:v15];
          LODWORD(v17) = *(v8 + 124);
          v18 = [MEMORY[0x277CCABB0] numberWithFloat:v17];
          v19 = [(MREResult *)v10 initWithTrackId:v11 offset:v14 timeSkew:v16 freqSkew:v18 score:v12 / 1000.0];

          [**(a1 + 8) addObject:v19];
          v8 += 184;
        }

        while (v8 != v9);
      }
    }
  }
}

- (void)search:error:.cold.1()
{
  if (__cxa_guard_acquire(&_MergedGlobals_0))
  {
    dword_27DD3B258 = 2;
    byte_27DD3B25C = 0;
    byte_27DD3B260 = 0;
    byte_27DD3B264 = 0;
    byte_27DD3B268 = 0;
    dword_27DD3B26C = 1065353216;
    word_27DD3B270 = 0;
    dword_27DD3B274 = 0;
    LOBYTE(qword_27DD3B278) = 0;
    HIDWORD(qword_27DD3B278) = 0;
    __cxa_guard_release(&_MergedGlobals_0);
  }
}

- (void)search:error:.cold.2()
{
  if (__cxa_guard_acquire(&qword_27DD3B250))
  {
    qword_27DD3B280 = &unk_2845C5B70;
    unk_27DD3B288 = *&dword_27DD3B258;
    unk_27DD3B298 = *&byte_27DD3B268;
    qword_27DD3B2A8 = qword_27DD3B278;
    __cxa_atexit(shazam::ConstQueryConfigProvider::~ConstQueryConfigProvider, &qword_27DD3B280, &dword_230F52000);
    __cxa_guard_release(&qword_27DD3B250);
  }
}

@end