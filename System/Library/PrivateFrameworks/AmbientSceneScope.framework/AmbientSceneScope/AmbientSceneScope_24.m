void sub_23F113F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a20;
  a20 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  sub_23F08FF34(&a10);
  _Unwind_Resume(a1);
}

void sub_23F114EBC(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
    case 1:
      sub_23F0A7E4C(&v703, a3);
      v4 = *a2;
      v5 = v706;
      v6 = v703;
      if (!v703)
      {
        goto LABEL_873;
      }

      v7 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v703;
        v8 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (v711 == 1)
      {
        (*(*v6 + 96))(&v716);
      }

      else
      {
LABEL_873:
        v716 = 0;
      }

      if (v706)
      {
        v564 = v707;
        if (v707)
        {
          v565 = v709;
          v566 = v705;
          if (v710 == 1 && v705)
          {
            v567 = v703;
            v568 = v704;
            if (v704)
            {
              atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v568->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v569 = v567;
                (v568->__on_zero_shared)(v568);
                std::__shared_weak_count::__release_weak(v568);
                v567 = v569;
              }
            }

            (*(*v567 + 88))(v567, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v566 = v705;
          }

          v570 = v564 - 1;
          if (v564 != 1)
          {
            v571 = 0;
            do
            {
              if (v5)
              {
                v572 = v5;
                v573 = v566;
                do
                {
                  sub_23F2F4C14(v4, v573++);
                  --v572;
                }

                while (v572);
              }

              v566 += v565;
              ++v571;
            }

            while (v571 != v570);
          }

          for (; v5; --v5)
          {
            sub_23F2F4C14(v4, v566++);
          }
        }
      }

      break;
    case 2:
      sub_23F0A82B4(&v703, a3);
      v178 = *a2;
      v179 = v706;
      v180 = v703;
      if (!v703)
      {
        goto LABEL_857;
      }

      v181 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

        v180 = v703;
        v182 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v183 = v180;
            (v182->__on_zero_shared)(v182);
            std::__shared_weak_count::__release_weak(v182);
            v180 = v183;
          }
        }
      }

      if (v711 == 1)
      {
        (*(*v180 + 96))(&v716);
      }

      else
      {
LABEL_857:
        v716 = 0;
      }

      if (v706)
      {
        v553 = v707;
        if (v707)
        {
          v554 = v709;
          v555 = v705;
          if (v710 == 1 && v705)
          {
            v556 = v703;
            v557 = v704;
            if (v704)
            {
              atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v557->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v558 = v556;
                (v557->__on_zero_shared)(v557);
                std::__shared_weak_count::__release_weak(v557);
                v556 = v558;
              }
            }

            (*(*v556 + 88))(v556, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v555 = v705;
          }

          v559 = 2 * v179;
          v560 = v553 - 1;
          if (v553 != 1)
          {
            v561 = 0;
            do
            {
              if (v179)
              {
                v562 = 2 * v179;
                v563 = v555;
                do
                {
                  sub_23F2F51B0(v178, v563++);
                  v562 -= 2;
                }

                while (v562);
              }

              v555 += v554;
              ++v561;
            }

            while (v561 != v560);
          }

          if (v179)
          {
            do
            {
              sub_23F2F51B0(v178, v555++);
              v559 -= 2;
            }

            while (v559);
          }
        }
      }

      break;
    case 3:
      sub_23F0A8794(&v703, a3);
      v172 = *a2;
      v173 = v706;
      v174 = v703;
      if (!v703)
      {
        goto LABEL_838;
      }

      v175 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v175->__on_zero_shared)(v175);
          std::__shared_weak_count::__release_weak(v175);
        }

        v174 = v703;
        v176 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v177 = v174;
            (v176->__on_zero_shared)(v176);
            std::__shared_weak_count::__release_weak(v176);
            v174 = v177;
          }
        }
      }

      if (v711 == 1)
      {
        (*(*v174 + 96))(&v716);
      }

      else
      {
LABEL_838:
        v716 = 0;
      }

      if (!v706)
      {
        break;
      }

      v542 = v707;
      if (!v707)
      {
        break;
      }

      v543 = v709;
      v544 = v705;
      if (v710 == 1 && v705)
      {
        v545 = v703;
        v546 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v546->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v547 = v545;
            (v546->__on_zero_shared)(v546);
            std::__shared_weak_count::__release_weak(v546);
            v545 = v547;
          }
        }

        (*(*v545 + 88))(v545, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v544 = v705;
      }

      v548 = v542 - 1;
      if (v542 == 1)
      {
        goto LABEL_853;
      }

      if (v173)
      {
        v549 = 0;
        do
        {
          v550 = 2 * v173;
          v551 = v544;
          do
          {
            sub_23F2F61F0(v172, v551++);
            v550 -= 2;
          }

          while (v550);
          v544 += v543;
          ++v549;
        }

        while (v549 != v548);
LABEL_853:
        if (v173)
        {
          v552 = 2 * v173;
          do
          {
            sub_23F2F61F0(v172, v544++);
            v552 -= 2;
          }

          while (v552);
        }
      }

      break;
    case 4:
      sub_23F0A9244(&v703, a3);
      v106 = *a2;
      v107 = v706;
      v108 = v703;
      if (!v703)
      {
        goto LABEL_649;
      }

      v109 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v109->__on_zero_shared)(v109);
          std::__shared_weak_count::__release_weak(v109);
        }

        v108 = v703;
        v110 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v111 = v108;
            (v110->__on_zero_shared)(v110);
            std::__shared_weak_count::__release_weak(v110);
            v108 = v111;
          }
        }
      }

      if (v711 == 1)
      {
        (*(*v108 + 96))(&v716);
      }

      else
      {
LABEL_649:
        v716 = 0;
      }

      if (v706)
      {
        v420 = v707;
        if (v707)
        {
          v421 = v709;
          v422 = v705;
          if (v710 == 1 && v705)
          {
            v423 = v703;
            v424 = v704;
            if (v704)
            {
              atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
              if (!atomic_fetch_add(&v424->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                v425 = v423;
                (v424->__on_zero_shared)(v424);
                std::__shared_weak_count::__release_weak(v424);
                v423 = v425;
              }
            }

            (*(*v423 + 88))(v423, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
            v422 = v705;
          }

          v426 = 4 * v107;
          v427 = v420 - 1;
          if (v420 != 1)
          {
            v428 = 0;
            do
            {
              if (v107)
              {
                v429 = 4 * v107;
                v430 = v422;
                do
                {
                  sub_23F2F6564(v106, v430++);
                  v429 -= 4;
                }

                while (v429);
              }

              v422 += v421;
              ++v428;
            }

            while (v428 != v427);
          }

          if (v107)
          {
            do
            {
              sub_23F2F6564(v106, v422++);
              v426 -= 4;
            }

            while (v426);
          }
        }
      }

      break;
    case 5:
      sub_23F0A9CF4(&v703, a3);
      v154 = *a2;
      v155 = v713;
      v156 = v703;
      if (!v703)
      {
        goto LABEL_787;
      }

      v157 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v157->__on_zero_shared)(v157);
          std::__shared_weak_count::__release_weak(v157);
        }

        v156 = v703;
        v158 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v159 = v156;
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
            v156 = v159;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v156 + 96))(&v716);
      }

      else
      {
LABEL_787:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v509 = v708;
          if (v708)
          {
            v510 = v712;
            v511 = v705;
            if (v714 == 1 && v705)
            {
              v512 = v703;
              v513 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v513->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v514 = v512;
                  (v513->__on_zero_shared)(v513);
                  std::__shared_weak_count::__release_weak(v513);
                  v512 = v514;
                }
              }

              (*(*v512 + 88))(v512, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v511 = v705;
            }

            v515 = (2 * v155);
            v516 = v509 - 1;
            if (v516)
            {
              for (i = 0; i != v516; ++i)
              {
                if (v515)
                {
                  v518 = v515;
                  v519 = v511;
                  do
                  {
                    sub_23F2F4C14(v154, v519++);
                    --v518;
                  }

                  while (v518);
                }

                v511 += v510;
              }
            }

            for (; v515; --v515)
            {
              sub_23F2F4C14(v154, v511++);
            }
          }
        }
      }

      break;
    case 6:
      sub_23F0AA74C(&v703, a3);
      v100 = *a2;
      v101 = v713;
      v102 = v703;
      if (!v703)
      {
        goto LABEL_632;
      }

      v103 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v103->__on_zero_shared)(v103);
          std::__shared_weak_count::__release_weak(v103);
        }

        v102 = v703;
        v104 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v105 = v102;
            (v104->__on_zero_shared)(v104);
            std::__shared_weak_count::__release_weak(v104);
            v102 = v105;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v102 + 96))(&v716);
      }

      else
      {
LABEL_632:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v409 = v708;
          if (v708)
          {
            v410 = v712;
            v411 = v705;
            if (v714 == 1 && v705)
            {
              v412 = v703;
              v413 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v413->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v414 = v412;
                  (v413->__on_zero_shared)(v413);
                  std::__shared_weak_count::__release_weak(v413);
                  v412 = v414;
                }
              }

              (*(*v412 + 88))(v412, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v411 = v705;
            }

            v415 = (2 * v101);
            v416 = v409 - 1;
            if (v416)
            {
              for (j = 0; j != v416; ++j)
              {
                if (v415)
                {
                  v418 = 2 * v415;
                  v419 = v411;
                  do
                  {
                    sub_23F2F51B0(v100, v419++);
                    v418 -= 2;
                  }

                  while (v418);
                }

                v411 += v410;
              }
            }

            if (v415)
            {
              v690 = 2 * v415;
              do
              {
                sub_23F2F51B0(v100, v411++);
                v690 -= 2;
              }

              while (v690);
            }
          }
        }
      }

      break;
    case 7:
      sub_23F0AB1A4(&v703, a3);
      v70 = *a2;
      v71 = v713;
      v72 = v703;
      if (!v703)
      {
        goto LABEL_538;
      }

      v73 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v73->__on_zero_shared)(v73);
          std::__shared_weak_count::__release_weak(v73);
        }

        v72 = v703;
        v74 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v75 = v72;
            (v74->__on_zero_shared)(v74);
            std::__shared_weak_count::__release_weak(v74);
            v72 = v75;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v72 + 96))(&v716);
      }

      else
      {
LABEL_538:
        v716 = 0;
      }

      if (!v706)
      {
        break;
      }

      if (!v707)
      {
        break;
      }

      v352 = v708;
      if (!v708)
      {
        break;
      }

      v353 = v712;
      v354 = v705;
      if (v714 == 1 && v705)
      {
        v355 = v703;
        v356 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v356->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v357 = v355;
            (v356->__on_zero_shared)(v356);
            std::__shared_weak_count::__release_weak(v356);
            v355 = v357;
          }
        }

        (*(*v355 + 88))(v355, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v354 = v705;
      }

      v358 = (2 * v71);
      v359 = v352 - 1;
      if (!v359)
      {
        goto LABEL_554;
      }

      if (v358)
      {
        for (k = 0; k != v359; ++k)
        {
          v361 = 2 * v358;
          v362 = v354;
          do
          {
            sub_23F2F61F0(v70, v362++);
            v361 -= 2;
          }

          while (v361);
          v354 += v353;
        }

LABEL_554:
        if (v358)
        {
          v363 = 2 * v358;
          do
          {
            sub_23F2F61F0(v70, v354++);
            v363 -= 2;
          }

          while (v363);
        }
      }

      break;
    case 8:
      sub_23F0ABBFC(&v703, a3);
      v166 = *a2;
      v167 = v713;
      v168 = v703;
      if (!v703)
      {
        goto LABEL_821;
      }

      v169 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }

        v168 = v703;
        v170 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v171 = v168;
            (v170->__on_zero_shared)(v170);
            std::__shared_weak_count::__release_weak(v170);
            v168 = v171;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v168 + 96))(&v716);
      }

      else
      {
LABEL_821:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v531 = v708;
          if (v708)
          {
            v532 = v712;
            v533 = v705;
            if (v714 == 1 && v705)
            {
              v534 = v703;
              v535 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v535->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v536 = v534;
                  (v535->__on_zero_shared)(v535);
                  std::__shared_weak_count::__release_weak(v535);
                  v534 = v536;
                }
              }

              (*(*v534 + 88))(v534, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v533 = v705;
            }

            v537 = (2 * v167);
            v538 = v531 - 1;
            if (v538)
            {
              for (m = 0; m != v538; ++m)
              {
                if (v537)
                {
                  v540 = 4 * v537;
                  v541 = v533;
                  do
                  {
                    sub_23F2F6564(v166, v541++);
                    v540 -= 4;
                  }

                  while (v540);
                }

                v533 += v532;
              }
            }

            if (v537)
            {
              v697 = 4 * v537;
              do
              {
                sub_23F2F6564(v166, v533++);
                v697 -= 4;
              }

              while (v697);
            }
          }
        }
      }

      break;
    case 9:
      sub_23F0AC654(&v703, a3);
      v148 = *a2;
      v149 = v713;
      v150 = v703;
      if (!v703)
      {
        goto LABEL_770;
      }

      v151 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        v150 = v703;
        v152 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v153 = v150;
            (v152->__on_zero_shared)(v152);
            std::__shared_weak_count::__release_weak(v152);
            v150 = v153;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v150 + 96))(&v716);
      }

      else
      {
LABEL_770:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v498 = v708;
          if (v708)
          {
            v499 = v712;
            v500 = v705;
            if (v714 == 1 && v705)
            {
              v501 = v703;
              v502 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v502->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v503 = v501;
                  (v502->__on_zero_shared)(v502);
                  std::__shared_weak_count::__release_weak(v502);
                  v501 = v503;
                }
              }

              (*(*v501 + 88))(v501, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v500 = v705;
            }

            v504 = (3 * v149);
            v505 = v498 - 1;
            if (v498 != 1)
            {
              v506 = 0;
              do
              {
                if (v149)
                {
                  v507 = (3 * v149);
                  v508 = v500;
                  do
                  {
                    sub_23F2F4C14(v148, v508++);
                    --v507;
                  }

                  while (v507);
                }

                v500 += v499;
                ++v506;
              }

              while (v506 != v505);
            }

            if (3 * v149)
            {
              do
              {
                sub_23F2F4C14(v148, v500++);
                --v504;
              }

              while (v504);
            }
          }
        }
      }

      break;
    case 10:
      sub_23F0AD0AC(&v703, a3);
      v196 = *a2;
      v197 = v713;
      v198 = v703;
      if (!v703)
      {
        goto LABEL_926;
      }

      v199 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v199->__on_zero_shared)(v199);
          std::__shared_weak_count::__release_weak(v199);
        }

        v198 = v703;
        v200 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v201 = v198;
            (v200->__on_zero_shared)(v200);
            std::__shared_weak_count::__release_weak(v200);
            v198 = v201;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v198 + 96))(&v716);
      }

      else
      {
LABEL_926:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v596 = v708;
          if (v708)
          {
            v597 = v712;
            v598 = v705;
            if (v714 == 1 && v705)
            {
              v599 = v703;
              v600 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v600->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v601 = v599;
                  (v600->__on_zero_shared)(v600);
                  std::__shared_weak_count::__release_weak(v600);
                  v599 = v601;
                }
              }

              (*(*v599 + 88))(v599, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v598 = v705;
            }

            v602 = v596 - 1;
            if (v596 != 1)
            {
              v603 = 0;
              do
              {
                if (v197)
                {
                  v604 = 2 * (3 * v197);
                  v605 = v598;
                  do
                  {
                    sub_23F2F51B0(v196, v605++);
                    v604 -= 2;
                  }

                  while (v604);
                }

                v598 += v597;
                ++v603;
              }

              while (v603 != v602);
            }

            if (3 * v197)
            {
              v698 = 2 * (3 * v197);
              do
              {
                sub_23F2F51B0(v196, v598++);
                v698 -= 2;
              }

              while (v698);
            }
          }
        }
      }

      break;
    case 11:
      sub_23F0ADB04(&v703, a3);
      v190 = *a2;
      v191 = v713;
      v192 = v703;
      if (!v703)
      {
        goto LABEL_906;
      }

      v193 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v193->__on_zero_shared)(v193);
          std::__shared_weak_count::__release_weak(v193);
        }

        v192 = v703;
        v194 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v195 = v192;
            (v194->__on_zero_shared)(v194);
            std::__shared_weak_count::__release_weak(v194);
            v192 = v195;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v192 + 96))(&v716);
      }

      else
      {
LABEL_906:
        v716 = 0;
      }

      if (!v706)
      {
        break;
      }

      if (!v707)
      {
        break;
      }

      v585 = v708;
      if (!v708)
      {
        break;
      }

      v586 = v712;
      v587 = v705;
      if (v714 == 1 && v705)
      {
        v588 = v703;
        v589 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v589->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v590 = v588;
            (v589->__on_zero_shared)(v589);
            std::__shared_weak_count::__release_weak(v589);
            v588 = v590;
          }
        }

        (*(*v588 + 88))(v588, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v587 = v705;
      }

      v591 = v585 - 1;
      if (v585 == 1)
      {
        goto LABEL_922;
      }

      if (v191)
      {
        v592 = 0;
        do
        {
          v593 = 2 * (3 * v191);
          v594 = v587;
          do
          {
            sub_23F2F61F0(v190, v594++);
            v593 -= 2;
          }

          while (v593);
          v587 += v586;
          ++v592;
        }

        while (v592 != v591);
LABEL_922:
        if (v191)
        {
          v595 = 2 * (3 * v191);
          do
          {
            sub_23F2F61F0(v190, v587++);
            v595 -= 2;
          }

          while (v595);
        }
      }

      break;
    case 12:
      sub_23F0AE55C(&v703, a3);
      v28 = *a2;
      v29 = v713;
      v30 = v703;
      if (!v703)
      {
        goto LABEL_419;
      }

      v31 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v30 = v703;
        v32 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = v30;
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
            v30 = v33;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v30 + 96))(&v716);
      }

      else
      {
LABEL_419:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v278 = v708;
          if (v708)
          {
            v279 = v712;
            v280 = v705;
            if (v714 == 1 && v705)
            {
              v281 = v703;
              v282 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v282->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v283 = v281;
                  (v282->__on_zero_shared)(v282);
                  std::__shared_weak_count::__release_weak(v282);
                  v281 = v283;
                }
              }

              (*(*v281 + 88))(v281, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v280 = v705;
            }

            v284 = v278 - 1;
            if (v278 != 1)
            {
              v285 = 0;
              do
              {
                if (v29)
                {
                  v286 = 4 * (3 * v29);
                  v287 = v280;
                  do
                  {
                    sub_23F2F6564(v28, v287++);
                    v286 -= 4;
                  }

                  while (v286);
                }

                v280 += v279;
                ++v285;
              }

              while (v285 != v284);
            }

            if (3 * v29)
            {
              v683 = 4 * (3 * v29);
              do
              {
                sub_23F2F6564(v28, v280++);
                v683 -= 4;
              }

              while (v683);
            }
          }
        }
      }

      break;
    case 13:
      sub_23F0AEFB4(&v703, a3);
      v52 = *a2;
      v53 = v713;
      v54 = v703;
      if (!v703)
      {
        goto LABEL_487;
      }

      v55 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v54 = v703;
        v56 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v57 = v54;
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
            v54 = v57;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v54 + 96))(&v716);
      }

      else
      {
LABEL_487:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v320 = v708;
          if (v708)
          {
            v321 = v712;
            v322 = v705;
            if (v714 == 1 && v705)
            {
              v323 = v703;
              v324 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v324->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v325 = v323;
                  (v324->__on_zero_shared)(v324);
                  std::__shared_weak_count::__release_weak(v324);
                  v323 = v325;
                }
              }

              (*(*v323 + 88))(v323, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v322 = v705;
            }

            v326 = (4 * v53);
            v327 = v320 - 1;
            if (v327)
            {
              for (n = 0; n != v327; ++n)
              {
                if (v326)
                {
                  v329 = v326;
                  v330 = v322;
                  do
                  {
                    sub_23F2F4C14(v52, v330++);
                    --v329;
                  }

                  while (v329);
                }

                v322 += v321;
              }
            }

            for (; v326; --v326)
            {
              sub_23F2F4C14(v52, v322++);
            }
          }
        }
      }

      break;
    case 14:
      sub_23F0AFA0C(&v703, a3);
      v46 = *a2;
      v47 = v713;
      v48 = v703;
      if (!v703)
      {
        goto LABEL_470;
      }

      v49 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        v48 = v703;
        v50 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v51 = v48;
            (v50->__on_zero_shared)(v50);
            std::__shared_weak_count::__release_weak(v50);
            v48 = v51;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v48 + 96))(&v716);
      }

      else
      {
LABEL_470:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v309 = v708;
          if (v708)
          {
            v310 = v712;
            v311 = v705;
            if (v714 == 1 && v705)
            {
              v312 = v703;
              v313 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v313->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v314 = v312;
                  (v313->__on_zero_shared)(v313);
                  std::__shared_weak_count::__release_weak(v313);
                  v312 = v314;
                }
              }

              (*(*v312 + 88))(v312, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v311 = v705;
            }

            v315 = (4 * v47);
            v316 = v309 - 1;
            if (v316)
            {
              for (ii = 0; ii != v316; ++ii)
              {
                if (v315)
                {
                  v318 = 2 * v315;
                  v319 = v311;
                  do
                  {
                    sub_23F2F51B0(v46, v319++);
                    v318 -= 2;
                  }

                  while (v318);
                }

                v311 += v310;
              }
            }

            if (v315)
            {
              v685 = 2 * v315;
              do
              {
                sub_23F2F51B0(v46, v311++);
                v685 -= 2;
              }

              while (v685);
            }
          }
        }
      }

      break;
    case 15:
      sub_23F0B0464(&v703, a3);
      v220 = *a2;
      v221 = v713;
      v222 = v703;
      if (!v703)
      {
        goto LABEL_994;
      }

      v223 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v223->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v223->__on_zero_shared)(v223);
          std::__shared_weak_count::__release_weak(v223);
        }

        v222 = v703;
        v224 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v225 = v222;
            (v224->__on_zero_shared)(v224);
            std::__shared_weak_count::__release_weak(v224);
            v222 = v225;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v222 + 96))(&v716);
      }

      else
      {
LABEL_994:
        v716 = 0;
      }

      if (!v706)
      {
        break;
      }

      if (!v707)
      {
        break;
      }

      v638 = v708;
      if (!v708)
      {
        break;
      }

      v639 = v712;
      v640 = v705;
      if (v714 == 1 && v705)
      {
        v641 = v703;
        v642 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v642->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v643 = v641;
            (v642->__on_zero_shared)(v642);
            std::__shared_weak_count::__release_weak(v642);
            v641 = v643;
          }
        }

        (*(*v641 + 88))(v641, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v640 = v705;
      }

      v644 = (4 * v221);
      v645 = v638 - 1;
      if (!v645)
      {
        goto LABEL_1010;
      }

      if (v644)
      {
        for (jj = 0; jj != v645; ++jj)
        {
          v647 = 2 * v644;
          v648 = v640;
          do
          {
            sub_23F2F61F0(v220, v648++);
            v647 -= 2;
          }

          while (v647);
          v640 += v639;
        }

LABEL_1010:
        if (v644)
        {
          v649 = 2 * v644;
          do
          {
            sub_23F2F61F0(v220, v640++);
            v649 -= 2;
          }

          while (v649);
        }
      }

      break;
    case 16:
      sub_23F0B0EBC(&v703, a3);
      v160 = *a2;
      v161 = v713;
      v162 = v703;
      if (!v703)
      {
        goto LABEL_804;
      }

      v163 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v163->__on_zero_shared)(v163);
          std::__shared_weak_count::__release_weak(v163);
        }

        v162 = v703;
        v164 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v165 = v162;
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
            v162 = v165;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v162 + 96))(&v716);
      }

      else
      {
LABEL_804:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v520 = v708;
          if (v708)
          {
            v521 = v712;
            v522 = v705;
            if (v714 == 1 && v705)
            {
              v523 = v703;
              v524 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v524->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v525 = v523;
                  (v524->__on_zero_shared)(v524);
                  std::__shared_weak_count::__release_weak(v524);
                  v523 = v525;
                }
              }

              (*(*v523 + 88))(v523, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v522 = v705;
            }

            v526 = (4 * v161);
            v527 = v520 - 1;
            if (v527)
            {
              for (kk = 0; kk != v527; ++kk)
              {
                if (v526)
                {
                  v529 = 4 * v526;
                  v530 = v522;
                  do
                  {
                    sub_23F2F6564(v160, v530++);
                    v529 -= 4;
                  }

                  while (v529);
                }

                v522 += v521;
              }
            }

            if (v526)
            {
              v696 = 4 * v526;
              do
              {
                sub_23F2F6564(v160, v522++);
                v696 -= 4;
              }

              while (v696);
            }
          }
        }
      }

      break;
    case 17:
      sub_23F0B1914(&v703, a3);
      v226 = *a2;
      v227 = v713;
      v228 = v703;
      if (!v703)
      {
        goto LABEL_1014;
      }

      v229 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v229->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v229->__on_zero_shared)(v229);
          std::__shared_weak_count::__release_weak(v229);
        }

        v228 = v703;
        v230 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v230->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v231 = v228;
            (v230->__on_zero_shared)(v230);
            std::__shared_weak_count::__release_weak(v230);
            v228 = v231;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v228 + 96))(&v716);
      }

      else
      {
LABEL_1014:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v650 = v708;
          if (v708)
          {
            v651 = v712;
            v652 = v705;
            if (v714 == 1 && v705)
            {
              v653 = v703;
              v654 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v654->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v655 = v653;
                  (v654->__on_zero_shared)(v654);
                  std::__shared_weak_count::__release_weak(v654);
                  v653 = v655;
                }
              }

              (*(*v653 + 88))(v653, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v652 = v705;
            }

            v656 = (3 * v227);
            v657 = v650 - 1;
            if (v650 != 1)
            {
              v658 = 0;
              do
              {
                if (v227)
                {
                  v659 = (3 * v227);
                  v660 = v652;
                  do
                  {
                    sub_23F2F4C14(v226, v660++);
                    --v659;
                  }

                  while (v659);
                }

                v652 += v651;
                ++v658;
              }

              while (v658 != v657);
            }

            if (3 * v227)
            {
              do
              {
                sub_23F2F4C14(v226, v652++);
                --v656;
              }

              while (v656);
            }
          }
        }
      }

      break;
    case 18:
      sub_23F0B236C(&v703, a3);
      v64 = *a2;
      v65 = v713;
      v66 = v703;
      if (!v703)
      {
        goto LABEL_521;
      }

      v67 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v67->__on_zero_shared)(v67);
          std::__shared_weak_count::__release_weak(v67);
        }

        v66 = v703;
        v68 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v69 = v66;
            (v68->__on_zero_shared)(v68);
            std::__shared_weak_count::__release_weak(v68);
            v66 = v69;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v66 + 96))(&v716);
      }

      else
      {
LABEL_521:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v342 = v708;
          if (v708)
          {
            v343 = v712;
            v344 = v705;
            if (v714 == 1 && v705)
            {
              v345 = v703;
              v346 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v346->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v347 = v345;
                  (v346->__on_zero_shared)(v346);
                  std::__shared_weak_count::__release_weak(v346);
                  v345 = v347;
                }
              }

              (*(*v345 + 88))(v345, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v344 = v705;
            }

            v348 = v342 - 1;
            if (v342 != 1)
            {
              v349 = 0;
              do
              {
                if (v65)
                {
                  v350 = 2 * (3 * v65);
                  v351 = v344;
                  do
                  {
                    sub_23F2F51B0(v64, v351++);
                    v350 -= 2;
                  }

                  while (v350);
                }

                v344 += v343;
                ++v349;
              }

              while (v349 != v348);
            }

            if (3 * v65)
            {
              v687 = 2 * (3 * v65);
              do
              {
                sub_23F2F51B0(v64, v344++);
                v687 -= 2;
              }

              while (v687);
            }
          }
        }
      }

      break;
    case 19:
      sub_23F0B2DC4(&v703, a3);
      v16 = *a2;
      v17 = v713;
      v18 = v703;
      if (!v703)
      {
        goto LABEL_382;
      }

      v19 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v703;
        v20 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v18 + 96))(&v716);
      }

      else
      {
LABEL_382:
        v716 = 0;
      }

      if (!v706)
      {
        break;
      }

      if (!v707)
      {
        break;
      }

      v256 = v708;
      if (!v708)
      {
        break;
      }

      v257 = v712;
      v258 = v705;
      if (v714 == 1 && v705)
      {
        v259 = v703;
        v260 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v260->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v261 = v259;
            (v260->__on_zero_shared)(v260);
            std::__shared_weak_count::__release_weak(v260);
            v259 = v261;
          }
        }

        (*(*v259 + 88))(v259, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v258 = v705;
      }

      v262 = v256 - 1;
      if (v256 == 1)
      {
        goto LABEL_398;
      }

      if (v17)
      {
        v263 = 0;
        do
        {
          v264 = 2 * (3 * v17);
          v265 = v258;
          do
          {
            sub_23F2F61F0(v16, v265++);
            v264 -= 2;
          }

          while (v264);
          v258 += v257;
          ++v263;
        }

        while (v263 != v262);
LABEL_398:
        if (v17)
        {
          v266 = 2 * (3 * v17);
          do
          {
            sub_23F2F61F0(v16, v258++);
            v266 -= 2;
          }

          while (v266);
        }
      }

      break;
    case 20:
      sub_23F0B381C(&v703, a3);
      v208 = *a2;
      v209 = v713;
      v210 = v703;
      if (!v703)
      {
        goto LABEL_960;
      }

      v211 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v211->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v211->__on_zero_shared)(v211);
          std::__shared_weak_count::__release_weak(v211);
        }

        v210 = v703;
        v212 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v213 = v210;
            (v212->__on_zero_shared)(v212);
            std::__shared_weak_count::__release_weak(v212);
            v210 = v213;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v210 + 96))(&v716);
      }

      else
      {
LABEL_960:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v617 = v708;
          if (v708)
          {
            v618 = v712;
            v619 = v705;
            if (v714 == 1 && v705)
            {
              v620 = v703;
              v621 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v621->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v622 = v620;
                  (v621->__on_zero_shared)(v621);
                  std::__shared_weak_count::__release_weak(v621);
                  v620 = v622;
                }
              }

              (*(*v620 + 88))(v620, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v619 = v705;
            }

            v623 = v617 - 1;
            if (v617 != 1)
            {
              v624 = 0;
              do
              {
                if (v209)
                {
                  v625 = 4 * (3 * v209);
                  v626 = v619;
                  do
                  {
                    sub_23F2F6564(v208, v626++);
                    v625 -= 4;
                  }

                  while (v625);
                }

                v619 += v618;
                ++v624;
              }

              while (v624 != v623);
            }

            if (3 * v209)
            {
              v699 = 4 * (3 * v209);
              do
              {
                sub_23F2F6564(v208, v619++);
                v699 -= 4;
              }

              while (v699);
            }
          }
        }
      }

      break;
    case 21:
      sub_23F0B41FC(&v703, a3);
      v238 = *a2;
      v239 = v713;
      v240 = v703;
      if (!v703)
      {
        goto LABEL_1051;
      }

      v241 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v241->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v241->__on_zero_shared)(v241);
          std::__shared_weak_count::__release_weak(v241);
        }

        v240 = v703;
        v242 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v242->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v243 = v240;
            (v242->__on_zero_shared)(v242);
            std::__shared_weak_count::__release_weak(v242);
            v240 = v243;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v240 + 96))(&v716);
      }

      else
      {
LABEL_1051:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v672 = v708;
          if (v708)
          {
            v673 = v712;
            v674 = v705;
            if (v714 == 1 && v705)
            {
              v675 = v703;
              v676 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v676->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v677 = v675;
                  (v676->__on_zero_shared)(v676);
                  std::__shared_weak_count::__release_weak(v676);
                  v675 = v677;
                }
              }

              (*(*v675 + 88))(v675, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v674 = v705;
            }

            v678 = (3 * v239);
            v679 = v672 - 1;
            if (v672 != 1)
            {
              v680 = 0;
              do
              {
                if (v239)
                {
                  v681 = (3 * v239);
                  v682 = v674;
                  do
                  {
                    sub_23F2F4C14(v238, v682++);
                    --v681;
                  }

                  while (v681);
                }

                v674 += v673;
                ++v680;
              }

              while (v680 != v679);
            }

            if (3 * v239)
            {
              do
              {
                sub_23F2F4C14(v238, v674++);
                --v678;
              }

              while (v678);
            }
          }
        }
      }

      break;
    case 22:
      sub_23F0B46DC(&v703, a3);
      v82 = *a2;
      v83 = v713;
      v84 = v703;
      if (!v703)
      {
        goto LABEL_578;
      }

      v85 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v703;
        v86 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v84 + 96))(&v716);
      }

      else
      {
LABEL_578:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v376 = v708;
          if (v708)
          {
            v377 = v712;
            v378 = v705;
            if (v714 == 1 && v705)
            {
              v379 = v703;
              v380 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v380->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v381 = v379;
                  (v380->__on_zero_shared)(v380);
                  std::__shared_weak_count::__release_weak(v380);
                  v379 = v381;
                }
              }

              (*(*v379 + 88))(v379, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v378 = v705;
            }

            v382 = v376 - 1;
            if (v376 != 1)
            {
              v383 = 0;
              do
              {
                if (v83)
                {
                  v384 = 2 * (3 * v83);
                  v385 = v378;
                  do
                  {
                    sub_23F2F51B0(v82, v385++);
                    v384 -= 2;
                  }

                  while (v384);
                }

                v378 += v377;
                ++v383;
              }

              while (v383 != v382);
            }

            if (3 * v83)
            {
              v688 = 2 * (3 * v83);
              do
              {
                sub_23F2F51B0(v82, v378++);
                v688 -= 2;
              }

              while (v688);
            }
          }
        }
      }

      break;
    case 23:
      sub_23F0B518C(&v703, a3);
      v232 = *a2;
      v233 = v713;
      v234 = v703;
      if (!v703)
      {
        goto LABEL_1031;
      }

      v235 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v235->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v235->__on_zero_shared)(v235);
          std::__shared_weak_count::__release_weak(v235);
        }

        v234 = v703;
        v236 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v236->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v237 = v234;
            (v236->__on_zero_shared)(v236);
            std::__shared_weak_count::__release_weak(v236);
            v234 = v237;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v234 + 96))(&v716);
      }

      else
      {
LABEL_1031:
        v716 = 0;
      }

      if (!v706)
      {
        break;
      }

      if (!v707)
      {
        break;
      }

      v661 = v708;
      if (!v708)
      {
        break;
      }

      v662 = v712;
      v663 = v705;
      if (v714 == 1 && v705)
      {
        v664 = v703;
        v665 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v665->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v666 = v664;
            (v665->__on_zero_shared)(v665);
            std::__shared_weak_count::__release_weak(v665);
            v664 = v666;
          }
        }

        (*(*v664 + 88))(v664, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v663 = v705;
      }

      v667 = v661 - 1;
      if (v661 == 1)
      {
        goto LABEL_1047;
      }

      if (v233)
      {
        v668 = 0;
        do
        {
          v669 = 2 * (3 * v233);
          v670 = v663;
          do
          {
            sub_23F2F61F0(v232, v670++);
            v669 -= 2;
          }

          while (v669);
          v663 += v662;
          ++v668;
        }

        while (v668 != v667);
LABEL_1047:
        if (v233)
        {
          v671 = 2 * (3 * v233);
          do
          {
            sub_23F2F61F0(v232, v663++);
            v671 -= 2;
          }

          while (v671);
        }
      }

      break;
    case 24:
      sub_23F0B5C3C(&v703, a3);
      v40 = *a2;
      v41 = v713;
      v42 = v703;
      if (!v703)
      {
        goto LABEL_453;
      }

      v43 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v703;
        v44 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v42 + 96))(&v716);
      }

      else
      {
LABEL_453:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v299 = v708;
          if (v708)
          {
            v300 = v712;
            v301 = v705;
            if (v714 == 1 && v705)
            {
              v302 = v703;
              v303 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v303->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v304 = v302;
                  (v303->__on_zero_shared)(v303);
                  std::__shared_weak_count::__release_weak(v303);
                  v302 = v304;
                }
              }

              (*(*v302 + 88))(v302, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v301 = v705;
            }

            v305 = v299 - 1;
            if (v299 != 1)
            {
              v306 = 0;
              do
              {
                if (v41)
                {
                  v307 = 4 * (3 * v41);
                  v308 = v301;
                  do
                  {
                    sub_23F2F6564(v40, v308++);
                    v307 -= 4;
                  }

                  while (v307);
                }

                v301 += v300;
                ++v306;
              }

              while (v306 != v305);
            }

            if (3 * v41)
            {
              v684 = 4 * (3 * v41);
              do
              {
                sub_23F2F6564(v40, v301++);
                v684 -= 4;
              }

              while (v684);
            }
          }
        }
      }

      break;
    case 25:
      sub_23F0B66EC(&v703, a3);
      v22 = *a2;
      v23 = v713;
      v24 = v703;
      if (!v703)
      {
        goto LABEL_402;
      }

      v25 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v24 = v703;
        v26 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = v24;
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
            v24 = v27;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v24 + 96))(&v716);
      }

      else
      {
LABEL_402:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v267 = v708;
          if (v708)
          {
            v268 = v712;
            v269 = v705;
            if (v714 == 1 && v705)
            {
              v270 = v703;
              v271 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v271->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v272 = v270;
                  (v271->__on_zero_shared)(v271);
                  std::__shared_weak_count::__release_weak(v271);
                  v270 = v272;
                }
              }

              (*(*v270 + 88))(v270, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v269 = v705;
            }

            v273 = (4 * v23);
            v274 = v267 - 1;
            if (v274)
            {
              for (mm = 0; mm != v274; ++mm)
              {
                if (v273)
                {
                  v276 = v273;
                  v277 = v269;
                  do
                  {
                    sub_23F2F4C14(v22, v277++);
                    --v276;
                  }

                  while (v276);
                }

                v269 += v268;
              }
            }

            for (; v273; --v273)
            {
              sub_23F2F4C14(v22, v269++);
            }
          }
        }
      }

      break;
    case 26:
      sub_23F0B719C(&v703, a3);
      v88 = *a2;
      v89 = v713;
      v90 = v703;
      if (!v703)
      {
        goto LABEL_595;
      }

      v91 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }

        v90 = v703;
        v92 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v93 = v90;
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
            v90 = v93;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v90 + 96))(&v716);
      }

      else
      {
LABEL_595:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v386 = v708;
          if (v708)
          {
            v387 = v712;
            v388 = v705;
            if (v714 == 1 && v705)
            {
              v389 = v703;
              v390 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v390->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v391 = v389;
                  (v390->__on_zero_shared)(v390);
                  std::__shared_weak_count::__release_weak(v390);
                  v389 = v391;
                }
              }

              (*(*v389 + 88))(v389, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v388 = v705;
            }

            v392 = (4 * v89);
            v393 = v386 - 1;
            if (v393)
            {
              for (nn = 0; nn != v393; ++nn)
              {
                if (v392)
                {
                  v395 = 2 * v392;
                  v396 = v388;
                  do
                  {
                    sub_23F2F51B0(v88, v396++);
                    v395 -= 2;
                  }

                  while (v395);
                }

                v388 += v387;
              }
            }

            if (v392)
            {
              v689 = 2 * v392;
              do
              {
                sub_23F2F51B0(v88, v388++);
                v689 -= 2;
              }

              while (v689);
            }
          }
        }
      }

      break;
    case 27:
      sub_23F0B7BF4(&v703, a3);
      v10 = *a2;
      v11 = v713;
      v12 = v703;
      if (!v703)
      {
        goto LABEL_362;
      }

      v13 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v703;
        v14 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v12 + 96))(&v716);
      }

      else
      {
LABEL_362:
        v716 = 0;
      }

      if (!v706)
      {
        break;
      }

      if (!v707)
      {
        break;
      }

      v244 = v708;
      if (!v708)
      {
        break;
      }

      v245 = v712;
      v246 = v705;
      if (v714 == 1 && v705)
      {
        v247 = v703;
        v248 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v248->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v249 = v247;
            (v248->__on_zero_shared)(v248);
            std::__shared_weak_count::__release_weak(v248);
            v247 = v249;
          }
        }

        (*(*v247 + 88))(v247, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v246 = v705;
      }

      v250 = (4 * v11);
      v251 = v244 - 1;
      if (!v251)
      {
        goto LABEL_378;
      }

      if (v250)
      {
        for (i1 = 0; i1 != v251; ++i1)
        {
          v253 = 2 * v250;
          v254 = v246;
          do
          {
            sub_23F2F61F0(v10, v254++);
            v253 -= 2;
          }

          while (v253);
          v246 += v245;
        }

LABEL_378:
        if (v250)
        {
          v255 = 2 * v250;
          do
          {
            sub_23F2F61F0(v10, v246++);
            v255 -= 2;
          }

          while (v255);
        }
      }

      break;
    case 28:
      sub_23F0B864C(&v703, a3);
      v112 = *a2;
      v113 = v713;
      v114 = v703;
      if (!v703)
      {
        goto LABEL_665;
      }

      v115 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v115->__on_zero_shared)(v115);
          std::__shared_weak_count::__release_weak(v115);
        }

        v114 = v703;
        v116 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v117 = v114;
            (v116->__on_zero_shared)(v116);
            std::__shared_weak_count::__release_weak(v116);
            v114 = v117;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v114 + 96))(&v716);
      }

      else
      {
LABEL_665:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v431 = v708;
          if (v708)
          {
            v432 = v712;
            v433 = v705;
            if (v714 == 1 && v705)
            {
              v434 = v703;
              v435 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v435->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v436 = v434;
                  (v435->__on_zero_shared)(v435);
                  std::__shared_weak_count::__release_weak(v435);
                  v434 = v436;
                }
              }

              (*(*v434 + 88))(v434, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v433 = v705;
            }

            v437 = (4 * v113);
            v438 = v431 - 1;
            if (v438)
            {
              for (i2 = 0; i2 != v438; ++i2)
              {
                if (v437)
                {
                  v440 = 4 * v437;
                  v441 = v433;
                  do
                  {
                    sub_23F2F6564(v112, v441++);
                    v440 -= 4;
                  }

                  while (v440);
                }

                v433 += v432;
              }
            }

            if (v437)
            {
              v691 = 4 * v437;
              do
              {
                sub_23F2F6564(v112, v433++);
                v691 -= 4;
              }

              while (v691);
            }
          }
        }
      }

      break;
    case 29:
      sub_23F0B90A4(&v703, a3);
      v34 = *a2;
      v35 = v713;
      v36 = v703;
      if (!v703)
      {
        goto LABEL_436;
      }

      v37 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v36 = v703;
        v38 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v39 = v36;
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
            v36 = v39;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v36 + 96))(&v716);
      }

      else
      {
LABEL_436:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v288 = v708;
          if (v708)
          {
            v289 = v712;
            v290 = v705;
            if (v714 == 1 && v705)
            {
              v291 = v703;
              v292 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v292->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v293 = v291;
                  (v292->__on_zero_shared)(v292);
                  std::__shared_weak_count::__release_weak(v292);
                  v291 = v293;
                }
              }

              (*(*v291 + 88))(v291, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v290 = v705;
            }

            v294 = (4 * v35);
            v295 = v288 - 1;
            if (v295)
            {
              for (i3 = 0; i3 != v295; ++i3)
              {
                if (v294)
                {
                  v297 = v294;
                  v298 = v290;
                  do
                  {
                    sub_23F2F4C14(v34, v298++);
                    --v297;
                  }

                  while (v297);
                }

                v290 += v289;
              }
            }

            for (; v294; --v294)
            {
              sub_23F2F4C14(v34, v290++);
            }
          }
        }
      }

      break;
    case 30:
      sub_23F0B9B54(&v703, a3);
      v130 = *a2;
      v131 = v713;
      v132 = v703;
      if (!v703)
      {
        goto LABEL_719;
      }

      v133 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v133->__on_zero_shared)(v133);
          std::__shared_weak_count::__release_weak(v133);
        }

        v132 = v703;
        v134 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v135 = v132;
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
            v132 = v135;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v132 + 96))(&v716);
      }

      else
      {
LABEL_719:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v465 = v708;
          if (v708)
          {
            v466 = v712;
            v467 = v705;
            if (v714 == 1 && v705)
            {
              v468 = v703;
              v469 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v469->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v470 = v468;
                  (v469->__on_zero_shared)(v469);
                  std::__shared_weak_count::__release_weak(v469);
                  v468 = v470;
                }
              }

              (*(*v468 + 88))(v468, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v467 = v705;
            }

            v471 = (4 * v131);
            v472 = v465 - 1;
            if (v472)
            {
              for (i4 = 0; i4 != v472; ++i4)
              {
                if (v471)
                {
                  v474 = 2 * v471;
                  v475 = v467;
                  do
                  {
                    sub_23F2F51B0(v130, v475++);
                    v474 -= 2;
                  }

                  while (v474);
                }

                v467 += v466;
              }
            }

            if (v471)
            {
              v693 = 2 * v471;
              do
              {
                sub_23F2F51B0(v130, v467++);
                v693 -= 2;
              }

              while (v693);
            }
          }
        }
      }

      break;
    case 31:
      sub_23F0BA604(&v703, a3);
      v94 = *a2;
      v95 = v713;
      v96 = v703;
      if (!v703)
      {
        goto LABEL_612;
      }

      v97 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v97->__on_zero_shared)(v97);
          std::__shared_weak_count::__release_weak(v97);
        }

        v96 = v703;
        v98 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v99 = v96;
            (v98->__on_zero_shared)(v98);
            std::__shared_weak_count::__release_weak(v98);
            v96 = v99;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v96 + 96))(&v716);
      }

      else
      {
LABEL_612:
        v716 = 0;
      }

      if (!v706)
      {
        break;
      }

      if (!v707)
      {
        break;
      }

      v397 = v708;
      if (!v708)
      {
        break;
      }

      v398 = v712;
      v399 = v705;
      if (v714 == 1 && v705)
      {
        v400 = v703;
        v401 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v401->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v402 = v400;
            (v401->__on_zero_shared)(v401);
            std::__shared_weak_count::__release_weak(v401);
            v400 = v402;
          }
        }

        (*(*v400 + 88))(v400, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v399 = v705;
      }

      v403 = (4 * v95);
      v404 = v397 - 1;
      if (!v404)
      {
        goto LABEL_628;
      }

      if (v403)
      {
        for (i5 = 0; i5 != v404; ++i5)
        {
          v406 = 2 * v403;
          v407 = v399;
          do
          {
            sub_23F2F61F0(v94, v407++);
            v406 -= 2;
          }

          while (v406);
          v399 += v398;
        }

LABEL_628:
        if (v403)
        {
          v408 = 2 * v403;
          do
          {
            sub_23F2F61F0(v94, v399++);
            v408 -= 2;
          }

          while (v408);
        }
      }

      break;
    case 32:
      sub_23F0BB0B4(&v703, a3);
      v142 = *a2;
      v143 = v713;
      v144 = v703;
      if (!v703)
      {
        goto LABEL_753;
      }

      v145 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        v144 = v703;
        v146 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v144;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v144 = v147;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v144 + 96))(&v716);
      }

      else
      {
LABEL_753:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v487 = v708;
          if (v708)
          {
            v488 = v712;
            v489 = v705;
            if (v714 == 1 && v705)
            {
              v490 = v703;
              v491 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v491->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v492 = v490;
                  (v491->__on_zero_shared)(v491);
                  std::__shared_weak_count::__release_weak(v491);
                  v490 = v492;
                }
              }

              (*(*v490 + 88))(v490, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v489 = v705;
            }

            v493 = (4 * v143);
            v494 = v487 - 1;
            if (v494)
            {
              for (i6 = 0; i6 != v494; ++i6)
              {
                if (v493)
                {
                  v496 = 4 * v493;
                  v497 = v489;
                  do
                  {
                    sub_23F2F6564(v142, v497++);
                    v496 -= 4;
                  }

                  while (v496);
                }

                v489 += v488;
              }
            }

            if (v493)
            {
              v695 = 4 * v493;
              do
              {
                sub_23F2F6564(v142, v489++);
                v695 -= 4;
              }

              while (v695);
            }
          }
        }
      }

      break;
    case 33:
      sub_23F0BBB64(&v703, a3);
      v202 = *a2;
      v203 = v713;
      v204 = v703;
      if (!v703)
      {
        goto LABEL_943;
      }

      v205 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v205->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v205->__on_zero_shared)(v205);
          std::__shared_weak_count::__release_weak(v205);
        }

        v204 = v703;
        v206 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v207 = v204;
            (v206->__on_zero_shared)(v206);
            std::__shared_weak_count::__release_weak(v206);
            v204 = v207;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v204 + 96))(&v716);
      }

      else
      {
LABEL_943:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v606 = v708;
          if (v708)
          {
            v607 = v712;
            v608 = v705;
            if (v714 == 1 && v705)
            {
              v609 = v703;
              v610 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v610->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v611 = v609;
                  (v610->__on_zero_shared)(v610);
                  std::__shared_weak_count::__release_weak(v610);
                  v609 = v611;
                }
              }

              (*(*v609 + 88))(v609, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v608 = v705;
            }

            v612 = (4 * v203);
            v613 = v606 - 1;
            if (v613)
            {
              for (i7 = 0; i7 != v613; ++i7)
              {
                if (v612)
                {
                  v615 = v612;
                  v616 = v608;
                  do
                  {
                    sub_23F2F4C14(v202, v616++);
                    --v615;
                  }

                  while (v615);
                }

                v608 += v607;
              }
            }

            for (; v612; --v612)
            {
              sub_23F2F4C14(v202, v608++);
            }
          }
        }
      }

      break;
    case 34:
      sub_23F0BC614(&v703, a3);
      v136 = *a2;
      v137 = v713;
      v138 = v703;
      if (!v703)
      {
        goto LABEL_736;
      }

      v139 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        v138 = v703;
        v140 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v138;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v138 = v141;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v138 + 96))(&v716);
      }

      else
      {
LABEL_736:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v476 = v708;
          if (v708)
          {
            v477 = v712;
            v478 = v705;
            if (v714 == 1 && v705)
            {
              v479 = v703;
              v480 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v480->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v481 = v479;
                  (v480->__on_zero_shared)(v480);
                  std::__shared_weak_count::__release_weak(v480);
                  v479 = v481;
                }
              }

              (*(*v479 + 88))(v479, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v478 = v705;
            }

            v482 = (4 * v137);
            v483 = v476 - 1;
            if (v483)
            {
              for (i8 = 0; i8 != v483; ++i8)
              {
                if (v482)
                {
                  v485 = 2 * v482;
                  v486 = v478;
                  do
                  {
                    sub_23F2F51B0(v136, v486++);
                    v485 -= 2;
                  }

                  while (v485);
                }

                v478 += v477;
              }
            }

            if (v482)
            {
              v694 = 2 * v482;
              do
              {
                sub_23F2F51B0(v136, v478++);
                v694 -= 2;
              }

              while (v694);
            }
          }
        }
      }

      break;
    case 35:
      sub_23F0BD06C(&v703, a3);
      v124 = *a2;
      v125 = v713;
      v126 = v703;
      if (!v703)
      {
        goto LABEL_699;
      }

      v127 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v127->__on_zero_shared)(v127);
          std::__shared_weak_count::__release_weak(v127);
        }

        v126 = v703;
        v128 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v129 = v126;
            (v128->__on_zero_shared)(v128);
            std::__shared_weak_count::__release_weak(v128);
            v126 = v129;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v126 + 96))(&v716);
      }

      else
      {
LABEL_699:
        v716 = 0;
      }

      if (!v706)
      {
        break;
      }

      if (!v707)
      {
        break;
      }

      v453 = v708;
      if (!v708)
      {
        break;
      }

      v454 = v712;
      v455 = v705;
      if (v714 == 1 && v705)
      {
        v456 = v703;
        v457 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v457->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v458 = v456;
            (v457->__on_zero_shared)(v457);
            std::__shared_weak_count::__release_weak(v457);
            v456 = v458;
          }
        }

        (*(*v456 + 88))(v456, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v455 = v705;
      }

      v459 = (4 * v125);
      v460 = v453 - 1;
      if (!v460)
      {
        goto LABEL_715;
      }

      if (v459)
      {
        for (i9 = 0; i9 != v460; ++i9)
        {
          v462 = 2 * v459;
          v463 = v455;
          do
          {
            sub_23F2F61F0(v124, v463++);
            v462 -= 2;
          }

          while (v462);
          v455 += v454;
        }

LABEL_715:
        if (v459)
        {
          v464 = 2 * v459;
          do
          {
            sub_23F2F61F0(v124, v455++);
            v464 -= 2;
          }

          while (v464);
        }
      }

      break;
    case 36:
      sub_23F0BDAC4(&v703, a3);
      v118 = *a2;
      v119 = v713;
      v120 = v703;
      if (!v703)
      {
        goto LABEL_682;
      }

      v121 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
        }

        v120 = v703;
        v122 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v123 = v120;
            (v122->__on_zero_shared)(v122);
            std::__shared_weak_count::__release_weak(v122);
            v120 = v123;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v120 + 96))(&v716);
      }

      else
      {
LABEL_682:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v442 = v708;
          if (v708)
          {
            v443 = v712;
            v444 = v705;
            if (v714 == 1 && v705)
            {
              v445 = v703;
              v446 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v446->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v447 = v445;
                  (v446->__on_zero_shared)(v446);
                  std::__shared_weak_count::__release_weak(v446);
                  v445 = v447;
                }
              }

              (*(*v445 + 88))(v445, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v444 = v705;
            }

            v448 = (4 * v119);
            v449 = v442 - 1;
            if (v449)
            {
              for (i10 = 0; i10 != v449; ++i10)
              {
                if (v448)
                {
                  v451 = 4 * v448;
                  v452 = v444;
                  do
                  {
                    sub_23F2F6564(v118, v452++);
                    v451 -= 4;
                  }

                  while (v451);
                }

                v444 += v443;
              }
            }

            if (v448)
            {
              v692 = 4 * v448;
              do
              {
                sub_23F2F6564(v118, v444++);
                v692 -= 4;
              }

              while (v692);
            }
          }
        }
      }

      break;
    case 37:
      sub_23F0BE51C(&v703, a3);
      v184 = *a2;
      v185 = v713;
      v186 = v703;
      if (!v703)
      {
        goto LABEL_889;
      }

      v187 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v187->__on_zero_shared)(v187);
          std::__shared_weak_count::__release_weak(v187);
        }

        v186 = v703;
        v188 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v189 = v186;
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
            v186 = v189;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v186 + 96))(&v716);
      }

      else
      {
LABEL_889:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v574 = v708;
          if (v708)
          {
            v575 = v712;
            v576 = v705;
            if (v714 == 1 && v705)
            {
              v577 = v703;
              v578 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v578->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v579 = v577;
                  (v578->__on_zero_shared)(v578);
                  std::__shared_weak_count::__release_weak(v578);
                  v577 = v579;
                }
              }

              (*(*v577 + 88))(v577, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v576 = v705;
            }

            v580 = (4 * v185);
            v581 = v574 - 1;
            if (v581)
            {
              for (i11 = 0; i11 != v581; ++i11)
              {
                if (v580)
                {
                  v583 = v580;
                  v584 = v576;
                  do
                  {
                    sub_23F2F4C14(v184, v584++);
                    --v583;
                  }

                  while (v583);
                }

                v576 += v575;
              }
            }

            for (; v580; --v580)
            {
              sub_23F2F4C14(v184, v576++);
            }
          }
        }
      }

      break;
    case 38:
      sub_23F0BEFCC(&v703, a3);
      v214 = *a2;
      v215 = v713;
      v216 = v703;
      if (!v703)
      {
        goto LABEL_977;
      }

      v217 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v217->__on_zero_shared)(v217);
          std::__shared_weak_count::__release_weak(v217);
        }

        v216 = v703;
        v218 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v216;
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
            v216 = v219;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v216 + 96))(&v716);
      }

      else
      {
LABEL_977:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v627 = v708;
          if (v708)
          {
            v628 = v712;
            v629 = v705;
            if (v714 == 1 && v705)
            {
              v630 = v703;
              v631 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v631->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v632 = v630;
                  (v631->__on_zero_shared)(v631);
                  std::__shared_weak_count::__release_weak(v631);
                  v630 = v632;
                }
              }

              (*(*v630 + 88))(v630, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v629 = v705;
            }

            v633 = (4 * v215);
            v634 = v627 - 1;
            if (v634)
            {
              for (i12 = 0; i12 != v634; ++i12)
              {
                if (v633)
                {
                  v636 = 2 * v633;
                  v637 = v629;
                  do
                  {
                    sub_23F2F51B0(v214, v637++);
                    v636 -= 2;
                  }

                  while (v636);
                }

                v629 += v628;
              }
            }

            if (v633)
            {
              v700 = 2 * v633;
              do
              {
                sub_23F2F51B0(v214, v629++);
                v700 -= 2;
              }

              while (v700);
            }
          }
        }
      }

      break;
    case 39:
      sub_23F0BFA7C(&v703, a3);
      v76 = *a2;
      v77 = v713;
      v78 = v703;
      if (!v703)
      {
        goto LABEL_558;
      }

      v79 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        v78 = v703;
        v80 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v78;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v78 = v81;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v78 + 96))(&v716);
      }

      else
      {
LABEL_558:
        v716 = 0;
      }

      if (!v706)
      {
        break;
      }

      if (!v707)
      {
        break;
      }

      v364 = v708;
      if (!v708)
      {
        break;
      }

      v365 = v712;
      v366 = v705;
      if (v714 == 1 && v705)
      {
        v367 = v703;
        v368 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v368->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v369 = v367;
            (v368->__on_zero_shared)(v368);
            std::__shared_weak_count::__release_weak(v368);
            v367 = v369;
          }
        }

        (*(*v367 + 88))(v367, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v366 = v705;
      }

      v370 = (4 * v77);
      v371 = v364 - 1;
      if (!v371)
      {
        goto LABEL_574;
      }

      if (v370)
      {
        for (i13 = 0; i13 != v371; ++i13)
        {
          v373 = 2 * v370;
          v374 = v366;
          do
          {
            sub_23F2F61F0(v76, v374++);
            v373 -= 2;
          }

          while (v373);
          v366 += v365;
        }

LABEL_574:
        if (v370)
        {
          v375 = 2 * v370;
          do
          {
            sub_23F2F61F0(v76, v366++);
            v375 -= 2;
          }

          while (v375);
        }
      }

      break;
    case 40:
      sub_23F0C052C(&v703, a3);
      v58 = *a2;
      v59 = v713;
      v60 = v703;
      if (!v703)
      {
        goto LABEL_504;
      }

      v61 = v704;
      if (v704)
      {
        atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v61->__on_zero_shared)(v61);
          std::__shared_weak_count::__release_weak(v61);
        }

        v60 = v703;
        v62 = v704;
        if (v704)
        {
          atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v63 = v60;
            (v62->__on_zero_shared)(v62);
            std::__shared_weak_count::__release_weak(v62);
            v60 = v63;
          }
        }
      }

      if (v715 == 1)
      {
        (*(*v60 + 96))(&v716);
      }

      else
      {
LABEL_504:
        v716 = 0;
      }

      if (v706)
      {
        if (v707)
        {
          v331 = v708;
          if (v708)
          {
            v332 = v712;
            v333 = v705;
            if (v714 == 1 && v705)
            {
              v334 = v703;
              v335 = v704;
              if (v704)
              {
                atomic_fetch_add_explicit(&v704->__shared_owners_, 1uLL, memory_order_relaxed);
                if (!atomic_fetch_add(&v335->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v336 = v334;
                  (v335->__on_zero_shared)(v335);
                  std::__shared_weak_count::__release_weak(v335);
                  v334 = v336;
                }
              }

              (*(*v334 + 88))(v334, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
              v333 = v705;
            }

            v337 = (4 * v59);
            v338 = v331 - 1;
            if (v338)
            {
              for (i14 = 0; i14 != v338; ++i14)
              {
                if (v337)
                {
                  v340 = 4 * v337;
                  v341 = v333;
                  do
                  {
                    sub_23F2F6564(v58, v341++);
                    v340 -= 4;
                  }

                  while (v340);
                }

                v333 += v332;
              }
            }

            if (v337)
            {
              v686 = 4 * v337;
              do
              {
                sub_23F2F6564(v58, v333++);
                v686 -= 4;
              }

              while (v686);
            }
          }
        }
      }

      break;
    default:
      return;
  }

  v701 = v716;
  v716 = 0;
  if (v701)
  {
    (*(*v701 + 8))(v701);
  }

  v702 = v704;
  if (v704)
  {
    if (!atomic_fetch_add(&v704->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v702->__on_zero_shared)(v702);
      std::__shared_weak_count::__release_weak(v702);
    }
  }
}

void sub_23F11AC28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v21 = a20;
  a20 = 0;
  if (v21)
  {
    (*(*v21 + 8))(v21);
  }

  sub_23F08FF34(&a10);
  _Unwind_Resume(a1);
}

void sub_23F11BBCC(int a1, uint64_t *a2, uint64_t a3)
{
  switch(a1)
  {
    case 0:
      sub_23F3033AC("/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_23F3091D6, 0, "Runtime format not in given Formats list", 0x28uLL, sub_23F303DA4);
      abort();
    case 1:
      v704 = &unk_28517D9A8;
      sub_23F0A7E4C(&v705, a3);
      v4 = *a2;
      v5 = v708;
      v6 = v705;
      if (!v705)
      {
        goto LABEL_934;
      }

      v7 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v6 = v705;
        v8 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v9 = v6;
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
            v6 = v9;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v6 + 96))(&v718);
      }

      else
      {
LABEL_934:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v579 = v709;
      if (!v709)
      {
        break;
      }

      v580 = v711;
      v581 = v707;
      if (v712 == 1 && v707)
      {
        v582 = v705;
        v583 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v583->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v584 = v582;
            (v583->__on_zero_shared)(v583);
            std::__shared_weak_count::__release_weak(v583);
            v582 = v584;
          }
        }

        (*(*v582 + 88))(v582, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v581 = v707;
      }

      v585 = v579 - 1;
      if (v579 == 1)
      {
        goto LABEL_949;
      }

      if (v5)
      {
        v586 = 0;
        do
        {
          v587 = v5;
          v588 = v581;
          do
          {
            (*(*v4 + 80))(v4, v588);
            v588 = (v588 + 1);
            --v587;
          }

          while (v587);
          v581 = (v581 + v580);
          ++v586;
        }

        while (v586 != v585);
LABEL_949:
        if (v5)
        {
          do
          {
            (*(*v4 + 80))(v4, v581);
            v581 = (v581 + 1);
            --v5;
          }

          while (v5);
        }
      }

      break;
    case 2:
      v704 = &unk_28517DAA0;
      sub_23F0A82B4(&v705, a3);
      v178 = *a2;
      v179 = v708;
      v180 = v705;
      if (!v705)
      {
        goto LABEL_915;
      }

      v181 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v181->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v181->__on_zero_shared)(v181);
          std::__shared_weak_count::__release_weak(v181);
        }

        v180 = v705;
        v182 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v182->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v183 = v180;
            (v182->__on_zero_shared)(v182);
            std::__shared_weak_count::__release_weak(v182);
            v180 = v183;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v180 + 96))(&v718);
      }

      else
      {
LABEL_915:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v568 = v709;
      if (!v709)
      {
        break;
      }

      v569 = v711;
      v570 = v707;
      if (v712 == 1 && v707)
      {
        v571 = v705;
        v572 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v572->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v573 = v571;
            (v572->__on_zero_shared)(v572);
            std::__shared_weak_count::__release_weak(v572);
            v571 = v573;
          }
        }

        (*(*v571 + 88))(v571, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v570 = v707;
      }

      v574 = v568 - 1;
      if (v568 == 1)
      {
        goto LABEL_930;
      }

      if (v179)
      {
        v575 = 0;
        do
        {
          v576 = 2 * v179;
          v577 = v570;
          do
          {
            (*(*v178 + 96))(v178, v577++);
            v576 -= 2;
          }

          while (v576);
          v570 += v569;
          ++v575;
        }

        while (v575 != v574);
LABEL_930:
        if (v179)
        {
          v578 = 2 * v179;
          do
          {
            (*(*v178 + 96))(v178, v570++);
            v578 -= 2;
          }

          while (v578);
        }
      }

      break;
    case 3:
      v704 = &unk_285181170;
      sub_23F0A8794(&v705, a3);
      v172 = *a2;
      v173 = v708;
      v174 = v705;
      if (!v705)
      {
        goto LABEL_896;
      }

      v175 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v175->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v175->__on_zero_shared)(v175);
          std::__shared_weak_count::__release_weak(v175);
        }

        v174 = v705;
        v176 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v176->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v177 = v174;
            (v176->__on_zero_shared)(v176);
            std::__shared_weak_count::__release_weak(v176);
            v174 = v177;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v174 + 96))(&v718);
      }

      else
      {
LABEL_896:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v557 = v709;
      if (!v709)
      {
        break;
      }

      v558 = v711;
      v559 = v707;
      if (v712 == 1 && v707)
      {
        v560 = v705;
        v561 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v561->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v562 = v560;
            (v561->__on_zero_shared)(v561);
            std::__shared_weak_count::__release_weak(v561);
            v560 = v562;
          }
        }

        (*(*v560 + 88))(v560, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v559 = v707;
      }

      v563 = v557 - 1;
      if (!v563)
      {
        goto LABEL_911;
      }

      if (v173)
      {
        v564 = 0;
        v565 = 2 * v558;
        do
        {
          for (i = 0; i != v173; ++i)
          {
            v703 = 0;
            (*(*v172 + 96))(v172, &v703);
            v559[i] = v703;
          }

          v559 = (v559 + v565);
          ++v564;
        }

        while (v564 != v563);
LABEL_911:
        if (v173)
        {
          v567 = 2 * v173;
          do
          {
            v703 = 0;
            (*(*v172 + 96))(v172, &v703);
            *v559++ = v703;
            v567 -= 2;
          }

          while (v567);
        }
      }

      break;
    case 4:
      v704 = &unk_285181268;
      sub_23F0A9244(&v705, a3);
      v106 = *a2;
      v107 = v708;
      v108 = v705;
      if (!v705)
      {
        goto LABEL_679;
      }

      v109 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v109->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v109->__on_zero_shared)(v109);
          std::__shared_weak_count::__release_weak(v109);
        }

        v108 = v705;
        v110 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v110->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v111 = v108;
            (v110->__on_zero_shared)(v110);
            std::__shared_weak_count::__release_weak(v110);
            v108 = v111;
          }
        }
      }

      if (v713 == 1)
      {
        (*(*v108 + 96))(&v718);
      }

      else
      {
LABEL_679:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      v428 = v709;
      if (!v709)
      {
        break;
      }

      v429 = v711;
      v430 = v707;
      if (v712 == 1 && v707)
      {
        v431 = v705;
        v432 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v432->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v433 = v431;
            (v432->__on_zero_shared)(v432);
            std::__shared_weak_count::__release_weak(v432);
            v431 = v433;
          }
        }

        (*(*v431 + 88))(v431, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v430 = v707;
      }

      v434 = v428 - 1;
      if (v428 == 1)
      {
        goto LABEL_694;
      }

      if (v107)
      {
        v435 = 0;
        do
        {
          v436 = 4 * v107;
          v437 = v430;
          do
          {
            (*(*v106 + 128))(v106, v437);
            v437 += 2;
            v436 -= 4;
          }

          while (v436);
          v430 += 2 * v429;
          ++v435;
        }

        while (v435 != v434);
LABEL_694:
        if (v107)
        {
          v438 = 4 * v107;
          do
          {
            (*(*v106 + 128))(v106, v430);
            v430 += 2;
            v438 -= 4;
          }

          while (v438);
        }
      }

      break;
    case 5:
      v704 = &unk_285181360;
      sub_23F0A9CF4(&v705, a3);
      v154 = *a2;
      v155 = v715;
      v156 = v705;
      if (!v705)
      {
        goto LABEL_837;
      }

      v157 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v157->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v157->__on_zero_shared)(v157);
          std::__shared_weak_count::__release_weak(v157);
        }

        v156 = v705;
        v158 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v158->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v159 = v156;
            (v158->__on_zero_shared)(v158);
            std::__shared_weak_count::__release_weak(v158);
            v156 = v159;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v156 + 96))(&v718);
      }

      else
      {
LABEL_837:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v522 = v710;
      if (!v710)
      {
        break;
      }

      v523 = v714;
      v524 = v707;
      if (v716 == 1 && v707)
      {
        v525 = v705;
        v526 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v526->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v527 = v525;
            (v526->__on_zero_shared)(v526);
            std::__shared_weak_count::__release_weak(v526);
            v525 = v527;
          }
        }

        (*(*v525 + 88))(v525, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v524 = v707;
      }

      v528 = (2 * v155);
      v529 = v522 - 1;
      if (!v529)
      {
        goto LABEL_853;
      }

      if (v528)
      {
        for (j = 0; j != v529; ++j)
        {
          v531 = v528;
          v532 = v524;
          do
          {
            (*(*v154 + 80))(v154, v532);
            v532 = (v532 + 1);
            --v531;
          }

          while (v531);
          v524 = (v524 + v523);
        }

LABEL_853:
        if (v528)
        {
          do
          {
            (*(*v154 + 80))(v154, v524);
            v524 = (v524 + 1);
            --v528;
          }

          while (v528);
        }
      }

      break;
    case 6:
      v704 = &unk_28517F038;
      sub_23F0AA74C(&v705, a3);
      v100 = *a2;
      v101 = v715;
      v102 = v705;
      if (!v705)
      {
        goto LABEL_659;
      }

      v103 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v103->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v103->__on_zero_shared)(v103);
          std::__shared_weak_count::__release_weak(v103);
        }

        v102 = v705;
        v104 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v104->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v105 = v102;
            (v104->__on_zero_shared)(v104);
            std::__shared_weak_count::__release_weak(v104);
            v102 = v105;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v102 + 96))(&v718);
      }

      else
      {
LABEL_659:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v416 = v710;
      if (!v710)
      {
        break;
      }

      v417 = v714;
      v418 = v707;
      if (v716 == 1 && v707)
      {
        v419 = v705;
        v420 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v420->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v421 = v419;
            (v420->__on_zero_shared)(v420);
            std::__shared_weak_count::__release_weak(v420);
            v419 = v421;
          }
        }

        (*(*v419 + 88))(v419, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v418 = v707;
      }

      v422 = (2 * v101);
      v423 = v416 - 1;
      if (!v423)
      {
        goto LABEL_675;
      }

      if (v422)
      {
        for (k = 0; k != v423; ++k)
        {
          v425 = 2 * v422;
          v426 = v418;
          do
          {
            (*(*v100 + 96))(v100, v426++);
            v425 -= 2;
          }

          while (v425);
          v418 += v417;
        }

LABEL_675:
        if (v422)
        {
          v427 = 2 * v422;
          do
          {
            (*(*v100 + 96))(v100, v418++);
            v427 -= 2;
          }

          while (v427);
        }
      }

      break;
    case 7:
      v704 = &unk_285181458;
      sub_23F0AB1A4(&v705, a3);
      v70 = *a2;
      v71 = v715;
      v72 = v705;
      if (!v705)
      {
        goto LABEL_559;
      }

      v73 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v73->__on_zero_shared)(v73);
          std::__shared_weak_count::__release_weak(v73);
        }

        v72 = v705;
        v74 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v75 = v72;
            (v74->__on_zero_shared)(v74);
            std::__shared_weak_count::__release_weak(v74);
            v72 = v75;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v72 + 96))(&v718);
      }

      else
      {
LABEL_559:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v357 = v710;
      if (!v710)
      {
        break;
      }

      v358 = v714;
      v359 = v707;
      if (v716 == 1 && v707)
      {
        v360 = v705;
        v361 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v361->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v362 = v360;
            (v361->__on_zero_shared)(v361);
            std::__shared_weak_count::__release_weak(v361);
            v360 = v362;
          }
        }

        (*(*v360 + 88))(v360, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v359 = v707;
      }

      v363 = (2 * v71);
      v364 = v357 - 1;
      if (!v364)
      {
        goto LABEL_575;
      }

      if (v363)
      {
        v365 = 0;
        v366 = 2 * v358;
        do
        {
          v367 = 0;
          do
          {
            v703 = 0;
            (*(*v70 + 96))(v70, &v703);
            v359[v367++] = v703;
          }

          while (v363 != v367);
          v359 = (v359 + v366);
          ++v365;
        }

        while (v365 != v364);
LABEL_575:
        if (v363)
        {
          v368 = 2 * v363;
          do
          {
            v703 = 0;
            (*(*v70 + 96))(v70, &v703);
            *v359++ = v703;
            v368 -= 2;
          }

          while (v368);
        }
      }

      break;
    case 8:
      v704 = &unk_285181550;
      sub_23F0ABBFC(&v705, a3);
      v166 = *a2;
      v167 = v715;
      v168 = v705;
      if (!v705)
      {
        goto LABEL_876;
      }

      v169 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v169->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v169->__on_zero_shared)(v169);
          std::__shared_weak_count::__release_weak(v169);
        }

        v168 = v705;
        v170 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v170->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v171 = v168;
            (v170->__on_zero_shared)(v170);
            std::__shared_weak_count::__release_weak(v170);
            v168 = v171;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v168 + 96))(&v718);
      }

      else
      {
LABEL_876:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v545 = v710;
      if (!v710)
      {
        break;
      }

      v546 = v714;
      v547 = v707;
      if (v716 == 1 && v707)
      {
        v548 = v705;
        v549 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v549->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v550 = v548;
            (v549->__on_zero_shared)(v549);
            std::__shared_weak_count::__release_weak(v549);
            v548 = v550;
          }
        }

        (*(*v548 + 88))(v548, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v547 = v707;
      }

      v551 = (2 * v167);
      v552 = v545 - 1;
      if (!v552)
      {
        goto LABEL_892;
      }

      if (v551)
      {
        for (m = 0; m != v552; ++m)
        {
          v554 = 4 * v551;
          v555 = v547;
          do
          {
            (*(*v166 + 128))(v166, v555);
            v555 += 2;
            v554 -= 4;
          }

          while (v554);
          v547 += 2 * v546;
        }

LABEL_892:
        if (v551)
        {
          v556 = 4 * v551;
          do
          {
            (*(*v166 + 128))(v166, v547);
            v547 += 2;
            v556 -= 4;
          }

          while (v556);
        }
      }

      break;
    case 9:
      v704 = &unk_28517F130;
      sub_23F0AC654(&v705, a3);
      v148 = *a2;
      v149 = v715;
      v150 = v705;
      if (!v705)
      {
        goto LABEL_818;
      }

      v151 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v151->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v151->__on_zero_shared)(v151);
          std::__shared_weak_count::__release_weak(v151);
        }

        v150 = v705;
        v152 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v152->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v153 = v150;
            (v152->__on_zero_shared)(v152);
            std::__shared_weak_count::__release_weak(v152);
            v150 = v153;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v150 + 96))(&v718);
      }

      else
      {
LABEL_818:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v511 = v710;
      if (!v710)
      {
        break;
      }

      v512 = v714;
      v513 = v707;
      if (v716 == 1 && v707)
      {
        v514 = v705;
        v515 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v515->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v516 = v514;
            (v515->__on_zero_shared)(v515);
            std::__shared_weak_count::__release_weak(v515);
            v514 = v516;
          }
        }

        (*(*v514 + 88))(v514, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v513 = v707;
      }

      v517 = (3 * v149);
      v518 = v511 - 1;
      if (v511 == 1)
      {
        goto LABEL_834;
      }

      if (v149)
      {
        v519 = 0;
        do
        {
          v520 = (3 * v149);
          v521 = v513;
          do
          {
            (*(*v148 + 80))(v148, v521);
            v521 = (v521 + 1);
            --v520;
          }

          while (v520);
          v513 = (v513 + v512);
          ++v519;
        }

        while (v519 != v518);
LABEL_834:
        if (v149)
        {
          do
          {
            (*(*v148 + 80))(v148, v513);
            v513 = (v513 + 1);
            --v517;
          }

          while (v517);
        }
      }

      break;
    case 10:
      v704 = &unk_28517F228;
      sub_23F0AD0AC(&v705, a3);
      v196 = *a2;
      v197 = v715;
      v198 = v705;
      if (!v705)
      {
        goto LABEL_991;
      }

      v199 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v199->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v199->__on_zero_shared)(v199);
          std::__shared_weak_count::__release_weak(v199);
        }

        v198 = v705;
        v200 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v200->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v201 = v198;
            (v200->__on_zero_shared)(v200);
            std::__shared_weak_count::__release_weak(v200);
            v198 = v201;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v198 + 96))(&v718);
      }

      else
      {
LABEL_991:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v611 = v710;
      if (!v710)
      {
        break;
      }

      v612 = v714;
      v613 = v707;
      if (v716 == 1 && v707)
      {
        v614 = v705;
        v615 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v615->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v616 = v614;
            (v615->__on_zero_shared)(v615);
            std::__shared_weak_count::__release_weak(v615);
            v614 = v616;
          }
        }

        (*(*v614 + 88))(v614, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v613 = v707;
      }

      v617 = v611 - 1;
      if (v611 == 1)
      {
        goto LABEL_1007;
      }

      if (v197)
      {
        v618 = 0;
        do
        {
          v619 = 2 * (3 * v197);
          v620 = v613;
          do
          {
            (*(*v196 + 96))(v196, v620++);
            v619 -= 2;
          }

          while (v619);
          v613 += v612;
          ++v618;
        }

        while (v618 != v617);
LABEL_1007:
        if (v197)
        {
          v621 = 2 * (3 * v197);
          do
          {
            (*(*v196 + 96))(v196, v613++);
            v621 -= 2;
          }

          while (v621);
        }
      }

      break;
    case 11:
      v704 = &unk_28517F320;
      sub_23F0ADB04(&v705, a3);
      v190 = *a2;
      v191 = v715;
      v192 = v705;
      if (!v705)
      {
        goto LABEL_971;
      }

      v193 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v193->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v193->__on_zero_shared)(v193);
          std::__shared_weak_count::__release_weak(v193);
        }

        v192 = v705;
        v194 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v194->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v195 = v192;
            (v194->__on_zero_shared)(v194);
            std::__shared_weak_count::__release_weak(v194);
            v192 = v195;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v192 + 96))(&v718);
      }

      else
      {
LABEL_971:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v600 = v710;
      if (!v710)
      {
        break;
      }

      v601 = v714;
      v602 = v707;
      if (v716 == 1 && v707)
      {
        v603 = v705;
        v604 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v604->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v605 = v603;
            (v604->__on_zero_shared)(v604);
            std::__shared_weak_count::__release_weak(v604);
            v603 = v605;
          }
        }

        (*(*v603 + 88))(v603, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v602 = v707;
      }

      v606 = v600 - 1;
      if (!v606)
      {
        goto LABEL_987;
      }

      if (v191)
      {
        v607 = 0;
        v608 = 2 * v601;
        do
        {
          v609 = 0;
          do
          {
            v703 = 0;
            (*(*v190 + 96))(v190, &v703);
            v602[v609++] = v703;
          }

          while (3 * v191 != v609);
          v602 = (v602 + v608);
          ++v607;
        }

        while (v607 != v606);
LABEL_987:
        if (v191)
        {
          v610 = 2 * (3 * v191);
          do
          {
            v703 = 0;
            (*(*v190 + 96))(v190, &v703);
            *v602++ = v703;
            v610 -= 2;
          }

          while (v610);
        }
      }

      break;
    case 12:
      v704 = &unk_28517F418;
      sub_23F0AE55C(&v705, a3);
      v28 = *a2;
      v29 = v715;
      v30 = v705;
      if (!v705)
      {
        goto LABEL_421;
      }

      v31 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v31->__on_zero_shared)(v31);
          std::__shared_weak_count::__release_weak(v31);
        }

        v30 = v705;
        v32 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v33 = v30;
            (v32->__on_zero_shared)(v32);
            std::__shared_weak_count::__release_weak(v32);
            v30 = v33;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v30 + 96))(&v718);
      }

      else
      {
LABEL_421:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v278 = v710;
      if (!v710)
      {
        break;
      }

      v279 = v714;
      v280 = v707;
      if (v716 == 1 && v707)
      {
        v281 = v705;
        v282 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v282->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v283 = v281;
            (v282->__on_zero_shared)(v282);
            std::__shared_weak_count::__release_weak(v282);
            v281 = v283;
          }
        }

        (*(*v281 + 88))(v281, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v280 = v707;
      }

      v284 = v278 - 1;
      if (v278 == 1)
      {
        goto LABEL_437;
      }

      if (v29)
      {
        v285 = 0;
        do
        {
          v286 = 4 * (3 * v29);
          v287 = v280;
          do
          {
            (*(*v28 + 128))(v28, v287);
            v287 += 2;
            v286 -= 4;
          }

          while (v286);
          v280 += 2 * v279;
          ++v285;
        }

        while (v285 != v284);
LABEL_437:
        if (v29)
        {
          v288 = 4 * (3 * v29);
          do
          {
            (*(*v28 + 128))(v28, v280);
            v280 += 2;
            v288 -= 4;
          }

          while (v288);
        }
      }

      break;
    case 13:
      v704 = &unk_28517F510;
      sub_23F0AEFB4(&v705, a3);
      v52 = *a2;
      v53 = v715;
      v54 = v705;
      if (!v705)
      {
        goto LABEL_500;
      }

      v55 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v55->__on_zero_shared)(v55);
          std::__shared_weak_count::__release_weak(v55);
        }

        v54 = v705;
        v56 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v57 = v54;
            (v56->__on_zero_shared)(v56);
            std::__shared_weak_count::__release_weak(v56);
            v54 = v57;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v54 + 96))(&v718);
      }

      else
      {
LABEL_500:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v323 = v710;
      if (!v710)
      {
        break;
      }

      v324 = v714;
      v325 = v707;
      if (v716 == 1 && v707)
      {
        v326 = v705;
        v327 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v327->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v328 = v326;
            (v327->__on_zero_shared)(v327);
            std::__shared_weak_count::__release_weak(v327);
            v326 = v328;
          }
        }

        (*(*v326 + 88))(v326, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v325 = v707;
      }

      v329 = (4 * v53);
      v330 = v323 - 1;
      if (!v330)
      {
        goto LABEL_516;
      }

      if (v329)
      {
        for (n = 0; n != v330; ++n)
        {
          v332 = v329;
          v333 = v325;
          do
          {
            (*(*v52 + 80))(v52, v333);
            v333 = (v333 + 1);
            --v332;
          }

          while (v332);
          v325 = (v325 + v324);
        }

LABEL_516:
        if (v329)
        {
          do
          {
            (*(*v52 + 80))(v52, v325);
            v325 = (v325 + 1);
            --v329;
          }

          while (v329);
        }
      }

      break;
    case 14:
      v704 = &unk_28517F608;
      sub_23F0AFA0C(&v705, a3);
      v46 = *a2;
      v47 = v715;
      v48 = v705;
      if (!v705)
      {
        goto LABEL_480;
      }

      v49 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v49->__on_zero_shared)(v49);
          std::__shared_weak_count::__release_weak(v49);
        }

        v48 = v705;
        v50 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v51 = v48;
            (v50->__on_zero_shared)(v50);
            std::__shared_weak_count::__release_weak(v50);
            v48 = v51;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v48 + 96))(&v718);
      }

      else
      {
LABEL_480:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v311 = v710;
      if (!v710)
      {
        break;
      }

      v312 = v714;
      v313 = v707;
      if (v716 == 1 && v707)
      {
        v314 = v705;
        v315 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v315->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v316 = v314;
            (v315->__on_zero_shared)(v315);
            std::__shared_weak_count::__release_weak(v315);
            v314 = v316;
          }
        }

        (*(*v314 + 88))(v314, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v313 = v707;
      }

      v317 = (4 * v47);
      v318 = v311 - 1;
      if (!v318)
      {
        goto LABEL_496;
      }

      if (v317)
      {
        for (ii = 0; ii != v318; ++ii)
        {
          v320 = 2 * v317;
          v321 = v313;
          do
          {
            (*(*v46 + 96))(v46, v321++);
            v320 -= 2;
          }

          while (v320);
          v313 += v312;
        }

LABEL_496:
        if (v317)
        {
          v322 = 2 * v317;
          do
          {
            (*(*v46 + 96))(v46, v313++);
            v322 -= 2;
          }

          while (v322);
        }
      }

      break;
    case 15:
      v704 = &unk_28517F700;
      sub_23F0B0464(&v705, a3);
      v220 = *a2;
      v221 = v715;
      v222 = v705;
      if (!v705)
      {
        goto LABEL_1070;
      }

      v223 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v223->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v223->__on_zero_shared)(v223);
          std::__shared_weak_count::__release_weak(v223);
        }

        v222 = v705;
        v224 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v224->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v225 = v222;
            (v224->__on_zero_shared)(v224);
            std::__shared_weak_count::__release_weak(v224);
            v222 = v225;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v222 + 96))(&v718);
      }

      else
      {
LABEL_1070:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v656 = v710;
      if (!v710)
      {
        break;
      }

      v657 = v714;
      v658 = v707;
      if (v716 == 1 && v707)
      {
        v659 = v705;
        v660 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v660->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v661 = v659;
            (v660->__on_zero_shared)(v660);
            std::__shared_weak_count::__release_weak(v660);
            v659 = v661;
          }
        }

        (*(*v659 + 88))(v659, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v658 = v707;
      }

      v662 = (4 * v221);
      v663 = v656 - 1;
      if (!v663)
      {
        goto LABEL_1086;
      }

      if (v662)
      {
        v664 = 0;
        v665 = 2 * v657;
        do
        {
          v666 = 0;
          do
          {
            v703 = 0;
            (*(*v220 + 96))(v220, &v703);
            v658[v666++] = v703;
          }

          while (v662 != v666);
          v658 = (v658 + v665);
          ++v664;
        }

        while (v664 != v663);
LABEL_1086:
        if (v662)
        {
          v667 = 2 * v662;
          do
          {
            v703 = 0;
            (*(*v220 + 96))(v220, &v703);
            *v658++ = v703;
            v667 -= 2;
          }

          while (v667);
        }
      }

      break;
    case 16:
      v704 = &unk_28517F7F8;
      sub_23F0B0EBC(&v705, a3);
      v160 = *a2;
      v161 = v715;
      v162 = v705;
      if (!v705)
      {
        goto LABEL_856;
      }

      v163 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v163->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v163->__on_zero_shared)(v163);
          std::__shared_weak_count::__release_weak(v163);
        }

        v162 = v705;
        v164 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v164->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v165 = v162;
            (v164->__on_zero_shared)(v164);
            std::__shared_weak_count::__release_weak(v164);
            v162 = v165;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v162 + 96))(&v718);
      }

      else
      {
LABEL_856:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v533 = v710;
      if (!v710)
      {
        break;
      }

      v534 = v714;
      v535 = v707;
      if (v716 == 1 && v707)
      {
        v536 = v705;
        v537 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v537->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v538 = v536;
            (v537->__on_zero_shared)(v537);
            std::__shared_weak_count::__release_weak(v537);
            v536 = v538;
          }
        }

        (*(*v536 + 88))(v536, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v535 = v707;
      }

      v539 = (4 * v161);
      v540 = v533 - 1;
      if (!v540)
      {
        goto LABEL_872;
      }

      if (v539)
      {
        for (jj = 0; jj != v540; ++jj)
        {
          v542 = 4 * v539;
          v543 = v535;
          do
          {
            (*(*v160 + 128))(v160, v543);
            v543 += 2;
            v542 -= 4;
          }

          while (v542);
          v535 += 2 * v534;
        }

LABEL_872:
        if (v539)
        {
          v544 = 4 * v539;
          do
          {
            (*(*v160 + 128))(v160, v535);
            v535 += 2;
            v544 -= 4;
          }

          while (v544);
        }
      }

      break;
    case 17:
      v704 = &unk_28517F8F0;
      sub_23F0B1914(&v705, a3);
      v226 = *a2;
      v227 = v715;
      v228 = v705;
      if (!v705)
      {
        goto LABEL_1090;
      }

      v229 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v229->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v229->__on_zero_shared)(v229);
          std::__shared_weak_count::__release_weak(v229);
        }

        v228 = v705;
        v230 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v230->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v231 = v228;
            (v230->__on_zero_shared)(v230);
            std::__shared_weak_count::__release_weak(v230);
            v228 = v231;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v228 + 96))(&v718);
      }

      else
      {
LABEL_1090:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v668 = v710;
      if (!v710)
      {
        break;
      }

      v669 = v714;
      v670 = v707;
      if (v716 == 1 && v707)
      {
        v671 = v705;
        v672 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v672->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v673 = v671;
            (v672->__on_zero_shared)(v672);
            std::__shared_weak_count::__release_weak(v672);
            v671 = v673;
          }
        }

        (*(*v671 + 88))(v671, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v670 = v707;
      }

      v674 = (3 * v227);
      v675 = v668 - 1;
      if (v668 == 1)
      {
        goto LABEL_1106;
      }

      if (v227)
      {
        v676 = 0;
        do
        {
          v677 = (3 * v227);
          v678 = v670;
          do
          {
            (*(*v226 + 80))(v226, v678);
            v678 = (v678 + 1);
            --v677;
          }

          while (v677);
          v670 = (v670 + v669);
          ++v676;
        }

        while (v676 != v675);
LABEL_1106:
        if (v227)
        {
          do
          {
            (*(*v226 + 80))(v226, v670);
            v670 = (v670 + 1);
            --v674;
          }

          while (v674);
        }
      }

      break;
    case 18:
      v704 = &unk_28517F9E8;
      sub_23F0B236C(&v705, a3);
      v64 = *a2;
      v65 = v715;
      v66 = v705;
      if (!v705)
      {
        goto LABEL_539;
      }

      v67 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v67->__on_zero_shared)(v67);
          std::__shared_weak_count::__release_weak(v67);
        }

        v66 = v705;
        v68 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v69 = v66;
            (v68->__on_zero_shared)(v68);
            std::__shared_weak_count::__release_weak(v68);
            v66 = v69;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v66 + 96))(&v718);
      }

      else
      {
LABEL_539:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v346 = v710;
      if (!v710)
      {
        break;
      }

      v347 = v714;
      v348 = v707;
      if (v716 == 1 && v707)
      {
        v349 = v705;
        v350 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v350->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v351 = v349;
            (v350->__on_zero_shared)(v350);
            std::__shared_weak_count::__release_weak(v350);
            v349 = v351;
          }
        }

        (*(*v349 + 88))(v349, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v348 = v707;
      }

      v352 = v346 - 1;
      if (v346 == 1)
      {
        goto LABEL_555;
      }

      if (v65)
      {
        v353 = 0;
        do
        {
          v354 = 2 * (3 * v65);
          v355 = v348;
          do
          {
            (*(*v64 + 96))(v64, v355++);
            v354 -= 2;
          }

          while (v354);
          v348 += v347;
          ++v353;
        }

        while (v353 != v352);
LABEL_555:
        if (v65)
        {
          v356 = 2 * (3 * v65);
          do
          {
            (*(*v64 + 96))(v64, v348++);
            v356 -= 2;
          }

          while (v356);
        }
      }

      break;
    case 19:
      v704 = &unk_28517FAE0;
      sub_23F0B2DC4(&v705, a3);
      v16 = *a2;
      v17 = v715;
      v18 = v705;
      if (!v705)
      {
        goto LABEL_382;
      }

      v19 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v18 = v705;
        v20 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v21 = v18;
            (v20->__on_zero_shared)(v20);
            std::__shared_weak_count::__release_weak(v20);
            v18 = v21;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v18 + 96))(&v718);
      }

      else
      {
LABEL_382:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v256 = v710;
      if (!v710)
      {
        break;
      }

      v257 = v714;
      v258 = v707;
      if (v716 == 1 && v707)
      {
        v259 = v705;
        v260 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v260->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v261 = v259;
            (v260->__on_zero_shared)(v260);
            std::__shared_weak_count::__release_weak(v260);
            v259 = v261;
          }
        }

        (*(*v259 + 88))(v259, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v258 = v707;
      }

      v262 = v256 - 1;
      if (!v262)
      {
        goto LABEL_398;
      }

      if (v17)
      {
        v263 = 0;
        v264 = 2 * v257;
        do
        {
          v265 = 0;
          do
          {
            v703 = 0;
            (*(*v16 + 96))(v16, &v703);
            v258[v265++] = v703;
          }

          while (3 * v17 != v265);
          v258 = (v258 + v264);
          ++v263;
        }

        while (v263 != v262);
LABEL_398:
        if (v17)
        {
          v266 = 2 * (3 * v17);
          do
          {
            v703 = 0;
            (*(*v16 + 96))(v16, &v703);
            *v258++ = v703;
            v266 -= 2;
          }

          while (v266);
        }
      }

      break;
    case 20:
      v704 = &unk_28517FBD8;
      sub_23F0B381C(&v705, a3);
      v208 = *a2;
      v209 = v715;
      v210 = v705;
      if (!v705)
      {
        goto LABEL_1030;
      }

      v211 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v211->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v211->__on_zero_shared)(v211);
          std::__shared_weak_count::__release_weak(v211);
        }

        v210 = v705;
        v212 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v212->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v213 = v210;
            (v212->__on_zero_shared)(v212);
            std::__shared_weak_count::__release_weak(v212);
            v210 = v213;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v210 + 96))(&v718);
      }

      else
      {
LABEL_1030:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v633 = v710;
      if (!v710)
      {
        break;
      }

      v634 = v714;
      v635 = v707;
      if (v716 == 1 && v707)
      {
        v636 = v705;
        v637 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v637->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v638 = v636;
            (v637->__on_zero_shared)(v637);
            std::__shared_weak_count::__release_weak(v637);
            v636 = v638;
          }
        }

        (*(*v636 + 88))(v636, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v635 = v707;
      }

      v639 = v633 - 1;
      if (v633 == 1)
      {
        goto LABEL_1046;
      }

      if (v209)
      {
        v640 = 0;
        do
        {
          v641 = 4 * (3 * v209);
          v642 = v635;
          do
          {
            (*(*v208 + 128))(v208, v642);
            v642 += 2;
            v641 -= 4;
          }

          while (v641);
          v635 += 2 * v634;
          ++v640;
        }

        while (v640 != v639);
LABEL_1046:
        if (v209)
        {
          v643 = 4 * (3 * v209);
          do
          {
            (*(*v208 + 128))(v208, v635);
            v635 += 2;
            v643 -= 4;
          }

          while (v643);
        }
      }

      break;
    case 21:
      v704 = &unk_28517DB98;
      sub_23F0B41FC(&v705, a3);
      v238 = *a2;
      v239 = v715;
      v240 = v705;
      if (!v705)
      {
        goto LABEL_1129;
      }

      v241 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v241->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v241->__on_zero_shared)(v241);
          std::__shared_weak_count::__release_weak(v241);
        }

        v240 = v705;
        v242 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v242->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v243 = v240;
            (v242->__on_zero_shared)(v242);
            std::__shared_weak_count::__release_weak(v242);
            v240 = v243;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v240 + 96))(&v718);
      }

      else
      {
LABEL_1129:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v690 = v710;
      if (!v710)
      {
        break;
      }

      v691 = v714;
      v692 = v707;
      if (v716 == 1 && v707)
      {
        v693 = v705;
        v694 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v694->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v695 = v693;
            (v694->__on_zero_shared)(v694);
            std::__shared_weak_count::__release_weak(v694);
            v693 = v695;
          }
        }

        (*(*v693 + 88))(v693, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v692 = v707;
      }

      v696 = (3 * v239);
      v697 = v690 - 1;
      if (v690 == 1)
      {
        goto LABEL_1145;
      }

      if (v239)
      {
        v698 = 0;
        do
        {
          v699 = (3 * v239);
          v700 = v692;
          do
          {
            (*(*v238 + 80))(v238, v700);
            v700 = (v700 + 1);
            --v699;
          }

          while (v699);
          v692 = (v692 + v691);
          ++v698;
        }

        while (v698 != v697);
LABEL_1145:
        if (v239)
        {
          do
          {
            (*(*v238 + 80))(v238, v692);
            v692 = (v692 + 1);
            --v696;
          }

          while (v696);
        }
      }

      break;
    case 22:
      v704 = &unk_285181648;
      sub_23F0B46DC(&v705, a3);
      v82 = *a2;
      v83 = v715;
      v84 = v705;
      if (!v705)
      {
        goto LABEL_599;
      }

      v85 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v85->__on_zero_shared)(v85);
          std::__shared_weak_count::__release_weak(v85);
        }

        v84 = v705;
        v86 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v87 = v84;
            (v86->__on_zero_shared)(v86);
            std::__shared_weak_count::__release_weak(v86);
            v84 = v87;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v84 + 96))(&v718);
      }

      else
      {
LABEL_599:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v381 = v710;
      if (!v710)
      {
        break;
      }

      v382 = v714;
      v383 = v707;
      if (v716 == 1 && v707)
      {
        v384 = v705;
        v385 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v385->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v386 = v384;
            (v385->__on_zero_shared)(v385);
            std::__shared_weak_count::__release_weak(v385);
            v384 = v386;
          }
        }

        (*(*v384 + 88))(v384, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v383 = v707;
      }

      v387 = v381 - 1;
      if (v381 == 1)
      {
        goto LABEL_615;
      }

      if (v83)
      {
        v388 = 0;
        do
        {
          v389 = 2 * (3 * v83);
          v390 = v383;
          do
          {
            (*(*v82 + 96))(v82, v390++);
            v389 -= 2;
          }

          while (v389);
          v383 += v382;
          ++v388;
        }

        while (v388 != v387);
LABEL_615:
        if (v83)
        {
          v391 = 2 * (3 * v83);
          do
          {
            (*(*v82 + 96))(v82, v383++);
            v391 -= 2;
          }

          while (v391);
        }
      }

      break;
    case 23:
      v704 = &unk_28517FCD0;
      sub_23F0B518C(&v705, a3);
      v232 = *a2;
      v233 = v715;
      v234 = v705;
      if (!v705)
      {
        goto LABEL_1109;
      }

      v235 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v235->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v235->__on_zero_shared)(v235);
          std::__shared_weak_count::__release_weak(v235);
        }

        v234 = v705;
        v236 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v236->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v237 = v234;
            (v236->__on_zero_shared)(v236);
            std::__shared_weak_count::__release_weak(v236);
            v234 = v237;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v234 + 96))(&v718);
      }

      else
      {
LABEL_1109:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v679 = v710;
      if (!v710)
      {
        break;
      }

      v680 = v714;
      v681 = v707;
      if (v716 == 1 && v707)
      {
        v682 = v705;
        v683 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v683->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v684 = v682;
            (v683->__on_zero_shared)(v683);
            std::__shared_weak_count::__release_weak(v683);
            v682 = v684;
          }
        }

        (*(*v682 + 88))(v682, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v681 = v707;
      }

      v685 = v679 - 1;
      if (!v685)
      {
        goto LABEL_1125;
      }

      if (v233)
      {
        v686 = 0;
        v687 = 2 * v680;
        do
        {
          v688 = 0;
          do
          {
            v703 = 0;
            (*(*v232 + 96))(v232, &v703);
            v681[v688++] = v703;
          }

          while (3 * v233 != v688);
          v681 = (v681 + v687);
          ++v686;
        }

        while (v686 != v685);
LABEL_1125:
        if (v233)
        {
          v689 = 2 * (3 * v233);
          do
          {
            v703 = 0;
            (*(*v232 + 96))(v232, &v703);
            *v681++ = v703;
            v689 -= 2;
          }

          while (v689);
        }
      }

      break;
    case 24:
      v704 = &unk_28517FDC8;
      sub_23F0B5C3C(&v705, a3);
      v40 = *a2;
      v41 = v715;
      v42 = v705;
      if (!v705)
      {
        goto LABEL_460;
      }

      v43 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v43);
        }

        v42 = v705;
        v44 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v45 = v42;
            (v44->__on_zero_shared)(v44);
            std::__shared_weak_count::__release_weak(v44);
            v42 = v45;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v42 + 96))(&v718);
      }

      else
      {
LABEL_460:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v300 = v710;
      if (!v710)
      {
        break;
      }

      v301 = v714;
      v302 = v707;
      if (v716 == 1 && v707)
      {
        v303 = v705;
        v304 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v304->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v305 = v303;
            (v304->__on_zero_shared)(v304);
            std::__shared_weak_count::__release_weak(v304);
            v303 = v305;
          }
        }

        (*(*v303 + 88))(v303, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v302 = v707;
      }

      v306 = v300 - 1;
      if (v300 == 1)
      {
        goto LABEL_476;
      }

      if (v41)
      {
        v307 = 0;
        do
        {
          v308 = 4 * (3 * v41);
          v309 = v302;
          do
          {
            (*(*v40 + 128))(v40, v309);
            v309 += 2;
            v308 -= 4;
          }

          while (v308);
          v302 += 2 * v301;
          ++v307;
        }

        while (v307 != v306);
LABEL_476:
        if (v41)
        {
          v310 = 4 * (3 * v41);
          do
          {
            (*(*v40 + 128))(v40, v302);
            v302 += 2;
            v310 -= 4;
          }

          while (v310);
        }
      }

      break;
    case 25:
      v704 = &unk_285181740;
      sub_23F0B66EC(&v705, a3);
      v22 = *a2;
      v23 = v715;
      v24 = v705;
      if (!v705)
      {
        goto LABEL_402;
      }

      v25 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v24 = v705;
        v26 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v27 = v24;
            (v26->__on_zero_shared)(v26);
            std::__shared_weak_count::__release_weak(v26);
            v24 = v27;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v24 + 96))(&v718);
      }

      else
      {
LABEL_402:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v267 = v710;
      if (!v710)
      {
        break;
      }

      v268 = v714;
      v269 = v707;
      if (v716 == 1 && v707)
      {
        v270 = v705;
        v271 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v271->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v272 = v270;
            (v271->__on_zero_shared)(v271);
            std::__shared_weak_count::__release_weak(v271);
            v270 = v272;
          }
        }

        (*(*v270 + 88))(v270, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v269 = v707;
      }

      v273 = (4 * v23);
      v274 = v267 - 1;
      if (!v274)
      {
        goto LABEL_418;
      }

      if (v273)
      {
        for (kk = 0; kk != v274; ++kk)
        {
          v276 = v273;
          v277 = v269;
          do
          {
            (*(*v22 + 80))(v22, v277);
            v277 = (v277 + 1);
            --v276;
          }

          while (v276);
          v269 = (v269 + v268);
        }

LABEL_418:
        if (v273)
        {
          do
          {
            (*(*v22 + 80))(v22, v269);
            v269 = (v269 + 1);
            --v273;
          }

          while (v273);
        }
      }

      break;
    case 26:
      v704 = &unk_28517FEC0;
      sub_23F0B719C(&v705, a3);
      v88 = *a2;
      v89 = v715;
      v90 = v705;
      if (!v705)
      {
        goto LABEL_619;
      }

      v91 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v91->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v91->__on_zero_shared)(v91);
          std::__shared_weak_count::__release_weak(v91);
        }

        v90 = v705;
        v92 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v92->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v93 = v90;
            (v92->__on_zero_shared)(v92);
            std::__shared_weak_count::__release_weak(v92);
            v90 = v93;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v90 + 96))(&v718);
      }

      else
      {
LABEL_619:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v392 = v710;
      if (!v710)
      {
        break;
      }

      v393 = v714;
      v394 = v707;
      if (v716 == 1 && v707)
      {
        v395 = v705;
        v396 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v396->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v397 = v395;
            (v396->__on_zero_shared)(v396);
            std::__shared_weak_count::__release_weak(v396);
            v395 = v397;
          }
        }

        (*(*v395 + 88))(v395, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v394 = v707;
      }

      v398 = (4 * v89);
      v399 = v392 - 1;
      if (!v399)
      {
        goto LABEL_635;
      }

      if (v398)
      {
        for (mm = 0; mm != v399; ++mm)
        {
          v401 = 2 * v398;
          v402 = v394;
          do
          {
            (*(*v88 + 96))(v88, v402++);
            v401 -= 2;
          }

          while (v401);
          v394 += v393;
        }

LABEL_635:
        if (v398)
        {
          v403 = 2 * v398;
          do
          {
            (*(*v88 + 96))(v88, v394++);
            v403 -= 2;
          }

          while (v403);
        }
      }

      break;
    case 27:
      v704 = &unk_28517FFB8;
      sub_23F0B7BF4(&v705, a3);
      v10 = *a2;
      v11 = v715;
      v12 = v705;
      if (!v705)
      {
        goto LABEL_362;
      }

      v13 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        v12 = v705;
        v14 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v15 = v12;
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
            v12 = v15;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v12 + 96))(&v718);
      }

      else
      {
LABEL_362:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v244 = v710;
      if (!v710)
      {
        break;
      }

      v245 = v714;
      v246 = v707;
      if (v716 == 1 && v707)
      {
        v247 = v705;
        v248 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v248->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v249 = v247;
            (v248->__on_zero_shared)(v248);
            std::__shared_weak_count::__release_weak(v248);
            v247 = v249;
          }
        }

        (*(*v247 + 88))(v247, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v246 = v707;
      }

      v250 = (4 * v11);
      v251 = v244 - 1;
      if (!v251)
      {
        goto LABEL_378;
      }

      if (v250)
      {
        v252 = 0;
        v253 = 2 * v245;
        do
        {
          v254 = 0;
          do
          {
            v703 = 0;
            (*(*v10 + 96))(v10, &v703);
            v246[v254++] = v703;
          }

          while (v250 != v254);
          v246 = (v246 + v253);
          ++v252;
        }

        while (v252 != v251);
LABEL_378:
        if (v250)
        {
          v255 = 2 * v250;
          do
          {
            v703 = 0;
            (*(*v10 + 96))(v10, &v703);
            *v246++ = v703;
            v255 -= 2;
          }

          while (v255);
        }
      }

      break;
    case 28:
      v704 = &unk_2851800B0;
      sub_23F0B864C(&v705, a3);
      v112 = *a2;
      v113 = v715;
      v114 = v705;
      if (!v705)
      {
        goto LABEL_698;
      }

      v115 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v115->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v115->__on_zero_shared)(v115);
          std::__shared_weak_count::__release_weak(v115);
        }

        v114 = v705;
        v116 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v116->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v117 = v114;
            (v116->__on_zero_shared)(v116);
            std::__shared_weak_count::__release_weak(v116);
            v114 = v117;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v114 + 96))(&v718);
      }

      else
      {
LABEL_698:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v439 = v710;
      if (!v710)
      {
        break;
      }

      v440 = v714;
      v441 = v707;
      if (v716 == 1 && v707)
      {
        v442 = v705;
        v443 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v443->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v444 = v442;
            (v443->__on_zero_shared)(v443);
            std::__shared_weak_count::__release_weak(v443);
            v442 = v444;
          }
        }

        (*(*v442 + 88))(v442, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v441 = v707;
      }

      v445 = (4 * v113);
      v446 = v439 - 1;
      if (!v446)
      {
        goto LABEL_714;
      }

      if (v445)
      {
        for (nn = 0; nn != v446; ++nn)
        {
          v448 = 4 * v445;
          v449 = v441;
          do
          {
            (*(*v112 + 128))(v112, v449);
            v449 += 2;
            v448 -= 4;
          }

          while (v448);
          v441 += 2 * v440;
        }

LABEL_714:
        if (v445)
        {
          v450 = 4 * v445;
          do
          {
            (*(*v112 + 128))(v112, v441);
            v441 += 2;
            v450 -= 4;
          }

          while (v450);
        }
      }

      break;
    case 29:
      v704 = &unk_2851801A8;
      sub_23F0B90A4(&v705, a3);
      v34 = *a2;
      v35 = v715;
      v36 = v705;
      if (!v705)
      {
        goto LABEL_441;
      }

      v37 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v37->__on_zero_shared)(v37);
          std::__shared_weak_count::__release_weak(v37);
        }

        v36 = v705;
        v38 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v39 = v36;
            (v38->__on_zero_shared)(v38);
            std::__shared_weak_count::__release_weak(v38);
            v36 = v39;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v36 + 96))(&v718);
      }

      else
      {
LABEL_441:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v289 = v710;
      if (!v710)
      {
        break;
      }

      v290 = v714;
      v291 = v707;
      if (v716 == 1 && v707)
      {
        v292 = v705;
        v293 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v293->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v294 = v292;
            (v293->__on_zero_shared)(v293);
            std::__shared_weak_count::__release_weak(v293);
            v292 = v294;
          }
        }

        (*(*v292 + 88))(v292, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v291 = v707;
      }

      v295 = (4 * v35);
      v296 = v289 - 1;
      if (!v296)
      {
        goto LABEL_457;
      }

      if (v295)
      {
        for (i1 = 0; i1 != v296; ++i1)
        {
          v298 = v295;
          v299 = v291;
          do
          {
            (*(*v34 + 80))(v34, v299);
            v299 = (v299 + 1);
            --v298;
          }

          while (v298);
          v291 = (v291 + v290);
        }

LABEL_457:
        if (v295)
        {
          do
          {
            (*(*v34 + 80))(v34, v291);
            v291 = (v291 + 1);
            --v295;
          }

          while (v295);
        }
      }

      break;
    case 30:
      v704 = &unk_2851802A0;
      sub_23F0B9B54(&v705, a3);
      v130 = *a2;
      v131 = v715;
      v132 = v705;
      if (!v705)
      {
        goto LABEL_758;
      }

      v133 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v133->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v133->__on_zero_shared)(v133);
          std::__shared_weak_count::__release_weak(v133);
        }

        v132 = v705;
        v134 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v134->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v135 = v132;
            (v134->__on_zero_shared)(v134);
            std::__shared_weak_count::__release_weak(v134);
            v132 = v135;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v132 + 96))(&v718);
      }

      else
      {
LABEL_758:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v475 = v710;
      if (!v710)
      {
        break;
      }

      v476 = v714;
      v477 = v707;
      if (v716 == 1 && v707)
      {
        v478 = v705;
        v479 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v479->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v480 = v478;
            (v479->__on_zero_shared)(v479);
            std::__shared_weak_count::__release_weak(v479);
            v478 = v480;
          }
        }

        (*(*v478 + 88))(v478, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v477 = v707;
      }

      v481 = (4 * v131);
      v482 = v475 - 1;
      if (!v482)
      {
        goto LABEL_774;
      }

      if (v481)
      {
        for (i2 = 0; i2 != v482; ++i2)
        {
          v484 = 2 * v481;
          v485 = v477;
          do
          {
            (*(*v130 + 96))(v130, v485++);
            v484 -= 2;
          }

          while (v484);
          v477 += v476;
        }

LABEL_774:
        if (v481)
        {
          v486 = 2 * v481;
          do
          {
            (*(*v130 + 96))(v130, v477++);
            v486 -= 2;
          }

          while (v486);
        }
      }

      break;
    case 31:
      v704 = &unk_285181838;
      sub_23F0BA604(&v705, a3);
      v94 = *a2;
      v95 = v715;
      v96 = v705;
      if (!v705)
      {
        goto LABEL_639;
      }

      v97 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v97->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v97->__on_zero_shared)(v97);
          std::__shared_weak_count::__release_weak(v97);
        }

        v96 = v705;
        v98 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v99 = v96;
            (v98->__on_zero_shared)(v98);
            std::__shared_weak_count::__release_weak(v98);
            v96 = v99;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v96 + 96))(&v718);
      }

      else
      {
LABEL_639:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v404 = v710;
      if (!v710)
      {
        break;
      }

      v405 = v714;
      v406 = v707;
      if (v716 == 1 && v707)
      {
        v407 = v705;
        v408 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v408->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v409 = v407;
            (v408->__on_zero_shared)(v408);
            std::__shared_weak_count::__release_weak(v408);
            v407 = v409;
          }
        }

        (*(*v407 + 88))(v407, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v406 = v707;
      }

      v410 = (4 * v95);
      v411 = v404 - 1;
      if (!v411)
      {
        goto LABEL_655;
      }

      if (v410)
      {
        v412 = 0;
        v413 = 2 * v405;
        do
        {
          v414 = 0;
          do
          {
            v703 = 0;
            (*(*v94 + 96))(v94, &v703);
            v406[v414++] = v703;
          }

          while (v410 != v414);
          v406 = (v406 + v413);
          ++v412;
        }

        while (v412 != v411);
LABEL_655:
        if (v410)
        {
          v415 = 2 * v410;
          do
          {
            v703 = 0;
            (*(*v94 + 96))(v94, &v703);
            *v406++ = v703;
            v415 -= 2;
          }

          while (v415);
        }
      }

      break;
    case 32:
      v704 = &unk_285181930;
      sub_23F0BB0B4(&v705, a3);
      v142 = *a2;
      v143 = v715;
      v144 = v705;
      if (!v705)
      {
        goto LABEL_798;
      }

      v145 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v145->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v145->__on_zero_shared)(v145);
          std::__shared_weak_count::__release_weak(v145);
        }

        v144 = v705;
        v146 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v146->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v147 = v144;
            (v146->__on_zero_shared)(v146);
            std::__shared_weak_count::__release_weak(v146);
            v144 = v147;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v144 + 96))(&v718);
      }

      else
      {
LABEL_798:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v499 = v710;
      if (!v710)
      {
        break;
      }

      v500 = v714;
      v501 = v707;
      if (v716 == 1 && v707)
      {
        v502 = v705;
        v503 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v503->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v504 = v502;
            (v503->__on_zero_shared)(v503);
            std::__shared_weak_count::__release_weak(v503);
            v502 = v504;
          }
        }

        (*(*v502 + 88))(v502, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v501 = v707;
      }

      v505 = (4 * v143);
      v506 = v499 - 1;
      if (!v506)
      {
        goto LABEL_814;
      }

      if (v505)
      {
        for (i3 = 0; i3 != v506; ++i3)
        {
          v508 = 4 * v505;
          v509 = v501;
          do
          {
            (*(*v142 + 128))(v142, v509);
            v509 += 2;
            v508 -= 4;
          }

          while (v508);
          v501 += 2 * v500;
        }

LABEL_814:
        if (v505)
        {
          v510 = 4 * v505;
          do
          {
            (*(*v142 + 128))(v142, v501);
            v501 += 2;
            v510 -= 4;
          }

          while (v510);
        }
      }

      break;
    case 33:
      v704 = &unk_285180398;
      sub_23F0BBB64(&v705, a3);
      v202 = *a2;
      v203 = v715;
      v204 = v705;
      if (!v705)
      {
        goto LABEL_1011;
      }

      v205 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v205->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v205->__on_zero_shared)(v205);
          std::__shared_weak_count::__release_weak(v205);
        }

        v204 = v705;
        v206 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v206->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v207 = v204;
            (v206->__on_zero_shared)(v206);
            std::__shared_weak_count::__release_weak(v206);
            v204 = v207;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v204 + 96))(&v718);
      }

      else
      {
LABEL_1011:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v622 = v710;
      if (!v710)
      {
        break;
      }

      v623 = v714;
      v624 = v707;
      if (v716 == 1 && v707)
      {
        v625 = v705;
        v626 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v626->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v627 = v625;
            (v626->__on_zero_shared)(v626);
            std::__shared_weak_count::__release_weak(v626);
            v625 = v627;
          }
        }

        (*(*v625 + 88))(v625, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v624 = v707;
      }

      v628 = (4 * v203);
      v629 = v622 - 1;
      if (!v629)
      {
        goto LABEL_1027;
      }

      if (v628)
      {
        for (i4 = 0; i4 != v629; ++i4)
        {
          v631 = v628;
          v632 = v624;
          do
          {
            (*(*v202 + 80))(v202, v632);
            v632 = (v632 + 1);
            --v631;
          }

          while (v631);
          v624 = (v624 + v623);
        }

LABEL_1027:
        if (v628)
        {
          do
          {
            (*(*v202 + 80))(v202, v624);
            v624 = (v624 + 1);
            --v628;
          }

          while (v628);
        }
      }

      break;
    case 34:
      v704 = &unk_285180490;
      sub_23F0BC614(&v705, a3);
      v136 = *a2;
      v137 = v715;
      v138 = v705;
      if (!v705)
      {
        goto LABEL_778;
      }

      v139 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v139->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v139->__on_zero_shared)(v139);
          std::__shared_weak_count::__release_weak(v139);
        }

        v138 = v705;
        v140 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v140->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v141 = v138;
            (v140->__on_zero_shared)(v140);
            std::__shared_weak_count::__release_weak(v140);
            v138 = v141;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v138 + 96))(&v718);
      }

      else
      {
LABEL_778:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v487 = v710;
      if (!v710)
      {
        break;
      }

      v488 = v714;
      v489 = v707;
      if (v716 == 1 && v707)
      {
        v490 = v705;
        v491 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v491->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v492 = v490;
            (v491->__on_zero_shared)(v491);
            std::__shared_weak_count::__release_weak(v491);
            v490 = v492;
          }
        }

        (*(*v490 + 88))(v490, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v489 = v707;
      }

      v493 = (4 * v137);
      v494 = v487 - 1;
      if (!v494)
      {
        goto LABEL_794;
      }

      if (v493)
      {
        for (i5 = 0; i5 != v494; ++i5)
        {
          v496 = 2 * v493;
          v497 = v489;
          do
          {
            (*(*v136 + 96))(v136, v497++);
            v496 -= 2;
          }

          while (v496);
          v489 += v488;
        }

LABEL_794:
        if (v493)
        {
          v498 = 2 * v493;
          do
          {
            (*(*v136 + 96))(v136, v489++);
            v498 -= 2;
          }

          while (v498);
        }
      }

      break;
    case 35:
      v704 = &unk_285180588;
      sub_23F0BD06C(&v705, a3);
      v124 = *a2;
      v125 = v715;
      v126 = v705;
      if (!v705)
      {
        goto LABEL_738;
      }

      v127 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v127->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v127->__on_zero_shared)(v127);
          std::__shared_weak_count::__release_weak(v127);
        }

        v126 = v705;
        v128 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v129 = v126;
            (v128->__on_zero_shared)(v128);
            std::__shared_weak_count::__release_weak(v128);
            v126 = v129;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v126 + 96))(&v718);
      }

      else
      {
LABEL_738:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v463 = v710;
      if (!v710)
      {
        break;
      }

      v464 = v714;
      v465 = v707;
      if (v716 == 1 && v707)
      {
        v466 = v705;
        v467 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v467->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v468 = v466;
            (v467->__on_zero_shared)(v467);
            std::__shared_weak_count::__release_weak(v467);
            v466 = v468;
          }
        }

        (*(*v466 + 88))(v466, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v465 = v707;
      }

      v469 = (4 * v125);
      v470 = v463 - 1;
      if (!v470)
      {
        goto LABEL_754;
      }

      if (v469)
      {
        v471 = 0;
        v472 = 2 * v464;
        do
        {
          v473 = 0;
          do
          {
            v703 = 0;
            (*(*v124 + 96))(v124, &v703);
            v465[v473++] = v703;
          }

          while (v469 != v473);
          v465 = (v465 + v472);
          ++v471;
        }

        while (v471 != v470);
LABEL_754:
        if (v469)
        {
          v474 = 2 * v469;
          do
          {
            v703 = 0;
            (*(*v124 + 96))(v124, &v703);
            *v465++ = v703;
            v474 -= 2;
          }

          while (v474);
        }
      }

      break;
    case 36:
      v704 = &unk_285180680;
      sub_23F0BDAC4(&v705, a3);
      v118 = *a2;
      v119 = v715;
      v120 = v705;
      if (!v705)
      {
        goto LABEL_718;
      }

      v121 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v121->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v121->__on_zero_shared)(v121);
          std::__shared_weak_count::__release_weak(v121);
        }

        v120 = v705;
        v122 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v122->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v123 = v120;
            (v122->__on_zero_shared)(v122);
            std::__shared_weak_count::__release_weak(v122);
            v120 = v123;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v120 + 96))(&v718);
      }

      else
      {
LABEL_718:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v451 = v710;
      if (!v710)
      {
        break;
      }

      v452 = v714;
      v453 = v707;
      if (v716 == 1 && v707)
      {
        v454 = v705;
        v455 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v455->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v456 = v454;
            (v455->__on_zero_shared)(v455);
            std::__shared_weak_count::__release_weak(v455);
            v454 = v456;
          }
        }

        (*(*v454 + 88))(v454, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v453 = v707;
      }

      v457 = (4 * v119);
      v458 = v451 - 1;
      if (!v458)
      {
        goto LABEL_734;
      }

      if (v457)
      {
        for (i6 = 0; i6 != v458; ++i6)
        {
          v460 = 4 * v457;
          v461 = v453;
          do
          {
            (*(*v118 + 128))(v118, v461);
            v461 += 2;
            v460 -= 4;
          }

          while (v460);
          v453 += 2 * v452;
        }

LABEL_734:
        if (v457)
        {
          v462 = 4 * v457;
          do
          {
            (*(*v118 + 128))(v118, v453);
            v453 += 2;
            v462 -= 4;
          }

          while (v462);
        }
      }

      break;
    case 37:
      v704 = &unk_285181A28;
      sub_23F0BE51C(&v705, a3);
      v184 = *a2;
      v185 = v715;
      v186 = v705;
      if (!v705)
      {
        goto LABEL_952;
      }

      v187 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v187->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v187->__on_zero_shared)(v187);
          std::__shared_weak_count::__release_weak(v187);
        }

        v186 = v705;
        v188 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v188->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v189 = v186;
            (v188->__on_zero_shared)(v188);
            std::__shared_weak_count::__release_weak(v188);
            v186 = v189;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v186 + 96))(&v718);
      }

      else
      {
LABEL_952:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v589 = v710;
      if (!v710)
      {
        break;
      }

      v590 = v714;
      v591 = v707;
      if (v716 == 1 && v707)
      {
        v592 = v705;
        v593 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v593->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v594 = v592;
            (v593->__on_zero_shared)(v593);
            std::__shared_weak_count::__release_weak(v593);
            v592 = v594;
          }
        }

        (*(*v592 + 88))(v592, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v591 = v707;
      }

      v595 = (4 * v185);
      v596 = v589 - 1;
      if (!v596)
      {
        goto LABEL_968;
      }

      if (v595)
      {
        for (i7 = 0; i7 != v596; ++i7)
        {
          v598 = v595;
          v599 = v591;
          do
          {
            (*(*v184 + 80))(v184, v599);
            v599 = (v599 + 1);
            --v598;
          }

          while (v598);
          v591 = (v591 + v590);
        }

LABEL_968:
        if (v595)
        {
          do
          {
            (*(*v184 + 80))(v184, v591);
            v591 = (v591 + 1);
            --v595;
          }

          while (v595);
        }
      }

      break;
    case 38:
      v704 = &unk_285181B20;
      sub_23F0BEFCC(&v705, a3);
      v214 = *a2;
      v215 = v715;
      v216 = v705;
      if (!v705)
      {
        goto LABEL_1050;
      }

      v217 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v217->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v217->__on_zero_shared)(v217);
          std::__shared_weak_count::__release_weak(v217);
        }

        v216 = v705;
        v218 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v218->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v219 = v216;
            (v218->__on_zero_shared)(v218);
            std::__shared_weak_count::__release_weak(v218);
            v216 = v219;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v216 + 96))(&v718);
      }

      else
      {
LABEL_1050:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v644 = v710;
      if (!v710)
      {
        break;
      }

      v645 = v714;
      v646 = v707;
      if (v716 == 1 && v707)
      {
        v647 = v705;
        v648 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v648->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v649 = v647;
            (v648->__on_zero_shared)(v648);
            std::__shared_weak_count::__release_weak(v648);
            v647 = v649;
          }
        }

        (*(*v647 + 88))(v647, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v646 = v707;
      }

      v650 = (4 * v215);
      v651 = v644 - 1;
      if (!v651)
      {
        goto LABEL_1066;
      }

      if (v650)
      {
        for (i8 = 0; i8 != v651; ++i8)
        {
          v653 = 2 * v650;
          v654 = v646;
          do
          {
            (*(*v214 + 96))(v214, v654++);
            v653 -= 2;
          }

          while (v653);
          v646 += v645;
        }

LABEL_1066:
        if (v650)
        {
          v655 = 2 * v650;
          do
          {
            (*(*v214 + 96))(v214, v646++);
            v655 -= 2;
          }

          while (v655);
        }
      }

      break;
    case 39:
      v704 = &unk_285180778;
      sub_23F0BFA7C(&v705, a3);
      v76 = *a2;
      v77 = v715;
      v78 = v705;
      if (!v705)
      {
        goto LABEL_579;
      }

      v79 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v79->__on_zero_shared)(v79);
          std::__shared_weak_count::__release_weak(v79);
        }

        v78 = v705;
        v80 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v80->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v81 = v78;
            (v80->__on_zero_shared)(v80);
            std::__shared_weak_count::__release_weak(v80);
            v78 = v81;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v78 + 96))(&v718);
      }

      else
      {
LABEL_579:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v369 = v710;
      if (!v710)
      {
        break;
      }

      v370 = v714;
      v371 = v707;
      if (v716 == 1 && v707)
      {
        v372 = v705;
        v373 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v373->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v374 = v372;
            (v373->__on_zero_shared)(v373);
            std::__shared_weak_count::__release_weak(v373);
            v372 = v374;
          }
        }

        (*(*v372 + 88))(v372, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v371 = v707;
      }

      v375 = (4 * v77);
      v376 = v369 - 1;
      if (!v376)
      {
        goto LABEL_595;
      }

      if (v375)
      {
        v377 = 0;
        v378 = 2 * v370;
        do
        {
          v379 = 0;
          do
          {
            v703 = 0;
            (*(*v76 + 96))(v76, &v703);
            v371[v379++] = v703;
          }

          while (v375 != v379);
          v371 = (v371 + v378);
          ++v377;
        }

        while (v377 != v376);
LABEL_595:
        if (v375)
        {
          v380 = 2 * v375;
          do
          {
            v703 = 0;
            (*(*v76 + 96))(v76, &v703);
            *v371++ = v703;
            v380 -= 2;
          }

          while (v380);
        }
      }

      break;
    case 40:
      v704 = &unk_285180870;
      sub_23F0C052C(&v705, a3);
      v58 = *a2;
      v59 = v715;
      v60 = v705;
      if (!v705)
      {
        goto LABEL_519;
      }

      v61 = v706;
      if (v706)
      {
        atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v61->__on_zero_shared)(v61);
          std::__shared_weak_count::__release_weak(v61);
        }

        v60 = v705;
        v62 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v63 = v60;
            (v62->__on_zero_shared)(v62);
            std::__shared_weak_count::__release_weak(v62);
            v60 = v63;
          }
        }
      }

      if (v717 == 1)
      {
        (*(*v60 + 96))(&v718);
      }

      else
      {
LABEL_519:
        v718 = 0;
      }

      if (!v708)
      {
        break;
      }

      if (!v709)
      {
        break;
      }

      v334 = v710;
      if (!v710)
      {
        break;
      }

      v335 = v714;
      v336 = v707;
      if (v716 == 1 && v707)
      {
        v337 = v705;
        v338 = v706;
        if (v706)
        {
          atomic_fetch_add_explicit(&v706->__shared_owners_, 1uLL, memory_order_relaxed);
          if (!atomic_fetch_add(&v338->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v339 = v337;
            (v338->__on_zero_shared)(v338);
            std::__shared_weak_count::__release_weak(v338);
            v337 = v339;
          }
        }

        (*(*v337 + 88))(v337, 1, "/Library/Caches/com.apple.xbs/Sources/AmbientSceneScope/library/Kit/Image/include/Kit/Image/ImageView.h:1299");
        v336 = v707;
      }

      v340 = (4 * v59);
      v341 = v334 - 1;
      if (!v341)
      {
        goto LABEL_535;
      }

      if (v340)
      {
        for (i9 = 0; i9 != v341; ++i9)
        {
          v343 = 4 * v340;
          v344 = v336;
          do
          {
            (*(*v58 + 128))(v58, v344);
            v344 += 2;
            v343 -= 4;
          }

          while (v343);
          v336 += 2 * v335;
        }

LABEL_535:
        if (v340)
        {
          v345 = 4 * v340;
          do
          {
            (*(*v58 + 128))(v58, v336);
            v336 += 2;
            v345 -= 4;
          }

          while (v345);
        }
      }

      break;
    default:
      return;
  }

  v701 = v718;
  v718 = 0;
  if (v701)
  {
    (*(*v701 + 8))(v701);
  }

  v702 = v706;
  if (v706)
  {
    if (!atomic_fetch_add(&v706->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v702->__on_zero_shared)(v702);
      std::__shared_weak_count::__release_weak(v702);
    }
  }
}